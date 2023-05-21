from django.contrib import admin

from .models import (
    BlogArticle, BlogContent, BlogFile, BlogTitle, Language
)

class LanguageAdmin(admin.ModelAdmin):
    """Admin language model."""
    list_display = ('language_code', 'language_name')

# Register your models here.
admin.site.register(
    (BlogArticle, BlogContent, BlogFile, BlogTitle)
)
admin.site.register(Language, LanguageAdmin)
