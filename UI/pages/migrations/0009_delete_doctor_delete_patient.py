# Generated by Django 4.2.5 on 2023-11-27 18:12

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('pages', '0008_rename_name_doctor_email_rename_name_patient_email_and_more'),
    ]

    operations = [
        migrations.DeleteModel(
            name='Doctor',
        ),
        migrations.DeleteModel(
            name='Patient',
        ),
    ]
