# Домашнее задание к занятию 1 «Введение в Ansible»

## Подготовка к выполнению

1. Установите Ansible версии 2.10 или выше.
2. Создайте свой публичный репозиторий на GitHub с произвольным именем.
3. Скачайте [Playbook](./playbook/) из репозитория с домашним заданием и перенесите его в свой репозиторий.

## Основная часть

1. Попробуйте запустить playbook на окружении из `test.yml`, зафиксируйте значение, которое имеет факт `some_fact` для указанного хоста при выполнении playbook.  

    ![](/08-ansible-01-base/images/01-some_fact.png)  

2. Найдите файл с переменными (group_vars), в котором задаётся найденное в первом пункте значение, и поменяйте его на `all default fact`.  

    ![](/08-ansible-01-base/images/02-change_some_fact.png)  

3. Воспользуйтесь подготовленным (используется `docker`) или создайте собственное окружение для проведения дальнейших испытаний.  

    ![](/08-ansible-01-base/images/03-docker.png)  

4. Проведите запуск playbook на окружении из `prod.yml`. Зафиксируйте полученные значения `some_fact` для каждого из `managed host`.  
    
    ![](/08-ansible-01-base/images/04-prod_some_fact.png)  

5. Добавьте факты в `group_vars` каждой из групп хостов так, чтобы для `some_fact` получились значения: для `deb` — `deb default fact`, для `el` — `el default fact`.  

    ![](/08-ansible-01-base/images/05-fact01.png)  
    ![](/08-ansible-01-base/images/05-fact02.png)  

6.  Повторите запуск playbook на окружении `prod.yml`. Убедитесь, что выдаются корректные значения для всех хостов.  

    ![](/08-ansible-01-base/images/06-check.png)  

7. При помощи `ansible-vault` зашифруйте факты в `group_vars/deb` и `group_vars/el` с паролем `netology`.  

    ![](/08-ansible-01-base/images/07-encrypt_groupvars.png)  

8. Запустите playbook на окружении `prod.yml`. При запуске `ansible` должен запросить у вас пароль. Убедитесь в работоспособности.  

    ![](/08-ansible-01-base/images/08-check_encrypt_groupvars.png)  

9. Посмотрите при помощи `ansible-doc` список плагинов для подключения. Выберите подходящий для работы на `control node`.  

    ![](/08-ansible-01-base/images/09-ansible-doc.png)  

10. В `prod.yml` добавьте новую группу хостов с именем  `local`, в ней разместите localhost с необходимым типом подключения.  

    ![](/08-ansible-01-base/images/10-localhost.png)  

11. Запустите playbook на окружении `prod.yml`. При запуске `ansible` должен запросить у вас пароль. Убедитесь, что факты `some_fact` для каждого из хостов определены из верных `group_vars`.  

    ![](/08-ansible-01-base/images/11-check_localhost.png)  

12. Заполните `README.md` ответами на вопросы. Сделайте `git push` в ветку `master`. В ответе отправьте ссылку на ваш открытый репозиторий с изменённым `playbook` и заполненным `README.md`.

## Необязательная часть

1. При помощи `ansible-vault` расшифруйте все зашифрованные файлы с переменными.  

    ![](/08-ansible-01-base/images/101-decrypt.png)  

2. Зашифруйте отдельное значение `PaSSw0rd` для переменной `some_fact` паролем `netology`. Добавьте полученное значение в `group_vars/all/exmp.yml`.  

    ![](/08-ansible-01-base/images/102-encrypt_string01.png)  
    ![](/08-ansible-01-base/images/102-encrypt_string02.png)  

3. Запустите `playbook`, убедитесь, что для нужных хостов применился новый `fact`.  

    ![](/08-ansible-01-base/images/103-check_encrypt_string.png)  

4. Добавьте новую группу хостов `fedora`, самостоятельно придумайте для неё переменную. В качестве образа можно использовать [этот вариант](https://hub.docker.com/r/pycontribs/fedora).  

    ![](/08-ansible-01-base/images/104-add_fedora.png)  

5. Напишите скрипт на bash: автоматизируйте поднятие необходимых контейнеров, запуск ansible-playbook и остановку контейнеров.  

    ![](/08-ansible-01-base/images/105-script.png)  

6. Все изменения должны быть зафиксированы и отправлены в ваш личный репозиторий.

---

### Как оформить решение задания

Выполненное домашнее задание пришлите в виде ссылки на .md-файл в вашем репозитории.

---
