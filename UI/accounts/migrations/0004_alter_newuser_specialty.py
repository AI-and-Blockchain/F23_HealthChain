# Generated by Django 4.2.5 on 2023-12-04 18:51

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0003_newuser_year'),
    ]

    operations = [
        migrations.AlterField(
            model_name='newuser',
            name='specialty',
            field=models.CharField(blank=True, max_length=100),
        ),
    ]
