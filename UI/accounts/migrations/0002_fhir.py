# Generated by Django 4.2.5 on 2023-12-03 16:42

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Fhir',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('file', models.FileField(upload_to='files/')),
                ('Eth_address', models.CharField(max_length=100)),
                ('name', models.CharField(max_length=100)),
            ],
        ),
    ]
