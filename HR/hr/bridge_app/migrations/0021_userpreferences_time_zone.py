# Generated by Django 5.0.1 on 2024-01-29 14:54

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('bridge_app', '0020_userpreferences_time_format'),
    ]

    operations = [
        migrations.AddField(
            model_name='userpreferences',
            name='time_zone',
            field=models.CharField(choices=[('India', 'India'), ('Chennai', 'Chennai')], default='India', max_length=20),
        ),
    ]
