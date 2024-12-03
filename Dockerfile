FROM python:3.10.12

# Install dependencies
RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
    gcc \
    libffi-dev \
    musl-dev \
    ffmpeg \
    aria2 \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install Python dependencies
RUN pip3 install --no-cache-dir --upgrade --requirement requirements.txt

# Run the bot
CMD ["python3", "Modules/main.py"]
