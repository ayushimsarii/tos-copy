# Generated by Django 5.0.1 on 2024-01-11 11:50

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('bridge_app', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='UserPreferences',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('display_name', models.BooleanField(default=True)),
                ('display_designation', models.BooleanField(default=True)),
                ('display_projects', models.BooleanField(default=True)),
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='bridge_app.user')),
            ],
        ),
    ]
