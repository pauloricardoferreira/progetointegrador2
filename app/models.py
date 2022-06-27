from django.db import models

# Create your models here.

class Cadastro(models.Model):
    Empenho = models.IntegerField()
    Nota_Fiscal = models.IntegerField()
    Material = models.CharField(max_length=150)
    Data = models.DateField('data', null=True, blank=True)
    Obs = models.CharField(max_length=150)
