# Generated by Django 3.2.6 on 2021-08-15 00:06

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('colegio_cnb', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='request',
            name='category',
            field=models.CharField(choices=[('Voleibol', 'Voleibol'), ('Futbol de Salon', 'Futbol de Salon'), ('Basquetbol', 'Basquetbol'), ('Futbol', 'Futbol')], max_length=50),
        ),
    ]