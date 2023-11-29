# Simple Docker

## Part 1. Готовый докер

В качестве конечной цели своей небольшой практики вы сразу выбрали написание докер образа для собственного веб сервера, а потому в начале вам нужно разобраться с уже готовым докер образом для сервера.
Ваш выбор пал на довольно простой **nginx**.

**== Задание ==**

##### Взять официальный докер образ с **nginx** и выкачать его при помощи `docker pull`
<img src="images/1_pull.png" title="pull" width="700"/>

- Пыкачмваем с помощью sudo docker pull nginx
##### Проверить наличие докер образа через `docker images`
<img src="images/2_images.png" title="pull" width="700"/>

- Смотрим на существующие образы
##### Запустить докер образ через `docker run -d [image_id|repository]`
<img src="images/3_run.png" title="pull" width="700"/>

- Запускаем докер

##### Проверить, что образ запустился через `docker ps`
<img src="images/4_ps.png" title="pull" width="700"/>

- Проверяем командой docker ps

##### Посмотреть информацию о контейнере через `docker inspect [container_id|container_name]`
##### По выводу команды определить и поместить в отчёт размер контейнера, список замапленных портов и ip контейнера
<img src="images/5_size.png" title="pull" width="700"/>

- Размер

<img src="images/6_ports.png" title="pull" width="700"/>

- Порты

<img src="images/7_ip.png" title="pull" width="700"/>

- IP
##### Остановить докер образ через `docker stop [container_id|container_name]`
##### Проверить, что образ остановился через `docker ps`
<img src="images/8_stop.png" title="pull" width="700"/>

- Останавливаем докер

##### Запустить докер с замапленными портами 80 и 443 на локальную машину через команду *run*
<img src="images/9_run8080.png" title="pull" width="700"/>

- Запускаем докер с замапленными портами 80 и 443 

##### Проверить, что в браузере по адресу *localhost:80* доступна стартовая страница **nginx**
<img src="images/10_localhost80.png" title="pull" width="700"/>

- Стартовая страница nginx доступна на 80 порту
##### Перезапустить докер контейнер через `docker restart [container_id|container_name]`
##### Проверить любым способом, что контейнер запустился

<img src="images/11_restart.png" title="pull" width="700"/>

- Перезапускаем докер и проверяем командой ps
## Part 2. Операции с контейнером

Докер образ и контейнер готов ы. Теперь можно покопаться в конфигурации **nginx** и отобразить статус страницы.

**== Задание ==**

##### Прочитать конфигурационный файл *nginx.conf* внутри докер образа через команду *exec*

<img src="images/12_conf.png" title="pull" width="700"/>

- читаем конфиг nginx 
##### Создать на локальной машине файл *nginx.conf*
##### Настроить в нем по пути */status* отдачу страницы статуса сервера **nginx**
<img src="images/13_local_config.png" title="pull" width="700"/>

- Настроили в нем по пути */status* отдачу страницы статуса сервера 

##### Скопировать созданный файл *nginx.conf* внутрь докер образа через команду `docker cp`
<img src="images/14_cp.png" title="pull" width="700"/>

- Настроили в нем по пути */status* отдачу страницы статуса сервера 
##### Перезапустить **nginx** внутри докер образа через команду *exec*
<img src="images/15_reload.png" title="pull" width="700"/>

- Перезагружаем nginx 
##### Проверить, что по адресу *localhost:80/status* отдается страничка со статусом сервера **nginx**
<img src="images/16_status.png" title="pull" width="700"/>

- Проверяем local/status 

##### Экспортировать контейнер в файл *container.tar* через команду *export*
##### Остановить контейнер
<img src="images/17_tar.png" title="pull" width="700"/>

- экспортировали контейнер, и остановили контейнер
##### Удалить образ через `docker rmi [image_id|repository]`, не удаляя перед этим контейнеры
<img src="images/18_rmv.png" title="pull" width="700"/>

- Удаляем образ
##### Импортировать контейнер обратно через команду *import*

##### Запустить импортированный контейнер
<img src="images/19_import111.png" title="pull" width="900"/>

- импортируем образ, и запучкаем контейнер

<img src="images/20_win.png" title="pull" width="900"/>
- Ура, все работает!
