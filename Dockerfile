<<<<<<< HEAD
FROM debian:bookworm-slim

# Install necessary runtime dependencies
RUN apt-get update && apt-get install -y \
    ca-certificates \
    libgl1 \
    libxi6 \
    libxcursor1 \
    libxrandr2 \
    libudev1 \
    libasound2 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy your exported Godot server binary and project files
COPY game.x86_64 /app/server.x86_64
=======
FROM debian:bookworm-slim

# Install necessary runtime dependencies
RUN apt-get update && apt-get install -y \
    ca-certificates \
    libgl1 \
    libxi6 \
    libxcursor1 \
    libxrandr2 \
    libudev1 \
    libasound2 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy your exported Godot server binary and project files
COPY game.x86_64 /app/server.x86_64
>>>>>>> 7110709 (initial commit)
COPY game.pck /app/project.pck