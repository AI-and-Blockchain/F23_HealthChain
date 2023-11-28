# Generated by Django 4.2.5 on 2023-11-27 18:09

from django.conf import settings
import django.contrib.auth.models
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0004_alter_doctor_options_alter_patient_options_and_more'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='doctor',
            options={'verbose_name': 'user', 'verbose_name_plural': 'users'},
        ),
        migrations.AlterModelOptions(
            name='patient',
            options={'verbose_name': 'user', 'verbose_name_plural': 'users'},
        ),
        migrations.AlterModelManagers(
            name='doctor',
            managers=[
                ('objects', django.contrib.auth.models.UserManager()),
            ],
        ),
        migrations.AlterModelManagers(
            name='patient',
            managers=[
                ('objects', django.contrib.auth.models.UserManager()),
            ],
        ),
        migrations.RenameField(
            model_name='doctor',
            old_name='email',
            new_name='name',
        ),
        migrations.RenameField(
            model_name='patient',
            old_name='email',
            new_name='name',
        ),
        migrations.RemoveField(
            model_name='doctor',
            name='fullname',
        ),
        migrations.RemoveField(
            model_name='doctor',
            name='id',
        ),
        migrations.RemoveField(
            model_name='doctor',
            name='username',
        ),
        migrations.RemoveField(
            model_name='patient',
            name='fullname',
        ),
        migrations.RemoveField(
            model_name='patient',
            name='id',
        ),
        migrations.RemoveField(
            model_name='patient',
            name='username',
        ),
        migrations.AddField(
            model_name='doctor',
            name='customuser_ptr',
            field=models.OneToOneField(auto_created=True, default=1, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to=settings.AUTH_USER_MODEL),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='patient',
            name='customuser_ptr',
            field=models.OneToOneField(auto_created=True, default=1, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to=settings.AUTH_USER_MODEL),
            preserve_default=False,
        ),
    ]