set --universal pure_show_system_time true
set --universal pure_enable_single_line_prompt true

bind ctrl-d ''

set PATH $PATH $HOME/.local/bin $HOME/opt/walnutCross/bin

if type -q tmux
    if not test -n "$TMUX"
        tmux new-session -s default
    end
end

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/lenar/.ghcup/bin $PATH # ghcup-env
