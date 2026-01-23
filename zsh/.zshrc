# --- Prompt ---
fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure

export PATH="$HOME/.local/bin:$PATH"

# --- History ---
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE

# --- Options ---
setopt autocd
setopt extendedglob
setopt NO_BEEP

# --- Vi mode = caca ---
bindkey -e

# --- Completion ---
autoload -Uz compinit
compinit

# --- Aliases ---
alias ls='eza'
alias ll='eza -l'
alias la='eza -la'
alias lt='eza --tree'
alias monitor='./.config/hypr/scripts/monitor-setup.sh'

# --- Plugins ---
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
