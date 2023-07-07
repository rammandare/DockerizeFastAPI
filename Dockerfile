FROM python:3.8.10
USER root
RUN mkdir /fastapi
WORKDIR /fastapi
ENV PYTHONUNBUFFERED True
COPY requirements.txt .
COPY . .
RUN python3 -m venv venv
RUN pip install -r /requirements.txt \ && rm -rf /requirements.txt
CMD ["python3-pip", "uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
EXPOSE 8000

