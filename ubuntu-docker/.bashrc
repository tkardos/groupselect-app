PS1='ubuntu:\W$ '
source /root/GroupSelect/venv/bin/activate
# Display welcome message:
[ ! -z "$TERM" -a -r /etc/motd ] && cat /etc/motd