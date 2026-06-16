Требования
Скачайте образец файла журнала доступа nginx здесь. Файл журнала содержит следующие поля:

IP-адрес

Дата и время

Метод и путь запроса

Код состояния ответа

Размер ответа

Реферер

Пользовательский агент

Вам необходимо создать сценарий командной оболочки, который будет считывать файл журнала и предоставлять следующую информацию:

Топ-5 IP-адресов с наибольшим количеством запросов

Топ-5 наиболее часто запрашиваемых путей

Топ-5 кодов состояния ответа

Топ-5 пользовательских агентов

Вот пример того, как должен выглядеть результат:

текст

Top 5 IP addresses with the most requests:
45.76.135.253 - 1000 requests
142.93.143.8 - 600 requests
178.128.94.113 - 50 requests
43.224.43.187 - 30 requests
178.128.94.113 - 20 requests
Top 5 most requested paths:
/api/v1/users - 1000 requests
/api/v1/products - 600 requests
/api/v1/orders - 50 requests
/api/v1/payments - 30 requests
/api/v1/reviews - 20 requests
Top 5 response status codes:
200 - 1000 requests
404 - 600 requests
500 - 50 requests
401 - 30 requests
304 - 20 requests
https://roadmap.sh/projects/nginx-log-analyser
