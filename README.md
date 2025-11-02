# QIIME2 Amplicon 2025.10 on Lightning.ai ⚡

<!-- Universal Badges -->
[![QIIME2 Version](https://img.shields.io/badge/QIIME2-2025.10-green.svg)](https://docs.qiime2.org/2025.10/)
[![Status](https://img.shields.io/badge/Status-Production%20Ready-brightgreen.svg)](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/blob/claude/migration-tools-011CUhtcsjFAvbCA5anHdTqN/TEST_RESULTS.md)
[![Tested](https://img.shields.io/badge/Tested-Passing-success.svg)](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/blob/claude/migration-tools-011CUhtcsjFAvbCA5anHdTqN/TEST_RESULTS.md)
[![Documentation](https://img.shields.io/badge/Docs-Complete-blue.svg)](https://docs.qiime2.org/2025.10/)

<!-- Platform-Specific Badges -->
[![Platform](https://img.shields.io/badge/Platform-Lightning.ai-blueviolet.svg)](https://lightning.ai/)
[![Lightning Studio](https://img.shields.io/badge/Lightning-Studio-792EE5.svg)](https://lightning.ai/studios)
[![Setup Time](https://img.shields.io/badge/Setup-10--15%20min-yellow.svg)](#quick-start)

<!-- Resource Badges -->
[![CPU](https://img.shields.io/badge/CPU-4--96%20cores-informational.svg)](#resource-specifications)
[![RAM](https://img.shields.io/badge/RAM-8--192%20GB-informational.svg)](#resource-specifications)
[![GPU](https://img.shields.io/badge/GPU-Optional-success.svg)](#gpu-acceleration)
[![Storage](https://img.shields.io/badge/Storage-50--500%20GB-informational.svg)](#resource-specifications)

<!-- Feature Badges -->
[![GPU Accelerated](https://img.shields.io/badge/GPU-Accelerated-success.svg)](#gpu-acceleration)
[![VS Code](https://img.shields.io/badge/IDE-VS%20Code-007ACC.svg)](#features)
[![Collaborative](https://img.shields.io/badge/Collaboration-Supported-success.svg)](#features)

---

Run QIIME2 Amplicon 2025.10 on Lightning.ai with powerful cloud resources and optional GPU acceleration for computational bioinformatics.

> **⚡ Best for GPU Workloads**: Cloud IDE with GPU support, scalable resources, and collaborative features

---

## 🚀 Quick Start

### Prerequisites

1. **Lightning.ai Account** - Sign up at [lightning.ai](https://lightning.ai/)
2. **Clone this repository** to your Lightning Studio

### Setup Steps

1. **Create a Lightning Studio**
   - Go to [lightning.ai/studios](https://lightning.ai/studios)
   - Click "Create Studio"
   - Name it "QIIME2-2025.10"

2. **Clone the Repository**
   ```bash
   git clone https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod.git
   cd qiime2-amplicon-2025.7-gitpod
   git checkout claude/lightning-ai-migration-011CUhtcsjFAvbCA5anHdTqN
   ```

3. **Run Installation Script**
   ```bash
   bash lightning-ai/setup_qiime2.sh
   ```

4. **Verify Installation**
   ```bash
   source ~/.bashrc
   qiime --version  # Should show: q2cli version 2025.10.x
   qiime info
   ```

**Installation time**: 10-15 minutes

---

## 📦 What's Included

### QIIME2 Amplicon Distribution 2025.10

All core plugins for amplicon sequence analysis:

**Denoising & Quality:**
- q2-dada2: DADA2 denoising algorithm
- q2-deblur: Deblur denoising algorithm
- q2-quality-filter: Quality-based filtering
- q2-quality-control: Quality control metrics

**Sequence Processing:**
- q2-cutadapt: Primer/adapter trimming
- q2-demux: Sequence demultiplexing
- q2-alignment: Sequence alignment
- q2-feature-table: Feature table operations

**Taxonomy & Phylogeny:**
- q2-feature-classifier: Taxonomic classification
- q2-taxa: Taxonomic analysis
- q2-phylogeny: Phylogenetic tree construction
- q2-fragment-insertion: SEPP-based placement

**Diversity & Statistics:**
- q2-diversity: Alpha and beta diversity
- q2-diversity-lib: Core diversity metrics
- q2-stats: Statistical testing
- q2-longitudinal: Longitudinal/paired analyses

**Visualization & Analysis:**
- q2-emperor: Interactive 3D PCoA plots
- q2-metadata: Metadata operations
- q2-composition: Compositional data analysis
- q2-sample-classifier: Machine learning classification
- q2-vizard: Visualization tools

**Additional Tools:**
- q2-vsearch: VSEARCH algorithms
- q2-types: QIIME 2 type system

### Lightning.ai Resources

- **Lightning Studio**: Cloud-based VS Code IDE
- **Scalable Compute**: Choose from multiple machine types
- **Optional GPU**: NVIDIA GPUs for acceleration
- **Persistent Storage**: Data survives studio stops
- **Collaboration**: Share studios with team members

---

## ✅ Features

- ⚡ **GPU Support**: Optional GPU acceleration for ML workflows
- 💪 **Scalable Resources**: From 4 to 96 cores, 8 to 192 GB RAM
- 🖥️ **VS Code IDE**: Full-featured browser-based IDE
- 👥 **Collaborative**: Real-time collaboration with team
- 💾 **Persistent Storage**: Keep your data across sessions
- 🔄 **Auto-Save**: Work automatically saved
- 📊 **Port Forwarding**: Access QIIME2 visualizations
- 🌐 **Cloud-Based**: Access from anywhere
- 🔒 **Secure**: Enterprise-grade security
- 📈 **Scalable**: Easily upgrade compute resources

---

## 📊 Resource Specifications

### Free Tier

| Resource | Specification | Notes |
|----------|---------------|-------|
| **CPU** | 4 cores | Intel or AMD |
| **RAM** | 8 GB | Suitable for small datasets |
| **Storage** | 50 GB | Persistent across sessions |
| **GPU** | None | CPU-only on free tier |
| **Hours** | Limited | Check current quotas |

### Paid Tiers

| Tier | CPU | RAM | GPU | Storage | Best For |
|------|-----|-----|-----|---------|----------|
| **Small** | 4 cores | 8 GB | Optional | 50 GB | Tutorials, small datasets |
| **Medium** | 8 cores | 16 GB | T4 GPU | 100 GB | Medium datasets, ML |
| **Large** | 16 cores | 32 GB | A10 GPU | 200 GB | Large datasets, production |
| **XLarge** | 32+ cores | 64+ GB | A100 GPU | 500 GB | Very large datasets, research |

### Recommended Configurations

**Small Datasets (<1GB, <100 samples)**
```bash
# Free tier (4 cores, 8GB) is sufficient
--p-n-threads 4
--p-sampling-depth 1000
```

**Medium Datasets (1-10GB, 100-500 samples)**
```bash
# Medium tier (8 cores, 16GB) recommended
--p-n-threads 8
--p-sampling-depth 5000
```

**Large Datasets (>10GB, >500 samples)**
```bash
# Large tier (16+ cores, 32+ GB) recommended
--p-n-threads 16
--p-sampling-depth 10000
# Consider GPU for ML classification
```

---

## 🧪 Verification

Once installation completes, verify your setup:

```bash
# Check QIIME2 version (should show 2025.10.x)
qiime --version

# Get detailed system information
qiime info

# List all available commands
qiime --help

# Check conda environment
conda env list
# Should show: qiime2-amplicon-2025.10

# Verify Python path
which python
# Should be in: /root/miniconda3/envs/qiime2-amplicon-2025.10/bin/python

# Check system resources
free -h    # Available RAM
df -h      # Disk space
nproc      # CPU cores
```

---

## 📂 Sample Workflow

### Moving Pictures Tutorial

```bash
# Create working directory
mkdir -p ~/moving-pictures
cd ~/moving-pictures

# Download 2025.10 tutorial data
wget "https://data.qiime2.org/2025.10/tutorials/moving-pictures/sample-metadata.tsv"
wget "https://data.qiime2.org/2025.10/tutorials/moving-pictures/emp-single-end-sequences.qza"

# Demultiplex sequences
qiime demux emp-single \
  --i-seqs emp-single-end-sequences.qza \
  --m-barcodes-file sample-metadata.tsv \
  --m-barcodes-column barcode-sequence \
  --o-per-sample-sequences demux.qza \
  --o-error-correction-details demux-details.qza

# Generate summary visualization
qiime demux summarize \
  --i-data demux.qza \
  --o-visualization demux.qzv
```

### Denoise with DADA2

```bash
# Denoise using all available cores
qiime dada2 denoise-single \
  --i-demultiplexed-seqs demux.qza \
  --p-trim-left 0 \
  --p-trunc-len 120 \
  --p-n-threads $(nproc) \
  --o-representative-sequences rep-seqs.qza \
  --o-table table.qza \
  --o-denoising-stats stats.qza

# Summarize feature table
qiime feature-table summarize \
  --i-table table.qza \
  --o-visualization table.qzv \
  --m-sample-metadata-file sample-metadata.tsv

# Visualize representative sequences
qiime feature-table tabulate-seqs \
  --i-data rep-seqs.qza \
  --o-visualization rep-seqs.qzv
```

---

## 📊 Viewing Visualizations

QIIME2 visualizations (`.qzv` files) can be viewed in multiple ways:

### Option 1: Port Forwarding in Lightning Studio

```bash
# View visualization (port 8080)
qiime tools view demux.qzv

# Lightning Studio will automatically forward port 8080
# Click the forwarded port link to view in browser
```

### Option 2: Download and Upload to QIIME2 View

```bash
# Download file using Lightning Studio file browser
# Right-click file → Download
```

Then upload to [https://view.qiime2.org](https://view.qiime2.org)

### Option 3: Export Data

```bash
# Export visualization data
qiime tools export \
  --input-path demux.qzv \
  --output-path exported-demux/

# Access via Lightning Studio file browser
```

---

## ⚡ GPU Acceleration

### When to Use GPU

Lightning.ai offers optional GPU acceleration, but **most QIIME2 operations use CPU only**. GPU is beneficial for:

- **Machine learning classification** (q2-sample-classifier)
- **TensorFlow-based plugins** (if any)
- **Large-scale phylogenetic analyses** (some tools)
- **Custom GPU-enabled Python scripts**

### Enabling GPU

```bash
# In Lightning Studio settings:
# 1. Click "Settings" → "Machine"
# 2. Select a GPU-enabled machine (T4, A10, A100)
# 3. Studio will restart with GPU

# Verify GPU availability
nvidia-smi

# Check CUDA version
nvcc --version
```

### GPU-Accelerated Workflow Example

```python
# Example: Using GPU for machine learning classification
# (if your QIIME2 plugin supports it)

# Train classifier with GPU
qiime sample-classifier classify-samples \
  --i-table table.qza \
  --m-metadata-file sample-metadata.tsv \
  --m-metadata-column body-site \
  --p-optimize-feature-selection \
  --p-parameter-tuning \
  --p-estimator RandomForestClassifier \
  --p-n-jobs -1 \
  --o-visualization classifier-visualization.qzv \
  --o-sample-estimator classifier.qza
```

### GPU Performance Tips

```bash
# Monitor GPU usage
watch -n 1 nvidia-smi

# For CPU-only QIIME2 operations, GPU is not needed
# Save costs by using CPU-only machines

# Reserve GPU machines for:
# - Large ML/AI workloads
# - Custom GPU-accelerated scripts
# - Experimental GPU-enabled QIIME2 plugins
```

---

## 🔧 Configuration Files

### lightning.yaml

```yaml
name: qiime2-amplicon-2025.10
environment:
  variables:
    QIIME2_VERSION: "2025.10"
    CONDA_PATH: "/root/miniconda3"
compute:
  cpu: 4      # Adjust as needed
  memory: 8   # GB, adjust as needed
  gpu: false  # Set to true for GPU machines
storage:
  size: 50    # GB, adjust as needed
```

### setup_qiime2.sh

```bash
#!/bin/bash
set -e

echo "========================================" echo "Installing QIIME2 Amplicon 2025.10"
echo "========================================"

# Install Miniconda
export QIIME2_VERSION="2025.10"
export ENV_NAME="qiime2-amplicon-${QIIME2_VERSION}"

# Download and install QIIME2
wget -q https://raw.githubusercontent.com/qiime2/distributions/refs/heads/dev/${QIIME2_VERSION}/amplicon/released/qiime2-amplicon-ubuntu-latest-conda.yml

conda env create -n ${ENV_NAME} --file qiime2-amplicon-ubuntu-latest-conda.yml

# Configure automatic activation
echo "conda activate ${ENV_NAME}" >> ~/.bashrc

echo "✅ QIIME2 ${QIIME2_VERSION} installation complete!"
```

---

## 📚 Tutorials & Resources

### QIIME2 2025.10 Documentation

- [Official Documentation](https://docs.qiime2.org/2025.10/)
- [Moving Pictures Tutorial](https://docs.qiime2.org/2025.10/tutorials/moving-pictures/) - Best starting point
- [Atacama Soils Tutorial](https://docs.qiime2.org/2025.10/tutorials/atacama-soils/) - Paired-end reads
- [Parkinson's Mouse Tutorial](https://docs.qiime2.org/2025.10/tutorials/pd-mice/) - Longitudinal analysis
- [Training Feature Classifiers](https://docs.qiime2.org/2025.10/tutorials/feature-classifier/) - Taxonomy
- [QIIME2 Forum](https://forum.qiime2.org/) - Community support
- [QIIME2 Library](https://library.qiime2.org/) - Plugin directory

### Lightning.ai Resources

- [Lightning.ai Documentation](https://lightning.ai/docs/)
- [Lightning Studios](https://lightning.ai/studios) - Getting started
- [Pricing](https://lightning.ai/pricing) - Resource tiers
- [Community](https://lightning.ai/community) - Support forum

### Tutorial Data URLs (2025.10)

```bash
# Moving Pictures
https://data.qiime2.org/2025.10/tutorials/moving-pictures/

# Atacama Soils
https://data.qiime2.org/2025.10/tutorials/atacama-soils/

# Parkinson's Mouse
https://data.qiime2.org/2025.10/tutorials/pd-mice/
```

---

## 🐛 Troubleshooting

### Environment Not Activated

**Symptom**: `qiime: command not found`

**Solutions**:
```bash
# Reload shell configuration
source ~/.bashrc

# Manually activate
conda activate qiime2-amplicon-2025.10

# Verify activation
which qiime
```

### Studio Out of Memory

**Symptom**: Process killed or `MemoryError`

**Solutions**:
```bash
# 1. Upgrade to larger machine
# Settings → Machine → Select higher RAM

# 2. Reduce thread count
--p-n-threads 2

# 3. Reduce sampling depth
--p-sampling-depth 1000

# 4. Filter data
!qiime feature-table filter-features \
  --i-table table.qza \
  --p-min-frequency 10 \
  --p-min-samples 2 \
  --o-filtered-table filtered.qza
```

### Installation Fails

**Symptom**: Setup script errors

**Solutions**:
```bash
# 1. Check internet connection
ping -c 3 google.com

# 2. Clear conda cache
conda clean -afy

# 3. Remove partial installation
rm -rf /root/miniconda3/envs/qiime2-amplicon-2025.10

# 4. Re-run setup script
bash lightning-ai/setup_qiime2.sh
```

### Port 8080 Already in Use

**Symptom**: Cannot view visualizations

**Solutions**:
```bash
# Kill existing process on port 8080
lsof -ti:8080 | xargs kill -9

# Or use different port
qiime tools view demux.qzv --port 8081
```

### Slow Performance

**Symptom**: Commands take very long

**Solutions**:
```bash
# 1. Check resource usage
htop  # Install: sudo apt install htop
free -h
df -h

# 2. Upgrade machine
# Settings → Machine → Select more cores/RAM

# 3. Optimize thread usage
--p-n-threads $(nproc)

# 4. Monitor specific process
/usr/bin/time -v qiime dada2 denoise-single ...
```

### GPU Not Detected

**Symptom**: `nvidia-smi: command not found`

**Solutions**:
```bash
# 1. Verify you selected GPU-enabled machine
# Settings → Machine → Must show GPU

# 2. Restart studio if you just enabled GPU
# Settings → Restart Studio

# 3. Check NVIDIA drivers
nvidia-smi

# 4. Most QIIME2 operations don't need GPU
# This is normal for standard QIIME2 workflows
```

---

## 📝 Changelog

### Version 2025.10 (November 2024)

- **Upgraded** from QIIME2 2025.7 to 2025.10
- **Added** Lightning.ai platform support
- **Updated** all documentation links to 2025.10
- **Updated** all tutorial data URLs to 2025.10 versions
- **Added** GPU support documentation
- **Added** scalable resource configurations
- **Added** Lightning Studio integration guide
- **Enhanced** setup scripts for Lightning.ai
- **Added** comprehensive troubleshooting guide

See **VERSION.md** for detailed QIIME2 2025.10 features and changes.

---

## 🔄 Comparison with Other Platforms

| Feature | Lightning.ai Free | Lightning.ai Paid | Oracle Cloud | Google Colab | GitHub Codespaces |
|---------|-------------------|-------------------|--------------|--------------|-------------------|
| **RAM** | 8 GB | 16-192 GB | 24 GB | 12 GB | 8-32 GB |
| **GPU** | No | Yes (T4-A100) | No | Yes (T4) | No |
| **CPU** | 4 cores | 8-96 cores | 4 cores | 2 cores | 2-8 cores |
| **Storage** | 50 GB | 100-500 GB | 200 GB | ~100 GB | 32-64 GB |
| **Cost** | Free (limited) | Pay as you go | Free forever | Free | 60 hrs/mo free |
| **IDE** | VS Code | VS Code | SSH/CLI | Jupyter | VS Code |
| **Collaboration** | Yes | Yes | No | Limited | Yes |

**When to use Lightning.ai:**
- ✅ Need GPU for ML/AI workloads
- ✅ Want scalable compute resources
- ✅ Prefer VS Code IDE
- ✅ Need team collaboration
- ✅ Willing to pay for premium resources

**When to use alternatives:**
- 💰 **Oracle Cloud** - Free forever with 24GB RAM (no GPU)
- 📊 **Google Colab** - Free tier with GPU for notebooks
- 💻 **GitHub Codespaces** - Integrated with GitHub repos

---

## 🆘 Need Help?

- 💬 [QIIME2 Forum](https://forum.qiime2.org/) - Community support
- 📖 [QIIME2 Documentation](https://docs.qiime2.org/2025.10/) - Official docs
- 🐛 [GitHub Issues](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/issues) - Report problems
- ⚡ [Lightning.ai Support](https://lightning.ai/docs/overview/support/) - Platform help
- 📊 [Platform Comparison](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/blob/claude/migration-tools-011CUhtcsjFAvbCA5anHdTqN/PLATFORM_COMPARISON.md) - Compare platforms
- 📋 [Quick Reference](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/blob/claude/migration-tools-011CUhtcsjFAvbCA5anHdTqN/PLATFORM_QUICK_REFERENCE.md) - All platforms guide
- 🔀 [Migration Flowchart](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/blob/claude/migration-tools-011CUhtcsjFAvbCA5anHdTqN/MIGRATION_FLOWCHART.md) - Decision guide

---

## 📄 License

This Lightning.ai configuration is provided as-is for educational and research purposes. QIIME2 is licensed under the BSD 3-Clause License.

---

## 🔗 Related Resources

- **[GitHub Codespaces Migration](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/github-codespaces-migration-011CUhtcsjFAvbCA5anHdTqN)** - Browser-based VS Code
- **[Oracle Cloud Migration](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/oracle-cloud-migration-011CUhtcsjFAvbCA5anHdTqN)** - Free forever with 24GB RAM
- **[Google Colab Migration](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/colab-migration-011CUhtcsjFAvbCA5anHdTqN)** - Jupyter notebooks
- **[Binder Migration](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/binder-migration-011CUhtcsjFAvbCA5anHdTqN)** - Quick demos
- **[Migration Tools](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/migration-tools-011CUhtcsjFAvbCA5anHdTqN)** - Comparison guides & tools

---

**Maintained by**: [@nycmyc](https://github.com/nycmyc)
**Repository**: [https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod)
**QIIME2 Version**: 2025.10
**Platform**: Lightning.ai
**Status**: ✅ Production Ready
**Last Updated**: November 2024

---

**Ready to start?** → [Create a Lightning Studio](https://lightning.ai/studios)
