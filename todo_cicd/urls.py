from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.urls import path, include
from django.contrib import admin

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include("todoapp.urls")),
]

urlpatterns += staticfiles_urlpatterns()