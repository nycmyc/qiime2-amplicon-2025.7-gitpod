# QIIME2 Amplicon 2025.10 Docker Image for Oracle Cloud
# Optimized for Oracle Cloud Free Tier ARM instances

FROM ubuntu:22.04

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive
ENV CONDA_DIR=/opt/conda
ENV PATH=${CONDA_DIR}/bin:${PATH}
ENV QIIME2_VERSION=2025.10
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

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
    build-essential \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install Miniconda
RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-$(uname -m).sh -O /tmp/miniconda.sh && \
    bash /tmp/miniconda.sh -b -p ${CONDA_DIR} && \
    rm /tmp/miniconda.sh && \
    ${CONDA_DIR}/bin/conda clean -afy

# Initialize conda
RUN ${CONDA_DIR}/bin/conda init bash

# Download and create QIIME2 environment
RUN wget --quiet \
    https://raw.githubusercontent.com/qiime2/distributions/refs/heads/dev/${QIIME2_VERSION}/amplicon/released/qiime2-amplicon-ubuntu-latest-conda.yml \
    -O /tmp/qiime2-environment.yml && \
    ${CONDA_DIR}/bin/conda env create -n qiime2-amplicon-${QIIME2_VERSION} --file /tmp/qiime2-environment.yml && \
    rm /tmp/qiime2-environment.yml && \
    ${CONDA_DIR}/bin/conda clean -afy

# Configure shell to auto-activate QIIME2
RUN echo "" >> /root/.bashrc && \
    echo "# Auto-activate QIIME2 environment" >> /root/.bashrc && \
    echo "if [ -f ${CONDA_DIR}/etc/profile.d/conda.sh ]; then" >> /root/.bashrc && \
    echo "    . ${CONDA_DIR}/etc/profile.d/conda.sh" >> /root/.bashrc && \
    echo "    conda activate qiime2-amplicon-${QIIME2_VERSION}" >> /root/.bashrc && \
    echo "fi" >> /root/.bashrc

# Create working directory
RUN mkdir -p /data
WORKDIR /data

# Expose port for QIIME2 viewer
EXPOSE 8080

# Set default command
CMD ["/bin/bash", "-l"]

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
    CMD bash -c "source ${CONDA_DIR}/etc/profile.d/conda.sh && conda activate qiime2-amplicon-${QIIME2_VERSION} && qiime --version || exit 1"

# Labels
LABEL maintainer="QIIME2 Community"
LABEL version="${QIIME2_VERSION}"
LABEL description="QIIME2 Amplicon ${QIIME2_VERSION} for Oracle Cloud Free Tier"
LABEL org.opencontainers.image.source="https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod"
