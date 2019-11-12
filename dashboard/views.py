from django.shortcuts import render
from django.views import View
from django.conf import settings
import sqlite3


class Dashboard(View):
    template_name = 'dashboard/home.html'
    connection = sqlite3.connect(os.path.join(settings.BASE_DIR, 'db.sqlite3'))
    cursor = connection.cursor()

    def get(self, request):
        data = self.cursor.execute("SELECT * FROM BH_CONFIGURATION_DETAIL")
        print(data)
        return render(request, template_name=self.template_name, context={})
