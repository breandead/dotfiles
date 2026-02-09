set --universal pure_show_system_time true
set --universal pure_enable_single_line_prompt true

bind ctrl-d ''

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Created by `pipx` on 2025-10-20 14:00:53
set PATH $PATH /home/lenar/.local/bin

if type -q tmux
    if not test -n "$TMUX"
        tmux attach-session -t default; or tmux new-session -s default
    end
end

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/lenar/.ghcup/bin $PATH # ghcup-env