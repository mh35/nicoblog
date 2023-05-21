# Generated by Django 4.2.1 on 2023-05-21 09:32

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):
    dependencies = [
        ("nicoblog_blog", "0001_initial"),
    ]

    operations = [
        migrations.RemoveField(
            model_name="blogarticle",
            name="content",
        ),
        migrations.RemoveField(
            model_name="blogarticle",
            name="title",
        ),
        migrations.AddField(
            model_name="blogcontent",
            name="article",
            field=models.ForeignKey(
                default=None,
                on_delete=django.db.models.deletion.CASCADE,
                to="nicoblog_blog.blogarticle",
            ),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name="blogtitle",
            name="article",
            field=models.ForeignKey(
                default=None,
                on_delete=django.db.models.deletion.CASCADE,
                to="nicoblog_blog.blogarticle",
            ),
            preserve_default=False,
        ),
    ]