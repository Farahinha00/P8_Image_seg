# lightweight python
FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
# Install dependencies
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["uvicorn" , "app:app" , "-host" , "0.0.0.0" , "--port" , "8000"]
