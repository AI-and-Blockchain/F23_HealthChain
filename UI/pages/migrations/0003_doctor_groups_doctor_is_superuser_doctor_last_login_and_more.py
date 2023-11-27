# Generated by Django 4.2.5 on 2023-11-27 17:31

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('auth', '0012_alter_user_first_name_max_length'),
        ('pages', '0002_remove_doctor_password_alter_doctor_email_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='doctor',
            name='groups',
            field=models.ManyToManyField(related_name='doctor_groups', to='auth.group'),
        ),
        migrations.AddField(
            model_name='doctor',
            name='is_superuser',
            field=models.BooleanField(default=False, help_text='Designates that this user has all permissions without explicitly assigning them.', verbose_name='superuser status'),
        ),
        migrations.AddField(
            model_name='doctor',
            name='last_login',
            field=models.DateTimeField(blank=True, null=True, verbose_name='last login'),
        ),
        migrations.AddField(
            model_name='doctor',
            name='password',
            field=models.CharField(default=1, max_length=128, verbose_name='password'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='doctor',
            name='user_permissions',
            field=models.ManyToManyField(related_name='doctor_permissions', to='auth.permission'),
        ),
    ]
