source /usr/share/cachyos-fish-config/cachyos-config.fish

bind \cf "bash tmux-sessionizer"

bind \cy accept-autosuggestion

# Add ~/.local/bin to PATH if not already present
if not contains $HOME/.local/bin $PATH
    set -gx PATH $HOME/.local/bin $PATH
end

if not set -q DEV_ENV_HOME
    set -gx DEV_ENV_HOME "$HOME/personal/cachydev/"
end

set -g fish_color_normal e0def4     # Text
set -g fish_color_command 9ccfd8    # Commands
set -g fish_color_quote f6c177      # Quotes
set -g fish_color_param e0def4      # Parameters
set -g fish_color_comment 6e6a86    # Comments
set -g fish_color_operator f6c177   # Operators like |
set -g fish_color_escape f6c177     # Escapes like \n
set -g fish_color_error eb6f92      # Errors

set -g fish_color_autosuggestion 6e6a86   # Autosuggestions (faint gray)
set -g fish_color_cwd 9ccfd8              # Current directory in prompt
set -g fish_color_host 9ccfd8
set -g fish_color_user e0def4
set -g fish_color_valid_path 31748f

