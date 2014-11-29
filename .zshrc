# The following lines were added by compinstall

zstyle ':completion:*' completer _ignored
zstyle :compinstall filename '/Users/taka/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install

#文字コード
#export LANG=ja_JP.UTF-8

#ディレクトリ名でcd
setopt auto_cd

### Prompt ###
local p_info="%F{red}%n@%m%f"
local p_cdir="%F{cyan}%~%f"
local p_mark="%F{green}%(!,#,$)%b"
PROMPT="$p_info $p_cdir"$'\n'"$p_mark "

### History ###
HISTFILE=~/.histfile
HISTSIZE=1000000
SAVEHIST=1000000
# End of lines configured by zsh-newuser-install

# ls
export LSCOLORS=gxfxcxdxbxegedabagacag
export LS_COLORS='di=36;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;46'

# 補完候補もLS_COLORSに合わせて色が付くようにする
#zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

#lsがカラー表示になるようエイリアスを設定
case "${OSTYPE}" in
  darwin*)
# Mac
    alias ls="ls -G"
  ;;
  linux*)
# Linux
   alias ls='ls --color'
  ;;
esac

bindkey "^p" history-beginning-search-backward-end
bindkey "^n" history-beginning-search-forward-end
source /Users/taka/zaw/zaw.zsh
