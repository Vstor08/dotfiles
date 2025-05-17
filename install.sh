#!/bin/bash

set -e

# Абсолютный путь до текущего скрипта
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Исходные директории
CONFIG_SRC="$SCRIPT_DIR/config"
LOCAL_SRC="$SCRIPT_DIR/local"

# Целевые директории
CONFIG_DST="$HOME/.config"
LOCAL_DST="$HOME/.local"

echo "Устанавливаю конфиги..."

# Копируем содержимое config/ -> ~/.config/
if [ -d "$CONFIG_SRC" ]; then
    cp -rT "$CONFIG_SRC" "$CONFIG_DST"
    echo "✓ ~/.config обновлена"
else
    echo "✗ Папка config не найдена"
fi

# Копируем содержимое local/ -> ~/.local/
if [ -d "$LOCAL_SRC" ]; then
    cp -rT "$LOCAL_SRC" "$LOCAL_DST"
    echo "✓ ~/.local обновлена"
else
    echo "✗ Папка local не найдена"
fi

echo "Установка завершена."
