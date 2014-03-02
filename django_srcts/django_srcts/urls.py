from django.conf.urls import patterns, include, url

from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    
    url(r'^', include('www.urls')),
    url(r'^api/', include('api.urls')),

    url(r'^admin/', include(admin.site.urls)),
)
