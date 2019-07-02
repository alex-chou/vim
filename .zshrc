# Path to your oh-my-zsh installation.
export ZSH=/Users/alex-temp/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gallois"

plugins=(gitfast)

# User configuration

export PATH="$HOME/.toolbox/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"
export PATH=~/Library/Flex/flex_sdk_4.6/bin:$PATH
export FLEX_HOME=~/Library/Flex/flex_sdk_4.6

export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
export GOREPO=$GOPATH/src/code.justin.tv
export CLIPS=$GOPATH/src/code.justin.tv/video/clips-upload
export GOWEB=$GOREPO/web

export TWITCH_TEST_LOCAL=1
#export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
plugins=(git)

alias ll='ls -lA'
alias la='ls -A'
alias reload='source ~/.zshrc'
alias go-check='~/.go-check.sh'
alias kraken='~/junk/kraken_http/kraken.rb'

alias prod_db='psql -U clips_service -d clips -h clips-production-cluster.cluster-clcdepomeiim.us-west-2.rds.amazonaws.com'
alias prod_ro_db='psql -U clips_service -d clips -h clips-production-cluster.cluster-ro-clcdepomeiim.us-west-2.rds.amazonaws.com'
alias beta_db='psql -U clips_service -d clips -h clips-beta-cluster.cluster-clcdepomeiim.us-west-2.rds.amazonaws.com'
alias beta_ro_db='psql -U clips_service -d clips -h clips-beta-cluster.cluster-ro-clcdepomeiim.us-west-2.rds.amazonaws.com'
alias staging_db='psql -U clips_service -d clips -h clips-staging-cluster.cluster-clcdepomeiim.us-west-2.rds.amazonaws.com'
alias staging_ro_db='psql -U clips_service -d clips -h clips-staging-cluster.cluster-ro-clcdepomeiim.us-west-2.rds.amazonaws.com'

alias restart_docker='docker-machine stop default; docker-machine start default; eval "$(docker-machine env default)"'
alias start_docker='docker-machine start default; eval "$(docker-machine env default)"'
alias panels_db='psql -U panels -d panels -h panels-production.ciea1tubqwoo.us-west-2.rds.amazonaws.com'

alias switch_go110='brew unlink go && brew link --force go@1.10'
alias switch_go='brew unlink go@1.10 && brew link go'

alias tmux='tmux -2'

eval "$(rbenv init -)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Source chtf
if [[ -f /usr/local/share/chtf/chtf.sh ]]; then
    source "/usr/local/share/chtf/chtf.sh"
fi
export PATH=/Users/alexchou/.toolbox/bin:$PATH
