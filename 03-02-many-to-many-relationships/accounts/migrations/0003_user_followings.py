# Generated by Django 3.1.7 on 2023-10-17 00:46

from django.conf import settings
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0002_auto_20231017_0942'),
    ]

    operations = [
        migrations.AddField(
            model_name='user',
            name='followings',
            field=models.ManyToManyField(related_name='followers', to=settings.AUTH_USER_MODEL),
        ),
    ]
