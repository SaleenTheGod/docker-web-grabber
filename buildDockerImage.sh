if [ -f .env ]
then
  export $(cat .env | sed 's/#.*//g' | xargs)
  docker build -f "Dockerfile" -t $DOCKER_IMAGE_NAME .
fi