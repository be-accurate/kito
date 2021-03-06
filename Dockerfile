FROM python:3.10.4-slim

WORKDIR /var/example/
COPY . .

RUN pip install poetry
RUN poetry install

CMD poetry run gunicorn -w 4 -b 0.0.0.0:8000 example.wsgi
