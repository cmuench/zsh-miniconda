#!/usr/bin/env zsh
# shellcheck disable=SC1090

# load conda
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

# completions
if [ ! -d ./conda-zsh-completion ]; then
    git clone https://github.com/esc/conda-zsh-completion
fi

current_dir="${full_path:a:h}"
fpath+=$current_dir/conda-zsh-completion
compinit conda
