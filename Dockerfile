FROM python:3.8

WORKDIR /app
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN apt-get update ##[edited]
RUN apt-get install 'ffmpeg'\
    'libsm6'\
    'libxext6' -y
#RUN apk add --no-cache gcc musl-dev linux-headers

COPY requirements.txt .
RUN pip install -r requirements.txt
ENV PORT 8080

COPY server/ /app
WORKDIR /app
COPY . .
CMD exec gunicorn --bind :$PORT --workers 3 app:app