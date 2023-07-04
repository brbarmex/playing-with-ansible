# Use the official Go image as the base image
FROM golang:1.17

# Set the working directory inside the container
WORKDIR /app

# Copy the source code into the container
COPY . .

# Build the Go application
RUN go build -o myapp

# Expose a port (if your application listens on a specific port)
EXPOSE 8080

# Define the command to run your application
CMD ["./myapp"]
