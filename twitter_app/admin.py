from django.contrib import admin
from twitter_app.models import MyUser, Message, Tweet

# Register your models here.
@admin.register(MyUser)
class MyUser(admin.ModelAdmin):
    list_display=('username','avatar',)


@admin.register(Tweet)
class Tweet(admin.ModelAdmin):
    list_display=('content',)


@admin.register(Message)
class Message(admin.ModelAdmin):
    list_display=('sender',)
