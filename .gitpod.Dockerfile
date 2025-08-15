FROM gitpod/workspace-base:latest

# Install Miniconda
USER gitpod
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh && \
    bash ~/miniconda.sh -b -p $HOME/miniconda && \
    rm ~/miniconda.sh

# Add conda to PATH
ENV PATH="/home/gitpod/miniconda/bin:${PATH}"

# Initialize conda for bash
RUN conda init bash && \
    echo "conda activate base" >> ~/.bashrc

# Update conda
RUN conda update -n base -c defaults conda -y

# Copy environment file (will be added in next step)
COPY --chown=gitpod:gitpod environment.yml /tmp/environment.yml

# Create the QIIME2 environment
RUN conda env create -f /tmp/environment.yml && \
    conda clean -afy

# Set up automatic activation of qiime2 environment
RUN echo "conda activate qiime2-amplicon-2025.7" >> ~/.bashrc

# Install additional useful tools
RUN conda install -n base -c conda-forge -y \
    jupyter \
    jupyterlab \
    nodejs && \
    conda clean -afy
