set fish_greeting

fish_add_path ~/zig/0.11.0/files
fish_add_path ~/go/bin

alias nv nvim
alias lg lazygit
alias ls exa
alias ll "exa -l --icons"
alias la "exa -a"
alias lla "exa -la --icons"

zoxide init fish | source

alias cd z
alias v vim

# pnpm
set -gx PNPM_HOME "~/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

nvm -s use latest

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin ~/.ghcup/bin $PATH # ghcup-env

# opam configuration
source ~/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

status --is-interactive; and fishetch
