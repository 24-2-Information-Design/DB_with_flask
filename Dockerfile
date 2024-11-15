FROM python:3.9-slim

WORKDIR /app

RUN apt-get update && apt-get install -y \
    libpq-dev \
    gcc \
    && rm -rf /var/lib/apt/lists/*

COPY . .

RUN pip install -r requirements.txt

CMD ["flask", "run", "--host=0.0.0.0"]