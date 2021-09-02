from django.db import models
from django.contrib.auth.models import AbstractUser

""""
this classes allow us design the tables fields
and the relationship between they for login and register transactions
"""
class User(AbstractUser):
    is_customer = models.BooleanField(default=False)
    is_business = models.BooleanField(default=False)
    first_name = models.CharField(max_length=100, verbose_name="Nombres")
    last_name = models.CharField(max_length=100, verbose_name='Apellido')

# tabla de usuarios
class Customer(models.Model):
    user = models.OneToOneField(User, on_delete = models.CASCADE, primary_key = True, verbose_name="usuario")
    phone_number = models.CharField(max_length=20, verbose_name='Numero de telefono')
    location = models.CharField(max_length=20, verbose_name='Ubicacion')



# tabla del registro de empresa
class Business(models.Model):
    user = models.OneToOneField(User, on_delete = models.CASCADE, primary_key = True, verbose_name='usuario')
    phone_number = models.CharField(max_length=20, verbose_name='Numero de telefono')
    tradename   = models.CharField(max_length=255, verbose_name='Nombre comercial')#nombre comercial
    ruc = models.CharField(max_length=100, verbose_name="ruc")
    business_name = models.CharField(max_length=100,verbose_name='Razón social') #razon social
