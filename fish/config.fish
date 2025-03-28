# set bin paths
set -g PATH ~/Lab/bin $PATH
set -g PATH ~/development/flutter/bin $PATH
set -g PATH /opt/homebrew/bin $PATH
set -g PATH /usr/local/bin $PATH
# set -x DOCKER_HOST "unix:///var/folders/8z/crmqjtqx6jj3820n_lmtxrrh0000gr/T/podman/podman-machine-default-api.sock"

# Enable color for fish shell
set -g fish_color_normal normal
set -g fish_color_command green
set -g fish_color_keyword blue
set -g fish_color_quote cyan
set -g fish_color_redirection yellow
set -g fish_color_end red
set -g fish_color_error red
set -g fish_color_param purple
set -g fish_color_operator cyan
set -g fish_color_match --background=yellow --color=black

# Pyenv Init
set -Ux PYENV_ROOT $HOME/.pyenv
fish_add_path $PYENV_ROOT/bin
pyenv init - fish | source

# Goenv Init
eval "$(goenv init -)"

# Nodenv Init
status --is-interactive; and nodenv init - fish | source

# Added by `rbenv init` on Fri Feb 28 16:34:42 IST 2025
status --is-interactive; and rbenv init - --no-rehash fish | source

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jatin.katyal/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/jatin.katyal/Downloads/google-cloud-sdk/path.fish.inc'; end

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
set --export --prepend PATH "/Users/jatin.katyal/.rd/bin"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
