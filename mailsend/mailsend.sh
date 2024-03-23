#!/bin/bash

# Check if three parameters are provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <destination> <subject> <body>"
    exit 1
fi

# Assign parameters to variables
DEST="$1"
SUBJ="$2"
BODY="$3"

# Assign values to other variables
MAILNAME="$(cat /etc/mailname)"
FROM="$(whoami) <$(whoami)@$MAILNAME>"
DAT=$(date +"%a, %d %b %Y %T %z")
MSGID="<$(date +%s)@$MAILNAME"
SIG="$(whoami)"

# Create email content
{
echo From: "${FROM}"
echo To: "${DEST}"
echo Subject: "${SUBJ}"
echo Date: "${DAT}"
echo Message-ID: "${MSGID}"
echo Content-Type: text/plain; charset=\"UTF-8\"
echo Content-Transfer-Encoding: 8bit
echo
echo Dear Recipient,
echo
echo "${BODY}"
echo
echo Sincerely,
echo "${SIG}"
} | sendmail "${DEST}"
if [ ${?} -ne 0 ]
then
    echo "Email send failed"
else
echo "Email succesfully sent"
fi
