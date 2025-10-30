FROM python:3.11-slim-bookworm

RUN apt-get update && apt-get install -y --no-install-recommends \
    bind9-dnsutils libpq-dev python3-dev gcc \
 && rm -rf /var/lib/apt/lists/*

COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
CMD ["python", "app.py"]
