from rest_framework import permissions

class IsAuthorOfBlog(permissions.BasePermission):
    def has_object_permission(self, request, view, obj):
        if request.method in permissions.SAFE_METHODS:
            return True
        print(request.user , obj.author)
        return obj.author == request.user 
