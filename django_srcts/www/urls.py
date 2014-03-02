from django.conf.urls import patterns, include, url

from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('www.views',

    url(r'^$', 'home', name = 'home'),

)
