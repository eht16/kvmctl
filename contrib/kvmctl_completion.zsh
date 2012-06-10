# kvmctl zsh completion start
function _kvmctl_completion {
  local words cword
  read -Ac words
  read -cn cword
  reply=( $( COMP_WORDS="$words[*]" \
             COMP_CWORD=$(( cword-1 )) \
             KVMCTL_AUTO_COMPLETE=1 $words[1] ) )
}
compctl -K _kvmctl_completion kvmctl
# kvmctl zsh completion end
