FROM python:3.8-slim
WORKDIR /app
COPY hello_flask/ .
RUN apt-get update && apt-get install -y default-libmysqlclient-dev build-essential pkg-config && \
    pip install flask mysqlclient
EXPOSE 5000
CMD ["python", "app.py"]
