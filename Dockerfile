# Use the official Python image as the base image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file and install the dependencies
COPY requirements.txt .

# Install the Python dependencies
RUN pip install -r requirements.txt

# Copy all the Python files to the working directory
COPY src/ .

# Set the environment variable for the Telegram token
ENV API_TELEGRAM=""

# Expose the necessary port for the Telegram bot
EXPOSE 8443

# Run the bot.py script when the container starts
CMD ["python", "index.py"]
