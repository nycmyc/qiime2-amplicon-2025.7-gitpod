FROM gitpod/workspace-full

USER gitpod

# Install system dependencies
RUN sudo apt-get update && sudo apt-get install -y \
    wget \
    bzip2 \
    ca-certificates \
    curl \
    bash-completion \
    && sudo apt-get clean \
    && sudo rm -rf /var/lib/apt/lists/*

# Set up the conda environment
ENV CONDA_DIR /workspace/miniconda3
ENV PATH $CONDA_DIR/bin:$PATH
