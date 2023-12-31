import requests
import json
import os
from pathlib import Path



def load_fhir_json(file_path):
    with open(file_path, 'r', encoding = 'utf-8') as f:
        return json.load(f)

# Send to endpoint for evaluation by AI 
def send(fhir_data):    

	response = requests.post('http://localhost:5000/fhir_predict', json=fhir_data)

	if response.status_code == 200:
	    recommendation = response.json()
	    if recommendation == "Rheumatologist":
	    	print("Recommendation:", recommendation)
	    	error
	else:
	    print("Error:", response.json())

# Search directory of FHIR files and send to endpoint  
def process_dir(input_dir):

    for file_name in os.listdir(input_dir):
        file_path = os.path.join(input_dir, file_name)
	# Guarantees patient records are in the test set and can fit in github    
        if len(file_name.split('_')) <= 2 or file_name[-41] != 'f' or file_name[0] != 'C' or os.path.getsize(file_path) > 25000000:
            continue
        print(file_path)
        fhir_data = load_fhir_json(file_path)
        send(fhir_data)

if __name__ == "__main__":    

	input_dir = 'C:/Users/schafj2/synthea/output/fhir'
	process_dir(input_dir)

	# Rheumatologist
	fhir_data = load_fhir_json('Clint766_Hyatt152_f98eb589-baf2-b1cb-9bf6-7c68016d0018.json')
	send(fhir_data)

	# Endocrinologist
	fhir_data = load_fhir_json('Collin529_Weimann465_f63c6119-c079-20c4-3230-0bb3d63c0e78.json')
	send(fhir_data)	

	# Nephrologist
	fhir_data = load_fhir_json('Corey514_O\'Keefe54_f10438de-565e-f23e-324d-aeda087f602c.json')
	send(fhir_data)

	# No recommendation
	fhir_data = load_fhir_json('Clark193_Quigley282_f6d03243-2451-2a27-5d80-8f40b6d74d6d.json')
	send(fhir_data)
