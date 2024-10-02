from rest_framework import generics
from rest_framework import permissions

from blog.models import Post
from blog.v1.serializers import BlogSerializer
from blog.v1.permissions import IsAuthorOfBlog

class BlogListingView(generics.ListAPIView):
    permission_classes = (permissions.AllowAny,)
    queryset = Post.objects.all()
    serializer_class = BlogSerializer

class BlogEditAndDeatilView(generics.RetrieveUpdateDestroyAPIView):
    permission_classes = (IsAuthorOfBlog,)
    queryset = Post.objects.all()
    serializer_class = BlogSerializer
