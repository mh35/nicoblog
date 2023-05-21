from django.contrib.auth import get_user_model
from django.db import models

# Create your models here.

class Language(models.Model):
    """Language model."""
    language_code = models.CharField(max_length=255, unique=True)
    language_name = models.CharField(max_length=255)

class BlogArticle(models.Model):
    """Blog article model."""
    author = models.ForeignKey(
        get_user_model(),
        on_delete=models.PROTECT,
    )
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

class BlogTitle(models.Model):
    """Blog title model."""
    article = models.ForeignKey(BlogArticle, on_delete=models.CASCADE)
    title = models.TextField()
    language = models.ForeignKey(Language, on_delete=models.PROTECT)

class BlogContent(models.Model):
    """Blog content model."""
    article = models.ForeignKey(BlogArticle, on_delete=models.CASCADE)
    content = models.TextField()
    language = models.ForeignKey(Language, on_delete=models.PROTECT)

class BlogFile(models.Model):
    """Blog uploaded file."""
    file = models.FileField(null=True)
    article = models.ForeignKey(
        BlogArticle,
        null=True,
        on_delete=models.SET_NULL,
    )
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
