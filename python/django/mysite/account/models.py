from django.db import models

# Create your models here.
from django.contrib.auth.models import User



class UserProfile(models.Model):
    user = models.OneToOneField(User, unique=True)
    birth = models.DateField(blank=True, null=True)
    phone = models.CharField(max_length=20, null=True)
    def __self__(self):
        return 'user {}'.format(self.user.username)
