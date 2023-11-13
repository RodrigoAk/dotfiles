if status is-login
    and status is-interactive
    # To add a key:    set -Ua SSH_KEYS_TO_AUTOLOAD keypath
    # To remove a key: set -U --erase
    set -U SSH_KEYS_TO_AUTOLOAD $(printf '%s\n' $SSH_KEYS_TO_AUTOLOAD | awk '!arr[$1]++')
    keychain --eval $SSH_KEYS_TO_AUTOLOAD | source
end
