from django.http import HttpResponse
from .models import Message


# Create your views here.

def homePageView(request):
	content = 'Hello Web!';

	if request.method == 'GET':
		id1 = request.GET.get('id', '0').strip()
		content = Message.objects.get(pk=id1).content

	return HttpResponse(content)

