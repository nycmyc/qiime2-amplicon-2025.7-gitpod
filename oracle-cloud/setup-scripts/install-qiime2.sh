#!/bin/bash
set -e

echo "========================================"
echo "QIIME2 Amplicon 2025.10 Installation"
echo "Oracle Cloud Free Tier Setup"
echo "========================================"

# Set variables
QIIME2_VERSION="2025.10"
ENV_NAME="qiime2-amplicon-${QIIME2_VERSION}"
CONDA_YML_URL="https://raw.githubusercontent.com/qiime2/distributions/refs/heads/dev/${QIIME2_VERSION}/amplicon/released/qiime2-amplicon-ubuntu-latest-conda.yml"
MINICONDA_INSTALLER="Miniconda3-latest-Linux-x86_64.sh"

echo "Step 1: Update system packages..."
sudo apt-get update
sudo apt-get install -y wget bzip2 ca-certificates curl git vim htop

echo "Step 2: Download Miniconda..."
if [ ! -f "$HOME/$MINICONDA_INSTALLER" ]; then
    wget --quiet https://repo.anaconda.com/miniconda/$MINICONDA_INSTALLER -O $HOME/$MINICONDA_INSTALLER
fi

echo "Step 3: Install Miniconda..."
if [ ! -d "$HOME/miniconda3" ]; then
    bash $HOME/$MINICONDA_INSTALLER -b -p $HOME/miniconda3
    rm $HOME/$MINICONDA_INSTALLER
fi

echo "Step 4: Initialize conda..."
eval "$($HOME/miniconda3/bin/conda shell.bash hook)"
conda init bash

echo "Step 5: Download QIIME2 environment file..."
wget -q "${CONDA_YML_URL}" -O /tmp/qiime2-environment.yml

echo "Step 6: Create QIIME2 conda environment..."
echo "This may take 15-20 minutes on Oracle Cloud Free Tier..."
conda env create -n "${ENV_NAME}" --file /tmp/qiime2-environment.yml

echo "Step 7: Clean up..."
rm /tmp/qiime2-environment.yml
conda clean -afy

echo "Step 8: Configure auto-activation..."
if ! grep -q "qiime2-amplicon-${QIIME2_VERSION}" ~/.bashrc; then
    cat >> ~/.bashrc <<EOL

# Auto-activate QIIME2 environment
if [ -f "\$HOME/miniconda3/etc/profile.d/conda.sh" ]; then
    . "\$HOME/miniconda3/etc/profile.d/conda.sh"
    conda activate ${ENV_NAME}
fi
EOL
fi

echo ""
echo "========================================"
echo "Installation complete! 🎉"
echo "========================================"
echo ""
echo "Please run: source ~/.bashrc"
echo "Then verify with: qiime --version"
echo ""
