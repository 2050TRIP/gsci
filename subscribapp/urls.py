from django.urls import path

from subscribapp.views import SubscriptionView

app_name = 'subscribapp'

urlpatterns = [

    path('subscribs/', SubscriptionView.as_view(), name='subscribs')
]