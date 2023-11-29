all: part4

part4:
	docker build -f ./part_4/Dockerfile -t xxx:1.0 .
	docker run -dt -p 80:81 --name container xxx:1.0 
	
part5:
	dockle -ae pem xxx:1.0

part6:
	docker compose build
	docker compose up

clean4:
	docker container stop container
	docker rm -f container
	docker rmi -f xxx:1.0

clean5:
	docker rmi do5simpledocker0:new

link:
	rm -rf ~/Library/Containers/com.docker.docker
	mkdir -p ~/goinfre/Docker/Data
	ln -s ~/goinfre/Docker ~/Library/Containers/com.docker.docker
