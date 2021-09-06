from django.shortcuts import redirect, render
from .models import Paquete

# Create your views here.
def index(request):
	paquetes = Paquete.objects.all()
	context = {"paquetes": paquetes}
	return render(request, 'index.html', context)
def panel_administracion(request):
	return render(request, 'panel_administracion.html')