eval "$(/opt/homebrew/bin/brew shellenv)"
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

# Removes newline after each command https://github.com/sindresorhus/pure/issues/509#issuecomment-641001784
print() {
  [ 0 -eq $# -a "prompt_pure_precmd" = "${funcstack[-1]}" ] || builtin print "$@";
}
autoload -U promptinit; promptinit
zstyle :prompt:pure:path color white
prompt pure
# Removes the newline of prompt https://github.com/sindresorhus/pure/issues/228#issuecomment-299425799
prompt_newline='%666v'
PROMPT=" $PROMPT"