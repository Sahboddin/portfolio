from django.contrib import admin

# Register your models here.
from .models import homemodel
class homeadmin(admin.ModelAdmin):
    list_display = ['id','name',"description"]
    
    
admin.site.register(homemodel,homeadmin)