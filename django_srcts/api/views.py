from django.shortcuts import render, render_to_response
from django.shortcuts import get_object_or_404, redirect
from django.http import HttpResponse
import json

# Create your views here.
def list_srcts( request ):
    if request.method != 'GET':
        return redirect('/api')

    response_data = {}
    response_data['0'] = {
        'title': 'WhatsOpen',
        'url':   'http://whatsopen.gmu.edu',
        'desc':  """What's Open is a dynamic web application that lets you easily find out which on-campus locations are currently available. It's a simple alternative to searching for campus hours and filtering though them to figure out which ones are open.""",
        'img':   'http://whatsopen.gmu.edu/image.png',
    }

    return HttpResponse(
        json.dumps(response_data),
        content_type="application/json"
    )

def api( request ):
    return render(request, 'api.html', {
    },
    )
