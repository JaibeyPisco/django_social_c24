from django.contrib.auth.forms import UserCreationForm
from django import forms
from django.db import transaction
from .models import Business, User,Customer

""""
this classes allow us design the login and register fields.
thise field will required when user type his informacion by a form 
"""

class CustomerSignUpForm(UserCreationForm):
    first_name = forms.CharField(required=True)
    last_name = forms.CharField(required=True)
    phone_number = forms.CharField(required=True)
    location = forms.CharField(required=True)

    class Meta(UserCreationForm.Meta):
        model = User
    # allow save data from form when user submit it 
    @transaction.atomic
    def save(self):
        user = super().save(commit=False)
        user.is_customer      = True
        user.first_name       = self.cleaned_data.get('first_name')
        user.last_name        = self.cleaned_data.get('last_name')
        
        user.save()
        
        customer              = Customer.objects.create(user=user)
        customer.phone_number =self.cleaned_data.get('phone_number')
        customer.location     =self.cleaned_data.get('location')
        customer.save()
        
        return user

class BusinessSignUpForm(UserCreationForm):
    first_name    = forms.CharField(required=True)
    last_name     = forms.CharField(required=True)
    phone_number  = forms.CharField(required=True)
    tradename     = forms.CharField(required=True)
    ruc           = forms.CharField(required=True)
    business_name = forms.CharField(required=True)

    class Meta(UserCreationForm.Meta):
        model = User

    @transaction.atomic
    def save(self):

        user             = super().save(commit=False)
        user.is_business = True
        user.is_staff    = False
        user.first_name  = self.cleaned_data.get('first_name') #Los nombres de los campos y se los procesa
        user.last_name   = self.cleaned_data.get('last_name')
        
        user.save()
        
        business               = Business.objects.create(user=user)
        business.phone_number  = self.cleaned_data.get('phone_number')
        business.tradename     = self.cleaned_data.get('tradename')
        business.ruc           = self.cleaned_data.get('ruc')
        business.business_name = self.cleaned_data.get('business_name')
        
        business.save()
        
        return user
