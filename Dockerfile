# Use Python 3.11 base image
FROM python:3.11-slim

# Set Working Directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy rest of application code
COPY . .

# Expose the application port
EXPOSE 8000

# Command to start fastAPI application
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]