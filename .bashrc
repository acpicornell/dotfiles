# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User-specific environment
if [[ "$PATH" != *"$HOME/.local/bin:$HOME/bin:"* ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
    export PATH
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User-specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi

# Alias
alias ll="ls -l"
alias la="ls -la"
alias nf-core="conda activate nf-core && nf-core"

# SLURM statistics
export SQUEUE_FORMAT="%.9i %.9P %.15j %.10u %.10f %.8T %.10M %.10l %.5C %.5D %.5c %R %m "

# Miniconda local install
# . /mnt/storage/acpicornell/bin/miniconda3/etc/profile.d/conda.sh  # commented out by conda initialize

# Mamba local install
# . /mnt/storage/acpicornell/bin/mambaforge/etc/profile.d/conda.sh  # commented out by conda initialize  # commented out by conda initialize

# Custom Mambaforge PATH
export PATH=$PATH:/mnt/storage/acpicornell/bin/mambaforge/bin

# nf-core download configuration
export NXF_SINGULARITY_CACHEDIR="/mnt/storage/acpicornell/singularity"

# Custom Java PATH
export PATH=$PATH:"/mnt/storage/acpicornell/bin/jdk_17/bin"

# Custom nextflow PATH
export PATH=$PATH:"/mnt/storage/acpicornell/bin/nextflow-23.04.1-all"

# SDKMAN configurations
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# CUDA
export PATH=/usr/local/cuda-12.3/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-12.3/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

# Add GSEA to PATH
export PATH=$PATH:/home/acpicornell/bin/GSEA

# Add refgenie PATH
export PATH=$PATH:"$HOME/.refgenie.yaml"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/mnt/storage/acpicornell/bin/mambaforge/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/mnt/storage/acpicornell/bin/mambaforge/etc/profile.d/conda.sh" ]; then
        . "/mnt/storage/acpicornell/bin/mambaforge/etc/profile.d/conda.sh"
    else
        export PATH="/mnt/storage/acpicornell/bin/mambaforge/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/mnt/storage/acpicornell/bin/mambaforge/etc/profile.d/mamba.sh" ]; then
    . "/mnt/storage/acpicornell/bin/mambaforge/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

