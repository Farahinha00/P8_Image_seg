# lightweight python
# Using a base image optimized for FastAPI with Uvicorn and Gunicorn.
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file and install Python dependencies.
COPY requirements.txt .
RUN pip install -r requirements.txt

# Return to the main app directory
WORKDIR /app

# Copy the rest of your application's code into the container.
COPY . .

# Expose the port Uvicorn will listen on.
#EXPOSE 8000

# Start Uvicorn with live reload for development.
#CMD ["uvicorn", "front:app", "--host", "0.0.0.0", "--port", "8000"]

#CMD ["gunicorn", "app:app", "-w 4", "-k uvicorn.workers.UvicornWorker", "--bind", "0.0.0.0:8000"]

# Expose the port Streamlit will listen on.
EXPOSE 8501

# Start Streamlit web app.
CMD ["streamlit", "run", "front.py", "--server.port=8501", "--server.address=0.0.0.0"]
