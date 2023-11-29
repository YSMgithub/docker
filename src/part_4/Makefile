all: server

server:
	gcc mini_server.c -lfcgi -o mini_server
	spawn-fcgi -p 8080 /server/mini_server
clean:
	rm server
	service nginx stop
