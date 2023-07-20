FROM python:3.11.4

WORKDIR /home/

RUN echo "testing1234"

RUN git clone https://github.com/2050TRIP/gsci.git

WORKDIR /home/gsci/

RUN pip install -r requirements.txt

RUN pip install gunicorn

RUN pip install mysqlclient

EXPOSE 8000

CMD ["bash", "-c", "python manage.py collectstatic --noinput --settings=gsci.settings.deploy && python manage.py migrate --settings=gsci.settings.deploy && gunicorn gsci.wsgi --env DJANGO_SETTINGS_MODULE=gsci.settings.deploy --bind 0.0.0.0:8000"]
