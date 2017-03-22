sh /demo/scripts/fake_keystone_run.sh
sh /demo/scripts/fake_origin_run.sh

java -jar /usr/share/repose/repose-valve.jar -c /etc/repose

while :; do
  sleep 300
done