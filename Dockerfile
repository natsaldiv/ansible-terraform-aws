FROM python:3.8-slim
WORKDIR /app
COPY . /app
ENV PIP_NO_PROGRESS_BAR=off
RUN pip install --no-cache-dir flask
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0", "--port=80"]
