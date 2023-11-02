# Define your Docker image name and tag
IMAGE_NAME="reactjs-demo"
TAG="v1"

# Build the Docker image
docker build -t $IMAGE_NAME:$TAG .
