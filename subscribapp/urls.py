from django.urls import path

from subscribapp.views import SubscriptionView, SubscriptionListView

app_name = 'subscribapp'

urlpatterns = [

    path('subscribs/', SubscriptionView.as_view(), name='subscribs'),
    path('list/', SubscriptionListView.as_view(), name='list'),
]