from django.shortcuts import render
from django.views.generic.list import ListView
from twitter_app.models import Tweet
from django.views.generic import CreateView



def start(request):
    return render(request,'twitter_app/index.html')
# Create your views here.

class UserView(ListView):
   
    model = Tweet

class AddTweetView(CreateView):

    model= Tweet
    fields = '__all__'
    success_url = '/'