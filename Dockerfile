# Base Image
FROM python:3.9


# Set working directory
WORKDIR /app

# Install system dependencies

RUN echo "deb http://ftp.us.debian.org/debian/ bookworm main" > /etc/apt/sources.list && \
    apt-get update && apt-get install -y iputils-ping && \
    rm -rf /var/lib/apt/lists/*

# Copy application files
COPY . /app

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt --index-url=https://pypi.org/simple

# Expose application port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
