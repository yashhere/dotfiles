if [ "$TERM_PROGRAM" = iTerm.app ]
    set -gx COLORTERM truecolor
    test -e {$HOME}/.iterm2_shell_integration.fish; and source {$HOME}/.iterm2_shell_integration.fish
end
