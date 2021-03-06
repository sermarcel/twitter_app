from django.db import models
from django.contrib.auth.models import AbstractUser
from django.utils import timezone

class MyUser(AbstractUser):
    avatar = models.ImageField(upload_to='static/images/', null=True, blank=True)
     

class Tweet(models.Model):

    content=models.TextField()
    creation_date = models.DateTimeField(default=timezone.now)
    user = models.ForeignKey(MyUser)
    def __str__(self):
        return 'Tweet by {}{} @ {}: "{}..."'.format(self.user.avatar,
                                                  self.user,
                                                  self.creation_date,
                                                  str(self.content)[:32])

class Message(models.Model):
    sender = models.ForeignKey(MyUser)
    receiver=models.ForeignKey(MyUser, related_name="message_receiver")
    content=models.TextField()
    creation_date=models.DateTimeField(default=timezone.now)
    is_read=models.BooleanField(default=False)
        
    class Meta:
        ordering =['-creation_date']

    def __str__(self):
        return 'Message from {} to {} @ {}'.format(self.sender, self.receiver, self.creation_date)