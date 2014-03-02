from django.conf.urls import patterns, include, url

from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('api.views',

    url(r'^$', 'api', name = 'api'),
    url(r'^list$', 'list_srcts', name = 'list_srcts'),

)
