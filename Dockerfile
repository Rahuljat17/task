# Use the official Python image as a base
FROM python:3.10-slim
# Set the working directory
WORKDIR /app
# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
# Copy the rest of the application code
COPY . .
# Expose the port the application runs on
EXPOSE 5000
# Run the Flask application
CMD ["python", "app.py"]
