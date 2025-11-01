#!/bin/bash
set -e

echo "========================================"
echo "Post-create setup for QIIME2 2025.10"
echo "========================================"

# Source conda
source /opt/conda/etc/profile.d/conda.sh

# Activate QIIME2 environment
conda activate qiime2-amplicon-2025.10

# Verify installation
echo ""
echo "Verifying QIIME2 installation..."
qiime --version

echo ""
echo "QIIME2 plugins available:"
qiime --help | grep "^  q2-" | head -10
echo "  ... (and more)"

echo ""
echo "========================================"
echo "Environment is ready! 🧬"
echo "QIIME2 2025.10 is activated and ready to use."
echo "========================================"
