FROM python:3.8-slim
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir --progress-bar=off -r requirements.txt
CMD ["python", "main.py"]
