# Path to your oh-my-zsh installation.
export ZSH=/home/tellijo/.oh-my-zsh

HISTSIZE=1000

alias zshconfig="$EDITOR ~/.zshrc"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colored-man)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin"
export TERM="screen-256color"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR='nvim'

# Use Ctrl-z to switch between vim and cli
fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0 ]]; then
    BUFFER="fg"
    zle accept-line
  else
    zle push-input
    zle clear-screen
  fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z

# Avoid changing window name in tmux
DISABLE_AUTO_TITLE="true"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias locvac="cd ~/seloger/locvac/Application/SeLoger.LocVac.Web.Common/Content/Source"
alias ack=ack-grep
alias mugiwara="ssh tellijo@163.172.211.59 -p 54321"
alias mw=mugiwara
alias nas="ssh tellijo@192.168.1.96 -p 6969"

# Tmuxinator projects
alias seloger="mux start seloger db"
alias dotfiles="mux start dotfiles"
alias horo="mux start horofree"
alias xenamux="mux start xena"

source ~/Source/tmuxinator.zsh

fpath=(~/.zsh/completion $fpath)

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-google.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

export NVM_DIR="/home/tellijo/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

autoload -Uz compinit && compinit -i
export PATH=$HOME/bin:$PATH
