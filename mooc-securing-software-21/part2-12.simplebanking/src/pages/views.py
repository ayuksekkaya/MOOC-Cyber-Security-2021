from django.http import HttpResponse
from django.contrib.auth.decorators import login_required
from django.shortcuts import render, redirect
from django.contrib.auth.models import User
from .models import Account
from django.db.models import Q
import json


@login_required
def addView(request):
    new_account = Account.objects.create(owner=request.user, iban=(request.POST.get("iban", "0")))
    new_account.save()
    return redirect('/')


@login_required
def homePageView(request):
    current_user = request.user
    accounts = Account.objects.filter(owner=current_user)

    return render(request, 'pages/index.html', {'accounts': accounts})
