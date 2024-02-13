# Load Antibody plugins used in linux and wsl
source <(antibody init)
antibody bundle zsh-users/zsh-autosuggestions
antibody bundle zsh-users/zsh-syntax-highlighting


plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-history-substring-search web-search copyfile docker)


# Load Starship
eval "$(starship init zsh)"

# Load Direnv
eval "$(direnv hook zsh)"

[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/functions.zsh ]] && source ~/.zsh/functions.zsh
[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh
[[ -f ~/.zsh/nvm.zsh ]] && source ~/.zsh/nvm.zsh
[[ -f ~/.zsh/wsl2fix.zsh ]] && source ~/.zsh/wsl2fix.zsh
[[ -f ~/.zsh/goto.zsh ]] && source ~/.zsh/goto.zsh




source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh
# Set PATH For MACOS 
# export PATH="/bin:/usr/bin:/usr/local/bin:/Applications/Visual Studio Code.app/Contents/Resources/app/bin:/Applications/Postgres.app/Contents/Versions/15/bin:/usr/sbin:$PATH"

# # Initialize Homebrew and Starship
# eval "$(/opt/homebrew/bin/brew shellenv)"
# eval "$(starship init zsh)"