ZSH=$HOME/.oh-my-zsh
ZSH_THEME="minimal"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="true"

plugins=(git bundler brew gem docker git-flow jruby rbenv knife_ssh osx rake rails4 ruby tmux vagrant brew knife lein)

export PATH="/usr/local/bin:$PATH"
export EDITOR='emacs'

source $ZSH/oh-my-zsh.sh
export PATH=${PATH}:/usr/local/bin
export PATH="~/bin:$PATH"
# Erase duplicates in history
export HISTCONTROL=erasedups
# Store 10k history entries
export HISTSIZE=10000
alias knl=knife node list
alias knd=knife node delete
alias kcu=knife cookbook upload
alias krs=knife role show
alias krff=knife role from file
alias kds=knife data bag show
alias kdff=knife data bag from file

alias gc=git clone
alias gs=git status

alias e="emacs"
alias dev="mosh larrywright@dev.argonautlabs.com"
alias code=cd ~/code
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi