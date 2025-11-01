#!/bin/bash
set -e

echo "========================================"
echo "QIIME2 Amplicon 2025.10 - Lightning.ai"
echo "========================================"

# Set variables
export QIIME2_VERSION="2025.10"
ENV_NAME="qiime2-amplicon-${QIIME2_VERSION}"
CONDA_YML_URL="https://raw.githubusercontent.com/qiime2/distributions/refs/heads/dev/${QIIME2_VERSION}/amplicon/released/qiime2-amplicon-ubuntu-latest-conda.yml"

echo "Step 1: Install system dependencies..."
apt-get update -qq
apt-get install -y wget bzip2 ca-certificates curl git vim

echo "Step 2: Install Miniconda..."
if [ ! -d "/root/miniconda3" ]; then
    wget -q https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /tmp/miniconda.sh
    bash /tmp/miniconda.sh -b -p /root/miniconda3
    rm /tmp/miniconda.sh
fi

echo "Step 3: Initialize conda..."
eval "$(/root/miniconda3/bin/conda shell.bash hook)"
conda init bash

echo "Step 4: Download QIIME2 environment file..."
wget -q "${CONDA_YML_URL}" -O /tmp/qiime2-env.yml

echo "Step 5: Create QIIME2 environment..."
echo "This may take 15-20 minutes..."
conda env create -n "${ENV_NAME}" --file /tmp/qiime2-env.yml

echo "Step 6: Clean up..."
rm /tmp/qiime2-env.yml
conda clean -afy

echo "Step 7: Configure auto-activation..."
cat >> /root/.bashrc <<EOL

# Auto-activate QIIME2 environment
if [ -f "/root/miniconda3/etc/profile.d/conda.sh" ]; then
    . "/root/miniconda3/etc/profile.d/conda.sh"
    conda activate ${ENV_NAME}
fi
EOL

echo ""
echo "========================================"
echo "Installation complete! 🎉"
echo "========================================"
echo ""
echo "Run: source /root/.bashrc"
echo "Then: qiime --version"
