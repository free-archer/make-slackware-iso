rm -r -f slackware64-current
#mkdir -p slackware64-current

rsync -av --exclude source/ rsync://mirror.yandex.ru/slackware/slackware64-current/ ./slackware64-current/
