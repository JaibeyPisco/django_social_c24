from django.shortcuts import redirect, render

# Create your views here.
def index(request):
	return render(request, 'index.html')
def panel_administracion(request):
	return render(request, 'panel_administracion.html')
 