FROM python:3.8

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE 1

ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip

COPY ./app/autOCampus-icu-backend/requirements.txt /app/requirements.txt

#RUN pip install -r requirements.txt

COPY . /app
