# Generated by Django 4.2.5 on 2023-11-27 17:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pages', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='doctor',
            name='password',
        ),
        migrations.AlterField(
            model_name='doctor',
            name='email',
            field=models.EmailField(max_length=255, unique=True),
        ),
        migrations.AlterField(
            model_name='doctor',
            name='username',
            field=models.CharField(max_length=255, unique=True),
        ),
    ]
