from django.shortcuts import render
from django.http import HttpResponse
from django.views.generic import TemplateView
from django.contrib.auth.mixins import LoginRequiredMixin
from django.conf import settings
import os
import sqlalchemy as db
from sqlalchemy.orm import sessionmaker
from app_two.model_mapping import BH_CONFIGURATION_DETAIL
from app_two.base import Session

# Create your views here.

class DashBoradHome(TemplateView):
    template_name = 'app_two/home.html'
    session = Session()

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['data'] = 'Welcome to Home'
        return context

    def get(self, request):
        data = self.session.query(BH_CONFIGURATION_DETAIL).order_by(BH_CONFIGURATION_DETAIL.bh_configuration_detail_id.asc())
        self.session.commit()
        return render(request, template_name=self.template_name, context={"data": data})

    def post(self, request):
        table_type = request.POST.get("table_type")
        _id = request.POST.getlist("configuration_detail_id")
        minimum = request.POST.getlist("min")
        maximum = request.POST.getlist("max")
        output = request.POST.getlist("output_value")
        data_type = request.POST.getlist("data_type")
        bh_config_header = request.POST.getlist("bh_configuration_header_id")
        business_topic = request.POST.getlist("business_topic")
        business_attribute = request.POST.getlist("business_attribute")
        business_attribute_value = request.POST.getlist("business_attribute_value")
        configuration_name = request.POST.getlist("configuration_name")
        effective_date = request.POST.getlist("effective_date")
        expiration_date = request.POST.getlist("expiration_date")
        hint = request.POST.getlist("hint")
        org_id = request.POST.getlist("org_id")
        print("id", _id)
        print("minimum", minimum)
        print("max", maximum)
        print("output", output)
        print("dtype ", data_type)
        print("bhconfigheader", bh_config_header)
        print("btopic ", business_topic)
        print("business attribute", business_attribute)
        print("batvalue", business_attribute_value)
        print("config name", configuration_name)
        print("effective date", effective_date)
        print("exp date", expiration_date)
        print("hint", hint)
        print("org", org_id)

        if True:
            for _id_, _min_, _max_, _output_, dtype, config_header, btopic, battribute, battributevalue, configname, edate, expdate, _hint, orgid in zip(_id, minimum, maximum, output, data_type, bh_config_header, business_topic, business_attribute, business_attribute_value, configuration_name, effective_date, expiration_date, hint, org_id):
                table_entry = self.session.query(BH_CONFIGURATION_DETAIL).get(_id_)
                if _id_ != "None" and _id_ != "..." and _min_ != "None" and  _min_ != "..." and _max_ != "None" and _max_ != "..." and _output_ != "None" and  _output_ != "..." and dtype != "None" and dtype != "..." and config_header != "None" and config_header != "..."and btopic != "None" and  btopic != "..." and battribute != "None" and  battribute != "..." and battributevalue != "None" and battributevalue != "..." and configname != "None" and  configname != "..."  and edate != "None" and  edate != "..." and expdate != "None" and expdate != "..." and _hint  != "None" and _hint != "..." and orgid != "None" and orgid != "...":
                    print(_id_, _min_, _max_, _output_)
                    table_entry.bh_configuration_detail_id = _id_
                    table_entry.business_attribute_range_min = _min_
                    table_entry.business_attribute_range_max = _max_
                    table_entry.output_value = _output_
                    table_entry.data_type = dtype
                    table_entry.bh_configuration_header_id = config_header
                    table_entry.business_topic = btopic
                    table_entry.business_attribute = battribute
                    table_entry.business_attribute_value = battributevalue
                    table_entry.configuration_name = configname
                    table_entry.effective_date = edate
                    table_entry.expiration_date = expdate
                    table_entry.hint = _hint
                    table_entry.org_id = orgid
                    self.session.commit()
                if _id_ != "None":
                    table_entry.bh_configuration_detail_id = _id_
                    self.session.commit()
                if _min_ != "None":
                    table_entry.business_attribute_range_min = _min_
                    self.session.commit()
                if _max_ != "None":
                    table_entry.business_attribute_range_max = _max_
                    self.session.commit()
                if _output_ != "None":
                    table_entry.output_value = _output_
                    self.session.commit()
                if dtype != "None":
                    table_entry.data_type = dtype
                    self.session.commit()
                if config_header != "None":
                    table_entry.bh_configuration_header_id = config_header
                    self.session.commit()
                if btopic != "None":
                    table_entry.business_topic = btopic
                    self.session.commit()
                if battribute != "None":
                    table_entry.business_attribute = battribute
                    self.session.commit()
                if battributevalue != "None":
                    table_entry.business_attribute_value = battributevalue
                    self.session.commit()
                if configname != "None":
                    table_entry.configuration_name = configname
                    self.session.commit()
                if edate != "None":
                    table_entry.effective_date = edate
                    self.session.commit()
                if expdate != "None":
                    table_entry.expiration_date = expdate
                    self.session.commit()
                if _hint != "None":
                    table_entry.hint = _hint
                    self.session.commit()
                if orgid != "None":
                    table_entry.org_id = orgid
                    self.session.commit()
        return HttpResponse("asdfasdf")
