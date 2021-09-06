
from django.conf.urls import url
from django.urls import path
from . import views

app_name = 'login'

"""
all url for our site
"""
urlpatterns = [
    path('register/', views.register, name='register'),
    path('customer_register/',views.customer_register.as_view(), name='customer_register'),
    path('business_register/',views.business_register.as_view(), name='business_register'),
    path('login/',views.login_request, name='login_request'),
    path('logout/',views.logout_view, name='logout'),
]
