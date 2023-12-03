from django.urls import path

from .views import HomePageView, AboutPageView,doctor, patient, ai, providers, process_account, patient_details, metamask_signin, fhir_upload


urlpatterns = [
    path("", HomePageView.as_view(), name="home"),
    path("about/", AboutPageView.as_view(), name="about"),
    path('doctor/', doctor, name='doctor'),
    path('patient/', patient, name='patient'),
    path('ai/', ai, name='ai'),
    path('providers/', providers, name='providers'),

    path('path-to-your-django-view/', process_account, name='process_account'),
    path('patient-details/', patient_details, name='patient-details'),
    path('metamask_signin/', metamask_signin, name='metamask_signin'),
    path('fhir_upload/', fhir_upload, name='fhir_upload'),
]
