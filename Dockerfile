FROM python:3.6-alpine

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

CMD celery worker -A app.celery_app
