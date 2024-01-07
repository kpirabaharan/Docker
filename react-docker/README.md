## Build

docker build -t react-docker .

## Run

docker run -v "$(pwd):/home/app" -v /home/app/node_modules -itp 5173:5173 --rm --name react-vite react-docker
