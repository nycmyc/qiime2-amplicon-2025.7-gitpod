# Use Microsoft's Ubuntu-based devcontainer base image
FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive
ENV CONDA_DIR=/opt/conda
ENV PATH=${CONDA_DIR}/bin:${PATH}
ENV QIIME2_VERSION=2025.10

# Install system dependencies
RUN apt-get update && apt-get install -y \
    wget \
    bzip2 \
    ca-certificates \
    git \
    vim \
    nano \
    curl \
    htop \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install Miniconda
RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /tmp/miniconda.sh && \
    bash /tmp/miniconda.sh -b -p ${CONDA_DIR} && \
    rm /tmp/miniconda.sh && \
    ${CONDA_DIR}/bin/conda clean -afy

# Initialize conda for bash
RUN ${CONDA_DIR}/bin/conda init bash

# Copy setup script
COPY .devcontainer/setup.sh /tmp/setup.sh
RUN chmod +x /tmp/setup.sh

# Run QIIME2 installation as vscode user
USER vscode
RUN bash /tmp/setup.sh

# Configure bash to auto-activate QIIME2 environment
RUN echo "" >> ~/.bashrc && \
    echo "# Auto-activate QIIME2 environment" >> ~/.bashrc && \
    echo "if [ -f ${CONDA_DIR}/etc/profile.d/conda.sh ]; then" >> ~/.bashrc && \
    echo "    . ${CONDA_DIR}/etc/profile.d/conda.sh" >> ~/.bashrc && \
    echo "    conda activate qiime2-amplicon-${QIIME2_VERSION}" >> ~/.bashrc && \
    echo "fi" >> ~/.bashrc

# Switch back to root for final setup
USER root

# Set working directory
WORKDIR /workspace

# Switch back to vscode user
USER vscode
