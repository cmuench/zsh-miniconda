#!/usr/bin/env zsh
# shellcheck disable=SC1090

# load conda
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

# completions

current_dir="$ZAP_PLUGIN_DIR/zsh-miniconda"

if [ ! -d "$current_dir/conda-zsh-completion" ]; then
    git clone https://github.com/esc/conda-zsh-completion "$current_dir/conda-zsh-completion"
fi

fpath+=$current_dir/conda-zsh-completion
compinit conda

