FROM cooptilleuls/varnish:6.2
COPY default.vcl /usr/local/etc/varnish/ 

FROM python:3.6.8-alpine
ADD app.py /
RUN pip install flask
CMD env FLASK_APP=app.py flask run
