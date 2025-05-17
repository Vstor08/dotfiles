#!/bin/bash

# Проверка аргумента
if [ -z "$1" ]; then
    echo "Usage: $0 <program_name>"
    exit 1
fi

PROGRAM="$1"

# Проверка, запущен ли процесс
if pgrep -x "$PROGRAM" > /dev/null; then
    echo "$PROGRAM is running. Killing..."
    pkill -x "$PROGRAM"
else
    echo "$PROGRAM is not running. Starting..."
    "$PROGRAM" &
fi
