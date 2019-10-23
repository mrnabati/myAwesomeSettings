# https://github.com/robbyrussell/oh-my-zsh
# https://github.com/bhilburn/powerlevel9k
# http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html
# https://nerdfonts.com

export ZSH="$HOME/.oh-my-zsh"

#################################################
#---------------- ZSH Theme --------------------#
#################################################
ZSH_THEME="powerlevel10k/powerlevel10k"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

#################################################
#----------------- Plugins ---------------------#
#################################################
plugins=(git zsh-syntax-highlighting vscode tmux)
plugins+=(colored-man-pages osx pip history)

source $ZSH/oh-my-zsh.sh

## Plugin settings (should come after sourceing oh-my-zsh.sh)
ZSH_HIGHLIGHT_STYLES[path]='none'
ZSH_HIGHLIGHT_STYLES[path_prefix]='none'
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

## Other ZSH settings
unsetopt share_history      # Do not share history between shells

#################################################
#-------------- Custom Functions ---------------#
#################################################

# Create a new directory and enter it
function mkd() {
	mkdir -p "$@" && cd "$_";
}

# Preview a markdown file in terminal
function mdt() {
    markdown "$*" | lynx -stdin
}

#################################################
#---------------- Aliases ----------------------#
#################################################



#################################################
#---------------- Exports ----------------------#
#################################################
export PATH=/usr/local/bin:${PATH}

