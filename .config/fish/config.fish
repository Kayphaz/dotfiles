set fish_greeting # disable fish greeting
zoxide init fish | source

set -Ux BAT_THEME Dracula
set -Ux EDITOR nvim
set -Ux FZF_CTRL_R_OPTS "--reverse --preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"
set -Ux FZF_DEFAULT_COMMAND "fd -H -E '.git'"
set -Ux FZF_DEFAULT_OPTS "--color=spinner:#F8BD96,hl:#F28FAD --color=fg:#D9E0EE,header:#F28FAD,info:#DDB6F2,pointer:#F8BD96 --color=marker:#F8BD96,fg+:#F2CDCD,prompt:#DDB6F2,hl+:#F28FAD"
set -Ux FZF_TMUX_OPTS "-p"
set -x LANG en_US.UTF-8
set -x LC_ALL en_US.UTF-8
set -gx GPG_TTY (tty)

source /opt/homebrew/opt/asdf/libexec/asdf.fish
