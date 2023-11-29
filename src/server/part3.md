## Part 3. Мини веб-сервер

- Устанавливаем докер:
sudo apt install docker.io 
- Скачиваем nginx:
sudo docker pull nginx 
- Запускаем контейнер:
sudo docker run -p 8080:8080 -p 81:81 -d nginx 
- Копируем конфиг в контейнер:
sudo docker cp ~/src/mini-server/nginx.conf  [container name]:/etc/nginx/nginx.conf
- Копируем мини-сервер в контейнер:
sudo docker cp ~/src/mini-server/mini_server.c  [container name]:/. 

- Установить все утилиты:
   - docker exec [container name] apt update
   - docker exec [container name] apt -y install gcc
   - docker exec [container name] apt -y install libfcgi-dev
   - docker exec [container name] apt -y install spawn-fcgi

- Собираем:
   - docker exec [container name] gcc -o mini_server mini_server.c -lfcgi
   - docker exec [container name] spawn-fcgi -p 8080 mini_server
   - docker exec [container name] nginx -s reload
   - docker exec [container name] service nginx start
   - Открываем в браузере страницу по адрессу localhost:81
   - Привет мир