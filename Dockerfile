# Use official Python image
FROM python:3.11-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . .

# Expose FastAPI port
EXPOSE 9999

# Start FastAPI backend
CMD ["uvicorn", "backend:app", "--host", "0.0.0.0", "--port", "9999"]
