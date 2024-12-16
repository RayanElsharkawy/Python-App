# Base Image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy application files
COPY . /app

# Install dependencies
RUN pip install -r requirements.txt

# Expose application port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
