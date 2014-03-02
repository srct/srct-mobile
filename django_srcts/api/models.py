from django.db import models

# Create your models here.
class App( models.Model ):
    title = models.CharField( blank=False, max_length=100 )
    desc = models.CharField( blank=True, max_length=500 )
    url = models.URLField( blank=False, max_length=200 )
    image = models.ImageField( upload_to='icons/' )

    def __unicode__(self):
        return "%s" % self.title
