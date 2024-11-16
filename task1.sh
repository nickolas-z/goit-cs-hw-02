#!/bin/bash 

# Назва файлу для логів
LOG_FILE="website_status.log"

# Масив URL вебсайтів для перевірки
WEBSITES=(
    "https://google.com"
    "https://g00gle.com"
    "https://facebook.com"
    "https://twitter.com"
    "https://www.edu.goit.global"
    "https://en.cppreference.com/"
    "https://eigen-docs.netlify.app/"
    "https://1.1.org/"
)

TIMEOUT=5

# Створення або очищення файлу логів
echo "Website status check - $(date)" > "$LOG_FILE"
echo "---------------------------------------------------" >> "$LOG_FILE"


for website in "${WEBSITES[@]}"; do
    # Використання curl для отримання статус-коду та кінцевого URL
    response=$(curl -s --max-time "$TIMEOUT" -o /dev/null -w "%{http_code} %{url_effective}" -L "$website")
    status_code=$(echo "$response" | awk '{print $1}')
    final_url=$(echo "$response" | awk '{print $2}')

    # Перевірка статус-коду
    if [ "$status_code" -eq 200 ]; then
        status="UP"
        redirect_info="(redirected to $final_url)"
    elif [ "$status_code" -eq 000 ]; then
        status="DOWN"
        redirect_info="(unable to connect)"
    else
        status="DOWN (HTTP status: $status_code)"
        redirect_info="(redirected to $final_url)"
    fi

    printf "%-40s %-10s %s\n" "$website" "$status" "$redirect_info" | tee -a "$LOG_FILE"
done

# Повідомлення про запис результатів у файл
echo ""
echo "Результати стану сайтів у файлі: $LOG_FILE"
