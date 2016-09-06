source ./.env

KEY_TITLE=`echo $HOSTNAME`:`date`
PUBKEY=`cat $HOME/.ssh/id_rsa.pub`

GITHUB_URL='https://api.github.com/user/keys'
GITHUB_PAYLOAD="{\"title\": \"$KEY_TITLE\", \"key\": \"$PUBKEY\"}"

BITBUCKET_URL="https://api.bitbucket.org/1.0/users/$BITBUCKET_USER/ssh-keys"
BITBUCKET_PAYLOAD="{\"key\": \"$PUBKEY\"}"

# https://developer.github.com/v3/users/keys/
# curl --user "$GITHUB_USER" --data "$GITHUB_PAYLOAD" $GITHUB_URL

# https://confluence.atlassian.com/bitbucket/ssh-keys-resource-296911735.html
curl --user "$BITBUCKET_USER" -X POST -H "Content-Type: application/json" --data "$BITBUCKET_PAYLOAD" $BITBUCKET_URL






