#!/bin/bash
set -e

echo "========================================"
echo "Installing QIIME2 Amplicon 2025.10"
echo "========================================"

# Set variables
QIIME2_VERSION="2025.10"
ENV_NAME="qiime2-amplicon-${QIIME2_VERSION}"
CONDA_YML_URL="https://raw.githubusercontent.com/qiime2/distributions/refs/heads/dev/${QIIME2_VERSION}/amplicon/released/qiime2-amplicon-ubuntu-latest-conda.yml"

echo "Downloading QIIME2 environment file..."
wget -q "${CONDA_YML_URL}" -O /tmp/qiime2-environment.yml

echo "Creating conda environment: ${ENV_NAME}"
echo "This may take 10-15 minutes..."
conda env create -n "${ENV_NAME}" --file /tmp/qiime2-environment.yml

echo "Cleaning up..."
rm /tmp/qiime2-environment.yml
conda clean -afy

echo "========================================"
echo "QIIME2 ${QIIME2_VERSION} installation complete!"
echo "========================================"
