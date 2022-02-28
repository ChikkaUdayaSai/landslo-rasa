FROM rasa/rasa:2.8.11

USER root

RUN sudo apt install python3-scipy
COPY requirements.txt .

RUN pip install --upgrade pip

RUN pip install --no-cache-dir -r requirements.txt

WORKDIR /app

USER 1001
