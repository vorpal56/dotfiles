eval "$(/opt/homebrew/bin/brew shellenv)"

# git completions and others
autoload -Uz compinit && compinit

# allow case-insensitive match when using tab
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Not sure if these work? use cat -v to check key combos
#bindkey "^[[1;5C" forward-word
#bindkey "^[[1;5D" backward-word
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

# vscode sometimes sends ^[b or ^[[1;3D regardless of terminal.integrated.macOptionIsMeta
bindkey "^[b" backward-word
bindkey "^[[1;3D" backward-word

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

# Removes newline after each command https://github.com/sindresorhus/pure/issues/509#issuecomment-641001784
print() {
  [ 0 -eq $# -a "prompt_pure_precmd" = "${funcstack[-1]}" ] || builtin print "$@";
}
autoload -U promptinit; promptinit
zstyle :prompt:pure:path color blue
zstyle :prompt:pure:git:branch color green
prompt pure
# Removes the newline of prompt https://github.com/sindresorhus/pure/issues/228#issuecomment-299425799
prompt_newline='%666v'
PROMPT=" $PROMPT"

# Auto suggestions by pressing right arrow
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zaliases