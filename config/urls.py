from django.contrib import admin
from django.urls import path , include
from django.conf import settings
from django.conf.urls.static import static
from django.http import HttpResponse

# function for aws health check as root has no webpage to serve
def health_check(request):
    return HttpResponse("OK", status=200)

urlpatterns = [
    path('health/', health_check),
    path('admin/', admin.site.urls),
    path('rest-auth/', include('rest_framework.urls')),
    path('api/blog/', include('blog.urls')),
]

if settings.DEBUG:  # Only serve media files and static in development mode
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
