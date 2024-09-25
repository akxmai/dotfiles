# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/daniil/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source ~/.zsh/zsh-config
source ~/.zsh/zsh-prompt
eval "$(zoxide init --cmd cd zsh)"
alias vim=nvim
alias lsa="ls -laF"
alias cat=bat
alias man=tldr
alias stress="ffmpeg -y -f rawvideo -video_size 1920x1080 -pixel_format yuv420p -framerate 60 -i /dev/urandom -c:v libx265 -preset placebo -f matroska /dev/null"
# now load zsh-syntax-highlighting plugin
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

