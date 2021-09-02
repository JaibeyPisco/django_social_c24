# Generated by Django 3.2.6 on 2021-08-30 21:33

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('login', '0006_rename_employee_business'),
    ]

    operations = [
        migrations.AlterField(
            model_name='business',
            name='business_name',
            field=models.CharField(max_length=100, verbose_name='Razón social'),
        ),
        migrations.AlterField(
            model_name='business',
            name='phone_number',
            field=models.CharField(max_length=20, verbose_name='Numero de telefono'),
        ),
        migrations.AlterField(
            model_name='business',
            name='ruc',
            field=models.CharField(max_length=100, verbose_name='ruc'),
        ),
        migrations.AlterField(
            model_name='business',
            name='tradename',
            field=models.CharField(max_length=255, verbose_name='Nombre comercial'),
        ),
        migrations.AlterField(
            model_name='business',
            name='user',
            field=models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, primary_key=True, serialize=False, to=settings.AUTH_USER_MODEL, verbose_name='usuario'),
        ),
        migrations.AlterField(
            model_name='customer',
            name='location',
            field=models.CharField(max_length=20, verbose_name='Ubicacion'),
        ),
        migrations.AlterField(
            model_name='customer',
            name='phone_number',
            field=models.CharField(max_length=20, verbose_name='Numero de telefono'),
        ),
        migrations.AlterField(
            model_name='customer',
            name='user',
            field=models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, primary_key=True, serialize=False, to=settings.AUTH_USER_MODEL, verbose_name='usuario'),
        ),
        migrations.AlterField(
            model_name='user',
            name='first_name',
            field=models.CharField(max_length=100, verbose_name='Nombres'),
        ),
        migrations.AlterField(
            model_name='user',
            name='last_name',
            field=models.CharField(max_length=100, verbose_name='Apellido'),
        ),
    ]