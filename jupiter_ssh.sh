# Первое, что нужно сделать - это выяснить порт на сервере, к которому подключён jupiter (по умолчанию это 8888), и местоположение папки с виртуальной средой с jupiter.
ssh hranitel2@server_ip # Для начала подключимся к серверу
netstat -pnltu # Теперь проверяем порты на сервере. Ищем строку, где указана программа jupiter notebook
find ~ -type d -and -name "jupiter*" # Находим директорию с jupiter => знаем директорию с нужной виртуальной средой (либо ищем папки со средой поиском "env*"
exit # Отключаемся от сервера
ssh -L 8000:localhost:8888 hranitel2@server_ip # Создаём локальное подключение, чтобы происходящее на порте сервера 8888 передавалось на наш порт 8000
source ~/some_dirs/example_env_dir/bin/activate # Активируем виртуальную среду, в которой установлен jupiter
jupiter notebook # Запускаем jupiter
# Далее запускаем в браузере на компьютере URL-адрес, начинающийся с http://localhost:8000
# Готово!
