# Use Python official image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the Python application into the container
COPY . .

# Install any required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app will run on
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
