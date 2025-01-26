from django.shortcuts import render
from home.models import homemodel

def home(request):
    name = homemodel.objects.first()
    name2 = name.name
    
    description = homemodel.objects.first()
    description2 = description.description
    return render(request, "base.html",{"name" : name2,"description":description2})