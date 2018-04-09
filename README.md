# Rover Master

This project was build with ruby 2.5.1 version
## Requirements
 - Ruby 2.5.1 or later
 - bundler

## Running the program
You can run the program with command(and input data after program starts):
> ruby lib/main.rb

If you prefer use a text file as input data, you can run:
> ruby lib/main.rb /path_to_file/file

You can generate docker image
> docker build -t gn:rover-master .

And run the container with command:
> docker build -f Dockerfile.windows -t moip:payments

E subir o container com a imagem gerada(you cannot pass file as parameter with docker image):
> docker run --rm  -it gn:rover-master

## Running test cases
To run test cases you should run:
> bundle install

And:
> ruby test/all.rb

## To Do:
- Accept files as argument when running in a docker container
