# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the application's dependencies
COPY requirements.txt .

# Install any dependencies
RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . .

# Specify the command to run the application
# Replace 'app.py' with the entry point of your application
CMD ["python", "app.py"]

# Expose port 8000 if your app runs on this port (adjust as needed)
EXPOSE 8000
