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

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/texbin:/Users/jellis/scripts:/Users/jellis/.cargo/bin:/Users/jellis/git-repos/scripts"
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

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

alias j8="export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)"
alias j7="export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)"

# branch log
alias hlog='git log --date-order --all --graph --format="%C(green)%h %Creset%C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset %s"'
alias xlog='git log --date-order --graph --format="%C(green)%h %Creset%C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset %s" $(git rev-parse --abbrev-ref HEAD) '
#alias xlog='git log --date-order --graph --format="%C(green)%h %Creset%C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset %s"'

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
source /usr/local/dev-env/bin/profile

# don't fail when glob doesn't find a match
setopt nonomatch
