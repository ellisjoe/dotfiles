# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="my-clean"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git) # zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/opt/openssl@1.1/bin"
export PATH="$PATH:/opt/homebrew/opt/ruby@3.2/bin"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/usr/bin:/bin"
export PATH="$PATH:/usr/sbin"
export PATH="$PATH:/sbin"
export PATH="$PATH:/usr/texbin"
export PATH="$PATH:/Users/jellis/scripts"
export PATH="$PATH:/Users/jellis/.cargo/bin"
export PATH="$PATH:/Users/jellis/git-repos/scripts"
export PATH="$PATH:/opt/homebrew/bin"
export PATH="$PATH:/Library/TeX/texbin"

export JAVA_HOME=$(/usr/libexec/java_home -v 11)

alias zsrc='source ~/.zshrc'
alias eclipse='open -na /Applications/Eclipse.app'
alias notify='terminal-notifier -message "Done" -title "NOTIFICATION"'

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
export EDITOR='vim'

# use vi bindings for readline enabled apps
set editing-mode vi

alias javav="/usr/libexec/java_home -v"
alias j8="export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)"
alias j11="export JAVA_HOME=$(/usr/libexec/java_home -v 11)"
alias j15="export JAVA_HOME=$(/usr/libexec/java_home -v 15)"
alias j17="export JAVA_HOME=$(/usr/libexec/java_home -v 15)"

# branch log
alias hlog='git log --date-order --all --graph --format="%C(green)%h %Creset%C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset %s"'
alias xlog='git log --date-order --graph --format="%C(green)%h %Creset%C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset %s" $(git rev-parse --abbrev-ref HEAD) '
#alias xlog='git log --date-order --graph --format="%C(green)%h %Creset%C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset %s"'

ggb() { git grep -n $1 | while IFS=: read i j k; do git blame -L $j,$j $i | cat; done }

alias redock='dev stop && yes | dev rm -v && gw dockerTag --parallel && dev up'

alias ocaml="rlwrap ocaml"
alias zsrc="source ~/.zshrc"

alias gw="./gradlew"
alias ge="./gradlew cleanEclipse eclipse"
alias gi="./gradlew cleanIdea idea"
alias gc="./gradlew check"
alias gp="./gradlew publish"
alias gb="./gradlew build"

alias oi="open *.ipr"

alias f="find . -name "
alias xg="xargs grep"

# proxy scp
alias pscp='scp -o ProxyCommand="nc -x localhost:8080 %h %p"'

MAIL=/var/spool/mail/jellis && export MAIL

# don't fail when glob doesn't find a match
setopt nonomatch

# compute lines of code (loc) per author
alias loc='git ls-files -z | xargs -0n1 git blame -w --line-porcelain | grep -a "^author " | sort -f | uniq -c | sort -n'

#export PATH="/usr/local/opt/node@10/bin:$PATH"
#export PATH="/usr/local/opt/icu4c/bin:$PATH"

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
