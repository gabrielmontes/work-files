export ZSH="$HOME/.oh-my-zsh"

# Theme:
ZSH_THEME="Gozilla"

# Plugins:
plugins=(
    git
)

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /opt/homebrew/share/zsh-you-should-use/you-should-use.plugin.zsh

# Prompt:
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '

# Alias:
alias k="kubectl"
alias m="minikube"
alias g="git"

source $ZSH/oh-my-zsh.sh