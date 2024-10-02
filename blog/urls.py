from django.urls import path , include

urlpatterns = [
    path('v1/', include('blog.v1.urls')),
]
