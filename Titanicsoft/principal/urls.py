
from django.urls import path
from . import views
app_name = 'principal'
urlpatterns = [
    path('', views.index, name='index'),
    path('panel_administracion', views.panel_administracion, name='panel_administracion'),

   
]