Install Clickhouse & Vector Ansible-Playbook
=========
Плейбук позволяет выполнить установку Clickhouse, Vector и Lighthouse.


Playbook Variables
--------------

|       Параметр      | Тип    | Значение по умолчанию | Описание                                                                |
|------------------------|--------|-----------------------|-------------------------------------------------------------------------|
| clickhouse_version     | string | 22.3.3.44             | Позволяет задать требуемую к установки версию Clickhouse                |
| clickhouse_packages    | list   | - clickhouse-client<br> - clickhouse-server<br> - clickhouse-common-static | Задает список пакетов Clickhouse для скачивания и установки             |
| vector_user            | string | vector                | Задает имя пользователя от которого будет запущен systemd unit          |
| tmp_directory_path     | string | /tmp/distrib          | Задает путь для временной директории в которую загружаются дистрибутивы |
| vector_version         | string | 0.31.0                | Позволяет задать требуемую к установки версию Vector                    |
| lighthouse_content_dir | string | /var/lib/www          | Определяет директорию для установки lighthouse                          |

Tags
------------

 - prod - При запуске плейбука с эти тэгом, будет выполнен таск по очистки содержимого во временной директории.

Author Information
------------------

AndreyShitov
