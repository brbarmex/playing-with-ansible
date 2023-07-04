FROM golang:1.17

# Set the working directory inside the container
WORKDIR /app
COPY . .

# Build the Go application
RUN go build -o myapp
EXPOSE 8080
CMD ["./myapp"]
