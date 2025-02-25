# Use uma imagem base do Python
FROM python:3.13-slim

WORKDIR /app

RUN apt-get update && apt-get install -y netcat-traditional  && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN chmod +x start.sh

CMD ["./start.sh"]
