# lightweight python
FROM tensorflow/tensorflow:latest-gpu
FROM python:3.9
WORKDIR /fastapi
COPY requirements.txt /fastapi
RUN pip install -r requirements.txt
COPY ./app /fastapi/app
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "80"]
