FROM rasa/rasa:2.8.15-full

USER root

COPY requirements.txt .

RUN pip install --upgrade pip

RUN pip install --no-cache-dir -r requirements.txt

WORKDIR /app

USER 1001
