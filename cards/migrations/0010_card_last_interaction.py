# -*- coding: utf-8 -*-
# Generated by Django 1.11.10 on 2018-03-11 11:00
from __future__ import unicode_literals

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('cards', '0009_auto_20180217_1524'),
    ]

    operations = [
        migrations.AddField(
            model_name='card',
            name='last_interaction',
            field=models.DateTimeField(auto_now_add=True, default=django.utils.timezone.now),
            preserve_default=False,
        ),
    ]
