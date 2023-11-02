# Define your Docker image name and tag
IMAGE_NAME="reactjs-demo"
TAG="v1"

# Define the address of your server
SERVER_ADDRESS="13.233.112.82"

# Push the Docker image to a Docker registry (if needed)
# Example:
# docker push your-registry-url/$IMAGE_NAME:$TAG

# SSH into the server and pull the Docker image
ssh user@$SERVER_ADDRESS <<EOF
docker pull $IMAGE_NAME:$TAG
docker run -d -p 80:3000 --name $IMAGE_NAME $IMAGE_NAME:$TAG
EOF
