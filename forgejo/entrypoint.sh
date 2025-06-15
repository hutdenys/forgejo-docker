#!/bin/bash
set -e

APP_DATA_PATH="/data"
APP_INI="${APP_DATA_PATH}/gitea/conf/app.ini"

# Створити потрібні директорії з правильними правами
mkdir -p "$APP_DATA_PATH/gitea/conf"
chown -R git:git "$APP_DATA_PATH"

# Якщо app.ini ще не існує — згенеруємо з шаблону
if [ ! -f "$APP_INI" ]; then
  echo "Generating app.ini..."
  envsubst < /app/templates/app.ini.tpl > "$APP_INI"
  chown git:git "$APP_INI"
fi

# Запуск Forgejo з явним шляхом
exec /usr/local/bin/forgejo --work-path "$APP_DATA_PATH" web
