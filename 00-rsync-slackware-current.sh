rm -r -f slackware64-current
#mkdir -p slackware64-current

SLACKREPO=mirrors.slackware.com/slackware/slackware64-current/
#SLACKREPO=mirror.yandex.ru/slackware/slackware64-current/

rsync -av --exclude source/ rsync://$SLACKREPO ./slackware64-current/
