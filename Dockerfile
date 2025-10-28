FROM python:3.8-slim
WORKDIR /app
COPY . /app
RUN PIP_NO_PROGRESS_BAR=off pip install --no-cache-dir -r requirements.txt
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0", "--port=80"]
