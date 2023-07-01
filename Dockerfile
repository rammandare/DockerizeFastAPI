FROM python:3.8.10
USER root
RUN mkdir /fastapitodo
WORKDIR /fastapitodo
ENV PYTHONUNBUFFERED True
COPY requirements.txt .
COPY . .
RUN pip install -r requirements.txt
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
EXPOSE 8000

