Тестовое задание 
=====================

### Установка
1. Установить менеджер зависимостей composer на виртуальном хостинге.
2. Скачать проект с GitHub и распаковать (. git clone https://github.com/stzv78/test-task-user-friends.git)
3. Перейти в папку проекта и выполнить команду composer install.
4. Скопировать информацию файла  .env.example  в  .env:
  (cp .env.example .env)
5. Установить ключ в файл среды: php artisan key:generate 
6. Создать базу данных zebrains_task, по умолчанию настройки в .env:
    DB_DATABASE=zebrains_task
    DB_USERNAME=root
    DB_PASSWORD=

7. Восстановить дамп из файла sqldump.sql.
8. Запустить приложение в директории проекта из консоли командой php artisan rec:friends