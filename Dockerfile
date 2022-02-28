FROM rasa/rasa:2.8.5

USER root

RUN apt-get install python3-scipy

COPY requirements.txt .

RUN pip install --upgrade pip

RUN pip install --no-cache-dir -r requirements.txt

WORKDIR /app

USER 1001
