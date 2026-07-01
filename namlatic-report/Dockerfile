FROM nginx:alpine

RUN apk add --no-cache tzdata

# Set timezone — change to match your local time
# Options: Asia/Kolkata | Africa/Algiers | Europe/Paris
ENV TZ=Asia/Kolkata
RUN cp /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY content/ /usr/share/nginx/html/
COPY scripts/nginx.conf /etc/nginx/conf.d/default.conf
COPY scripts/crontab /etc/crontabs/root
COPY scripts/generate-report.sh /usr/local/bin/generate-report.sh
RUN chmod +x /usr/local/bin/generate-report.sh && touch /var/log/cron.log

EXPOSE 80

CMD crond -b -l 8 && nginx -g 'daemon off;'
