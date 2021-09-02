from django.db import models
from login.models import User

# Create your models here.
class Paquete(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, default=None)
    nombre = models.CharField(max_length=100)
    precio = models.FloatField()
    ancho  = models.FloatField()
    alto   = models.FloatField()
    grosor = models.FloatField()
    peso   = models.FloatField()
    -

    def detalles_paquete(self):
        return "{}: {} ".format(self.user , self.nombre)
    def __str__(self):
        return self.detalles_paquete()
