from django.db import models

# Create your models h

class homemodel(models.Model):
    id = models.CharField(max_length=50,primary_key = True)
    name = models.CharField(max_length=50)
    description = models.TextField()