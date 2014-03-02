from django.shortcuts import render, render_to_response
from django.shortcuts import get_object_or_404, redirect
from django.http import HttpResponse
from api.models import App
import json

# Create your views here.
def list_srcts( request ):
    if request.method != 'GET':
        return redirect('/api')

    response_data = {}

    apps = App.objects.all()
    app_id = 0
    for app in apps:
        response_data[str(app_id)] = {
            'title': app.title,
            'desc':  app.desc,
            'url':   app.url,
            'image': app.image.url,
        }
        app_id = app_id + 1

    return HttpResponse(
        json.dumps(response_data),
        content_type="application/json"
    )

def api( request ):
    return render(request, 'api.html', {
    },
    )
