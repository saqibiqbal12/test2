# Use the official Python image from Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the required Python packages
RUN pip install -r requirements.txt

# Copy the rest of the application files
COPY . .

# Expose port 5000 to access the app
EXPOSE 5000

# Define the command to run the app
CMD ["python", "app.py"]

