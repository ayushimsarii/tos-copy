# Generated by Django 5.0.1 on 2024-01-16 10:00

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('bridge_app', '0011_alter_user_doj'),
    ]

    operations = [
        migrations.AddField(
            model_name='employee',
            name='Landmark',
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
    ]
