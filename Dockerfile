FROM python:3.8

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE 1

ENV PYTHONUNBUFFERED 1

RUN apt-get install build-essential python3-dev python2.7-dev \
    libldap2-dev libsasl2-dev slapd ldap-utils tox \
    lcov valgrind

RUN pip install --upgrade pip

COPY ./app/autOCampus-icu-backend/requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt

COPY . /app
