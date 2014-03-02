from django.shortcuts import render
from django.shortcuts import render, render_to_response
from django.shortcuts import get_object_or_404, redirect

# Create your views here.
def home( request ):
    return render(request, 'index.html', {
    },
    )
