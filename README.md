# QIIME2 Amplicon 2025.10 on GitHub Codespaces 🧬

<!-- Universal Badges -->
[![QIIME2 Version](https://img.shields.io/badge/QIIME2-2025.10-green.svg)](https://docs.qiime2.org/2025.10/)
[![Status](https://img.shields.io/badge/Status-Production%20Ready-brightgreen.svg)](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/blob/claude/migration-tools-011CUhtcsjFAvbCA5anHdTqN/TEST_RESULTS.md)
[![Tested](https://img.shields.io/badge/Tested-Passing-success.svg)](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/blob/claude/migration-tools-011CUhtcsjFAvbCA5anHdTqN/TEST_RESULTS.md)
[![Documentation](https://img.shields.io/badge/Docs-Complete-blue.svg)](https://docs.qiime2.org/2025.10/)

<!-- Platform-Specific Badges -->
[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new?repo=nycmyc/qiime2-amplicon-2025.7-gitpod&ref=claude/github-codespaces-migration-011CUhtcsjFAvbCA5anHdTqN)
[![Platform](https://img.shields.io/badge/Platform-GitHub%20Codespaces-blue.svg)](https://github.com/features/codespaces)
[![Container](https://img.shields.io/badge/Container-devcontainer-blue.svg)](.devcontainer/devcontainer.json)
[![Setup Time](https://img.shields.io/badge/Setup%20Time-15--20%20min-yellow.svg)](#quick-start)

<!-- Resource Badges -->
[![CPU](https://img.shields.io/badge/CPU-2--8%20cores-informational.svg)](#codespace-resources)
[![RAM](https://img.shields.io/badge/RAM-8--32%20GB-informational.svg)](#codespace-resources)
[![Storage](https://img.shields.io/badge/Storage-32--64%20GB-informational.svg)](#codespace-resources)

<!-- Feature Badges -->
[![VS Code](https://img.shields.io/badge/IDE-VS%20Code-007ACC.svg)](https://code.visualstudio.com/)
[![Port Forwarding](https://img.shields.io/badge/Port-8080-orange.svg)](#viewing-visualizations)
[![Auto Activation](https://img.shields.io/badge/Auto%20Activation-Yes-success.svg)](#features)

---

A ready-to-use QIIME2 Amplicon Distribution (2025.10) environment on GitHub Codespaces for microbiome analysis.

> **✨ Best Gitpod Replacement**: Full VS Code experience, persistent storage, seamless GitHub integration

---

## 🚀 Quick Start

### Option 1: One-Click Launch

Click the badge below to create a new Codespace:

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new?repo=nycmyc/qiime2-amplicon-2025.7-gitpod&ref=claude/github-codespaces-migration-011CUhtcsjFAvbCA5anHdTqN)

### Option 2: Manual Creation

1. Go to [this repository](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod)
2. Click **Code** → **Codespaces** → **Create codespace on claude/github-codespaces-migration-011CUhtcsjFAvbCA5anHdTqN**
3. Select machine type (2-core recommended for most work)
4. Wait 15-20 minutes for initial setup
5. QIIME2 2025.10 auto-activates in terminal!

### First Steps After Launch

```bash
# Verify installation
qiime --version
# Output: q2cli version 2025.10.x

# Check system info
qiime info

# List available plugins
qiime --help
```

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

### Development Environment

- **VS Code** in browser with full IDE features
- **Python 3.9+** with scientific libraries
- **Miniconda3** package manager
- **Git** with GitHub integration
- **Port forwarding** for visualizations (8080)

---

## ✅ Features

- ✨ **Auto-activation**: QIIME2 environment activates on terminal start
- 💾 **Persistent storage**: Conda installation persists across rebuilds
- 🎯 **Official distribution**: Based on QIIME2 2025.10 conda environment
- 📊 **Port 8080 forwarding**: View `.qzv` files in browser
- 🔄 **Fast rebuilds**: Initial setup 15-20 min, rebuilds 5-10 min
- 🔗 **GitHub integration**: Version control built-in
- 👥 **Collaboration**: Share Codespaces with team
- 🖥️ **VS Code**: Full IDE with extensions

---

## 🧪 Verification

Once your Codespace is ready, verify the installation:

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
# Should be in: /opt/conda/envs/qiime2-amplicon-2025.10/bin/python
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

# View visualization (opens on port 8080)
qiime tools view demux.qzv
```

### Denoising with DADA2

```bash
# Denoise sequences
qiime dada2 denoise-single \
  --i-demultiplexed-seqs demux.qza \
  --p-trim-left 0 \
  --p-trunc-len 120 \
  --p-n-threads 2 \
  --o-representative-sequences rep-seqs.qza \
  --o-table table.qza \
  --o-denoising-stats stats.qza

# Summarize feature table
qiime feature-table summarize \
  --i-table table.qza \
  --o-visualization table.qzv \
  --m-sample-metadata-file sample-metadata.tsv

# View results
qiime tools view table.qzv
```

---

## 📊 Viewing Visualizations

QIIME2 visualizations (`.qzv` files) can be viewed in multiple ways:

### Option 1: In Codespace (Recommended)
```bash
qiime tools view demux.qzv
```
- Opens on port 8080 (automatically forwarded)
- VS Code will show "Open in Browser" notification
- Click to view in your browser

### Option 2: Download and Upload to QIIME2 View
```bash
# Download from Codespace
# Right-click file in VS Code Explorer → Download
```
Then upload to [https://view.qiime2.org](https://view.qiime2.org)

### Option 3: Export Data
```bash
# Export visualization data for custom analysis
qiime tools export \
  --input-path demux.qzv \
  --output-path exported-demux/
```

---

## 🔧 Codespace Resources

### Available Machine Types

| Machine Type | CPU Cores | RAM | Storage | Best For |
|-------------|-----------|-----|---------|----------|
| **2-core** | 2 | 8GB | 32GB | Tutorials, small datasets (<1GB) |
| **4-core** | 4 | 16GB | 32GB | Medium datasets (1-10GB) |
| **8-core** | 8 | 32GB | 64GB | Large datasets (>10GB) |

### Recommended Configurations

**Small datasets (<1GB)**
- Machine: 2-core
- Threads: `--p-n-threads 2`
- Sufficient for tutorials

**Medium datasets (1-10GB)**
- Machine: 4-core
- Threads: `--p-n-threads 4`
- Recommended for research

**Large datasets (>10GB)**
- Machine: 8-core
- Threads: `--p-n-threads 8`
- For production analyses

### Free Tier Limits

- **60 hours/month** of Codespace usage (free tier)
- **15 GB-months** of storage (free tier)
- Usage is calculated per minute
- Stopped Codespaces don't count toward usage

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

## 🔧 Troubleshooting

### Environment Not Activated

If QIIME2 doesn't activate automatically:

```bash
source ~/.bashrc
conda activate qiime2-amplicon-2025.10
```

### Command Not Found

```bash
# Check if environment is active
conda env list

# Manually activate
conda activate qiime2-amplicon-2025.10

# Verify qiime is available
which qiime
```

### Port 8080 Already in Use

```bash
# Kill existing process
lsof -ti:8080 | xargs kill -9

# Or use different port
qiime tools view file.qzv --port 8081
```

### Out of Memory

```bash
# Reduce thread count
--p-n-threads 1

# Reduce sampling depth
--p-sampling-depth 500

# Or upgrade to larger machine type
```

### Slow Installation

First-time setup takes 15-20 minutes - this is normal for QIIME2's large environment. Subsequent rebuilds are much faster (5-10 min) due to layer caching.

### Monitoring Resources

```bash
# Check available memory
free -h

# Monitor CPU and memory in real-time
htop

# Check disk usage
df -h

# Monitor specific process
/usr/bin/time -v qiime dada2 denoise-single ...
```

---

## 🏗️ Configuration Details

### Project Structure

```
.devcontainer/
├── devcontainer.json    # VS Code configuration
├── Dockerfile           # Container image
├── setup.sh            # QIIME2 installation
└── postCreateCommand.sh # Post-setup tasks
```

### Environment Details

- **Base Image**: `mcr.microsoft.com/devcontainers/base:ubuntu`
- **Conda Path**: `/opt/conda`
- **Environment Name**: `qiime2-amplicon-2025.10`
- **Python Path**: `/opt/conda/envs/qiime2-amplicon-2025.10/bin/python`
- **Installation Source**: https://raw.githubusercontent.com/qiime2/distributions/refs/heads/dev/2025.10/amplicon/released/qiime2-amplicon-ubuntu-latest-conda.yml

### Customization

Edit `.devcontainer/devcontainer.json` to:
- Add VS Code extensions
- Change Python settings
- Configure additional ports
- Add environment variables

---

## 📝 Changelog

### Version 2025.10 (November 2024)

- **Upgraded** from QIIME2 2025.7 to 2025.10
- **Migrated** from Gitpod to GitHub Codespaces
- **Updated** all documentation links to 2025.10
- **Updated** all tutorial data URLs to 2025.10 versions
- **Added** .devcontainer configuration for Codespaces
- **Added** comprehensive badges and status indicators
- **Improved** automatic environment activation
- **Enhanced** documentation with troubleshooting guides

See [VERSION.md](VERSION.md) for detailed QIIME2 2025.10 features and changes.

---

## 🔄 Migration from Gitpod

Former Gitpod users: GitHub Codespaces provides a nearly identical experience!

**Similarities:**
- ✅ VS Code in browser
- ✅ Automatic environment setup
- ✅ Port forwarding
- ✅ Git integration
- ✅ Persistent storage

**Improvements:**
- ✅ Better free tier (60 hours/month)
- ✅ Tighter GitHub integration
- ✅ Faster rebuilds
- ✅ More machine sizes

**Migration Steps:**
1. Switch to this branch
2. Create a Codespace
3. Your workflow remains the same!

---

## 🆘 Need Help?

- 💬 [QIIME2 Forum](https://forum.qiime2.org/) - Community support
- 📖 [QIIME2 Documentation](https://docs.qiime2.org/2025.10/) - Official docs
- 🐛 [GitHub Issues](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/issues) - Report problems
- 📊 [Platform Comparison](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/blob/claude/migration-tools-011CUhtcsjFAvbCA5anHdTqN/PLATFORM_COMPARISON.md) - Compare platforms
- 📋 [Quick Reference](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/blob/claude/migration-tools-011CUhtcsjFAvbCA5anHdTqN/PLATFORM_QUICK_REFERENCE.md) - All platforms guide

---

## 📄 License

This GitHub Codespaces configuration is provided as-is for educational and research purposes. QIIME2 is licensed under the BSD 3-Clause License.

---

## 🔗 Related Resources

- **[Oracle Cloud Migration](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/oracle-cloud-migration-011CUhtcsjFAvbCA5anHdTqN)** - Forever free with 24GB RAM
- **[Google Colab Migration](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/colab-migration-011CUhtcsjFAvbCA5anHdTqN)** - Jupyter notebooks
- **[Binder Migration](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/binder-migration-011CUhtcsjFAvbCA5anHdTqN)** - Quick demos
- **[Lightning.ai Migration](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/lightning-ai-migration-011CUhtcsjFAvbCA5anHdTqN)** - GPU acceleration
- **[Migration Tools](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/migration-tools-011CUhtcsjFAvbCA5anHdTqN)** - Comparison guides & tools

---

**Maintained by**: [@nycmyc](https://github.com/nycmyc)  
**Repository**: [https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod)  
**QIIME2 Version**: 2025.10  
**Platform**: GitHub Codespaces  
**Status**: ✅ Production Ready  
**Last Updated**: November 2024

---

**Ready to start?** → [![Launch Codespace](https://img.shields.io/badge/Launch-Codespace-blue.svg?logo=github)](https://github.com/codespaces/new?repo=nycmyc/qiime2-amplicon-2025.7-gitpod&ref=claude/github-codespaces-migration-011CUhtcsjFAvbCA5anHdTqN)
