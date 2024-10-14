# Add deno completions to search path
if [[ ":$FPATH:" != *":/Users/lovasiflorian/.zsh/completions:"* ]]; then export FPATH="/Users/lovasiflorian/.zsh/completions:$FPATH"; fi
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"
source ~/antigen.zsh
alias air='$(go env GOPATH)/bin/air'
export ZSH="$HOME/.oh-my-zsh"
eval "$(zoxide init zsh)"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

alias zed="open -a /Applications/Zed.app -n"
alias lg="lazygit"
alias setup-dc-pg="$HOME/sh-scripts/create-pg-container.sh"
alias cat='bat'
alias xmlvalidator='python3 -c "import sys, xml.dom.minidom as d; d.parse(sys.argv[1])"'
alias work='cd ~/Work/'
alias dc='docker'
alias ld='lazydocker'
alias gpm='git pull origin master'
alias kdc='$HOME/sh-scripts/kill-all-containers.sh'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"

source <(ng completion script)
. "/Users/lovasiflorian/.deno/env"
