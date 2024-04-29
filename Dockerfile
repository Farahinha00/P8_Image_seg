# lightweight python
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9

WORKDIR /app

COPY requirements.txt .
# Install dependencies
RUN python -m pip install -r requirements.txt

COPY . .

EXPOSE 8000

#CMD ["uvicorn" , "app:app" , ,"--port","8000","--host","0.0.0.0"]

#CMD ["gunicorn", "app:app", "-w 4", "-k uvicorn.workers.UvicornWorker", "--bind", "0.0.0.0:8000"]
