from django.urls import path

from blog.v1.views import BlogListingView, BlogEditAndDeatilView

urlpatterns = [
    path('posts/', BlogListingView.as_view(), name="blog-listing"),
    path('posts/<int:pk>/', BlogEditAndDeatilView.as_view(), name="blog-detail-editor"),
]
