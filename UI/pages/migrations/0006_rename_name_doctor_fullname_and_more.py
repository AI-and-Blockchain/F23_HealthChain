# Generated by Django 4.2.5 on 2023-11-27 18:06

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('pages', '0005_remove_doctor_last_login_remove_doctor_password_and_more'),
    ]

    operations = [
        migrations.RenameField(
            model_name='doctor',
            old_name='name',
            new_name='fullname',
        ),
        migrations.RenameField(
            model_name='patient',
            old_name='name',
            new_name='fullname',
        ),
    ]
