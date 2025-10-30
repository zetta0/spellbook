export $(grep -v "^#" env | xargs) 

docker build --network=host -t spellbook --build-arg UNAME=${USERNAME} --build-arg UPASS=${PASSWORD} .
