# kvmctl bash completion start
_kvmctl_completion()
{
    COMPREPLY=( $( COMP_WORDS="${COMP_WORDS[*]}" \
                   COMP_CWORD=$COMP_CWORD \
                   KVMCTL_AUTO_COMPLETE=1 $1 ) )
}
complete -o default -F _kvmctl_completion kvmctl
# kvmctl bash completion end
