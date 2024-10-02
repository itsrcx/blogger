from django.db import models
from django.core.exceptions import ValidationError

def validate_image_size(image):
    max_size = 1 * 1024 * 1024  # 1 MB
    if image.size > max_size:
        raise ValidationError('Image file too large ( > 1MB )')
    
class Post(models.Model):
    title = models.CharField(max_length=100)
    author = models.CharField(max_length=20)
    thumbnail = models.ImageField(upload_to='images/', validators=[validate_image_size])
    body = models.TextField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self) -> str:
        return f"{self.title} | {self.updated_at.strftime('%Y-%m-%d')}"
