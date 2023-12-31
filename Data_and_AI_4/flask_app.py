from flask import Flask, request, jsonify
import tensorflow as tf
import pandas as pd
import json
from FHIR_to_csv import process_fhir_data
from preprocess_and_store import concatenate_dataframes
from tensorflow.keras.models import load_model
from preprocess_and_store import DataPreprocessor
from transformer import F1Score
import pickle

app = Flask(__name__)

# Load the objects from the files
with open('preprocess_data_obj.pkl', 'rb') as file:
    preprocess_data_obj = pickle.load(file)

with open('FE_data_obj.pkl', 'rb') as file:
    FE_data_obj = pickle.load(file)  

#with open('SPCA_obj.pkl', 'wb') as file:
#    sparse_pca = pickle.load(file)    

model = load_model('medical_transformer', custom_objects={'F1Score': F1Score})

@app.route('/fhir_predict', methods=['POST'])
def fhir_predict():
    try:
        # Receive FHIR JSON data
        fhir_json = request.json

        # Process FHIR JSON to DataFrame
        patient_df = process_fhir_data(fhir_json)
        patient_df_FE = FE_data_obj.apply(patient_df)
        patient_df_preprocessed = preprocess_data_obj.transform([patient_df_FE])
        master_feature_list, sequence_length, ignoreX = preprocess_data_obj.master_feature_list, preprocess_data_obj.sequence_length, preprocess_data_obj.ignoreX
        patient_df_preprocessed = concatenate_dataframes(patient_df_preprocessed, master_feature_list, ignoreX) 
        #patient_df_pca = pd.DataFrame(sparse_pca.transform(patient_df_preprocessed))
        current_sequence = tf.constant([patient_df_preprocessed.iloc[-sequence_length:].values])

        # Make prediction
        predictions = model.predict(current_sequence).tolist()[0]
        disease_pred_dict = {}
        for disease, pred in zip(preprocess_data_obj.target_diseases, predictions):
            disease_pred_dict[disease] = pred  

        # Format and send back the predictions
        return jsonify(disease_pred_dict)
    except Exception as e:
        return jsonify({"error": str(e)}), 500

if __name__ == "__main__":
    app.run()        