# Интернет-Магазин, написанный на Spring

Для запуска проекта необходимо выполнить команду в корне проекта:  

```sh
docker-compose up
```

* http://localhost:8080/ -- приложение
  * http://localhost:8080/export/logs -- выгрузка логов (в самом приложении ссылки нет)
* http://localhost:80/ -- zabbix
* http://localhost:9090/ -- консоль Prometheus
* http://localhost:3000/ -- консоль Graphana
* http://localhost:9000/ -- graylog

Дополнительные действия: 
1. Зайти [в вкладку hosts внутри configuration](http://localhost/zabbix.php?action=host.list) и в правом верхем углу импортировать файл из `zabbix_server/zbx_export_hosts.yaml`. Обновление работоспособности хостов происходит каждую минуту. (стандартный хост Zabbix Server и не будет работать, его можно просто удалить)


Стандартные логин/пароль для администратора сайта : 
* admin 
* admin

Стандартные логин/пароль для администратора zabbix : 
* Admin
* zabbix

Стандартные логин/пароль для администратора Graphana : 
* admin 
* admin

Стандартные логин/пароль для администратора Graylog : 
* admin 
* admin
