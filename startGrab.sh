LOGFILE="output.log"

if [ -f .env ]
then
  export $(cat .env | sed 's/#.*//g' | xargs)
  docker rm -f $DOCKER_IMAGE_NAME"_"$DOCKER_IMAGE_NAME"_1"
  docker compose up -d
  docker logs -f $DOCKER_IMAGE_NAME"_"$DOCKER_IMAGE_NAME"_1" >> output.log
fi