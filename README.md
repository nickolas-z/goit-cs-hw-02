# goit-cs-hw-02
Тема 4. Введення в Docker та контейнеризацію

Перед початком роботи:
1. Версія **Python: >=3.10**
2. Cтворюємо віртуальне середовище (Python: >=3.10) `.env`: `python -m venv .env`
3. Активуємо (відповідно до своєї ОС): `source .env/bin/activate`
4. Інсталюємо залежності: `pip install -r requirements.txt`
5. По завершенню роботи деактивовуємо: `deactivate`


## Завдання 1
Напишіть скрипт, який автоматично перевіряє, чи доступні певні вебсайти. Скрипт повинен використовувати команду `curl` для надсилання `HTTP GET` запитів до кожного сайту у списку та перевірки відповіді.

**Покрокова інструкція**
1. Список вебсайтів. У вашому скрипті має бути визначений масив з URL вебсайтів, які потрібно перевірити. Наприклад, https://google.com, https://facebook.com, https://twitter.com.
2. Перевірка доступності. Скрипт має перевіряти кожен сайт зі списку за допомогою curl, переконуючись, що сайт відповідає з `HTTP` статус-кодом `200`, що вказує на успішну доступність сайту.
3. Запис результатів у файл. Для кожного сайту результат перевірки (доступний чи недоступний) має бути записаний у файл логів. Назва файлу логів має бути визначена у скрипті.
4. Форматування виходу. Результати мають бути чітко сформульовані, наприклад: "[<https://google.com>](<https://google.com/>) is UP" або "[<https://twitter.com>](<https://twitter.com/>) is DOWN".
5. Вивід інформації. Після виконання скрипту має бути виведено повідомлення, що результати записано у файл логів із його назвою.

**Приклад виконання скрипту**
Скрипт виконує команди та виводить результати у файл website_status.log. Записи у файлі логів будуть відображати статус кожного сайту (UP або DOWN) на момент запуску скрипту.
```
<https://google.com> is UP
<https://facebook.com> is UP
<https://twitter.com> is UP
```
### Критерії прийняття
- Скрипт написано на `Bash`.
- Скрипт повинен опрацьовувати переадресацію.
- Використано цикл для обходу всіх сайтів у списку.
- Використано команду `curl` для перевірки HTTP-відповідей.
- Результати перевірки записані у файл логів, виведено про це повідомлення.
- Форматування коду чітке та акуратне.

### Ресурси
- [task1.sh](./task1.sh)
- [task1](./task1)
- [Screenshot.png](./Screenshot.png)

## Завдання 2
Клонуйте `FastAPI` застосунок, налаштуйте і запустіть його в `Docker` контейнері. Перевірте правильність роботи застосунку та підключення до бази даних.

**Покрокова інструкція**
1. Використовуючи команду `git clone`, клонуйте репозиторій за адресою https://github.com/GoIT-Python-Web/Computer-Systems-hw02. Перейдіть у клонований каталог.
2. Створіть `Dockerfile` із вказівками для створення образу `Docker` застосунку.
3. Напишіть `docker-compose.yaml` з конфігурацією для застосунку та `PostgreSQL`.
4. Використайте `Docker Compose` для побудови середовища, команду `docker-compose up` для запуску середовища.
5. Перевірте функціональність застосунку та доступність бази даних.

### Критерії прийняття
- Клоновано репозиторій, створено `Dockerfile` для створення образу `Docker` застосунку.
- Написано `docker-compose.yaml` з конфігурацією для застосунку та `PostgreSQL`.
- Використано `Docker Compose`, команду `docker-compose up` для побудови та запуску середовища.
- Застосунок є функціональним, а база даних — доступною, що підтверджується натисканням кнопки `Перевірити БД`.

### Ресурси
- [task2.py](./task2.py)

## Додатково
- [Домашнє завдання до модуля "Основи операційних систем"](https://www.edu.goit.global/uk/learn/25315460/19336208/21190481/homework)
- [https://github.com/nickolas-z/goit-cs-hw-02](https://github.com/nickolas-z/goit-cs-hw-02)
- [goit-cs-hw-01-main.zip]()
- [Computer-Systems-and-Their-Fundamentals](https://github.com/nickolas-z/Computer-Systems-and-Their-Fundamentals)