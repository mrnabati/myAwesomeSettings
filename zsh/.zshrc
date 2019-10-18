# https://github.com/robbyrussell/oh-my-zsh
# https://github.com/bhilburn/powerlevel9k
# http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html
# https://nerdfonts.com

#################################################
#---------------- Exports ----------------------#
#################################################
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"

#################################################
#---------------- ZSH Theme --------------------#
#################################################
ZSH_THEME="powerlevel10k/powerlevel10k"

# To change powerlevel10k theme settings, edit ~/.p10k.zsh

#################################################
#----------------- Plugins ---------------------#
#################################################
plugins=(
    git
    zsh-syntax-highlighting
    vscode
    tmux
    colored-man-pages
    osx
)
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

#################################################
#---------------- Aliases ----------------------#
#################################################



source $ZSH/oh-my-zsh.sh
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

