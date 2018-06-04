# Shebang
#!/bin/bash

# Comments
# This is a comment

# Strings
STRING="Hello World"

'Single and
multi-line strings are supported.'

"Single and
multi-line strings are supported."

cat << EOF
Here-Documents
are also supported
EOF

# Variables
echo $STRING

args=("$@")

echo ${args[0]} ${args[1]} ${args[2]}

# Keywords
for (( i=0;i<$ELEMENTS;i++)); do
	echo ${ARRAY[${i}]}
done

while read LINE; do
    ARRAY[$count]=$LINE
    ((count++))
done

if [ -d $directory ]; then
	echo "Directory exists"
else
	echo "Directory does not exists"
fi

# Some well-known commands
crontab -l -u USER | grep -v 'YOUR JOB COMMAND or PATTERN' | crontab -u USER -

groups user1 user2|cut -d: -f2|xargs -n1|sort|uniq -d

wget -q -O - http://www.example.com/automation/remotescript.sh | bash /dev/stdin parameter1 parameter2

sudo dpkg -i vagrant_1.7.2_x86_64.deb

git pull origin master

sudo gpg --refresh-keys; sudo apt-key update; sudo rm -rf /var/lib/apt/{lists,lists.old}; sudo mkdir -p /var/lib/apt/lists/partial; sudo apt-get clean all; sudo apt-get update
