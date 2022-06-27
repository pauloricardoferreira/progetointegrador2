from dataclasses import fields
from django.forms import ModelForm
from app.models import Cadastro

class CadastroForm(ModelForm):
    class Meta:
        model = Cadastro
        fields = ['Empenho','Nota_Fiscal','Material','Data','Obs']

