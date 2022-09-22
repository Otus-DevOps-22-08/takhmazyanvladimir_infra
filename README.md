# takhmazyanvladimir_infra
takhmazyanvladimir Infra repository

Для прямого подключения с локальной тачки к someinternalhost прописываем в /home/azathoth/.ssh/config следующее:

#начало конфига
Host bastion
  Hostname 51.250.83.187
  User appuser
  IdentityFile /home/azathoth/.ssh/id_rsa

Host someinternalhost
  Hostname 10.128.0.9
  User appuser
  ProxyCommand ssh -W %h:%p bastion
  IdentityFile /home/azathoth/.ssh/id_rsa
#конец конфига

И далее подключаемся командой ssh someinternalhost

pritunl настроен, vpn работает

bastion_IP = 51.250.83.187
someinternalhost_IP = 10.128.0.9

Задание с установкой SSL-сертификата выполнено с использованием letsencrypt и nip.io, при входе по ссылке 
https://51.250.83.187.nip.io/ подключение считается безопасным.
