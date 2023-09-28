zstyle ':omz:update' mode auto
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh.sh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=dracula

# User configuration
export ITERM_ENABLE_SHELL_INTEGRATION_WITH_TMUX=YES
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export EDITOR="vim"
#Zplug
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh
# Plugins
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "plugins/git", from:oh-my-zsh
zplug "dracula/zsh", as:theme
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "plugins/asdf",   from:oh-my-zsh
# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load

# Aliases
alias zshconfig="$EDITOR ~/.zshrc"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"

zstyle :compinstall filename '/Users/luukvankooten/.zshrc'

export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

autoload -Uz compinit
compinit
# End of lines added by compinstall
