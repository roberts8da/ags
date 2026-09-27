FROM python:3.10

WORKDIR /app

COPY . .

EXPOSE 8080

RUN apt-get update && apt-get install -y --no-install-recommends \
    openssl \
    bash \
    curl \
    && chmod +x app.py \
    && pip install -r requirements.txt \
    && rm -rf /var/lib/apt/lists/*

CMD ["python3", "app.py"]
