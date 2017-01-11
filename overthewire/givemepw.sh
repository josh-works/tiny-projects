# josh's attempt at a shell script to get the pw

#!/bin/bash
user=whoami
echo "attempting to copy a file as $user."

cp /etc/bandit_pass/bandit24 > /tmp/random565/shelloutput

echo "should have worked. Check out /tmp/random565"
