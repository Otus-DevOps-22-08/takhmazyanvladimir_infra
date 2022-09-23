# takhmazyanvladimir_infra
takhmazyanvladimir Infra repository

Для прямого подключения с локальной тачки к someinternalhost прописываем в /home/azathoth/.ssh/config определённые настройки (выложил файл config в папку cloud-bastion).
И далее подключаемся командой ssh someinternalhost

pritunl настроен, vpn работает

bastion_IP = 51.250.83.187
someinternalhost_IP = 10.128.0.9

Задание с установкой SSL-сертификата выполнено с использованием letsencrypt и nip.io, при входе по ссылке 
https://51.250.83.187.nip.io/ подключение считается безопасным.
