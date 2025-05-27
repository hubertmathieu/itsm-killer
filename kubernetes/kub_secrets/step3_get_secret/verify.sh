set -e

grep "$(cat /itsm/user.txt)" /tmp/decoded.txt
grep "$(cat /itsm/password.txt)" /tmp/decoded.txt