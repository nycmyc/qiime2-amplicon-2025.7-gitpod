# QIIME2 Amplicon 2025.10 on Gitpod (Legacy) 🧬

<!-- Universal Badges -->
[![QIIME2 Version](https://img.shields.io/badge/QIIME2-2025.10-green.svg)](https://docs.qiime2.org/2025.10/)
[![Status](https://img.shields.io/badge/Status-Legacy%20/%20Deprecated-orange.svg)](#deprecation-notice)
[![Final Update](https://img.shields.io/badge/Final%20Update-2025.10-red.svg)](#deprecation-notice)
[![Documentation](https://img.shields.io/badge/Docs-Complete-blue.svg)](https://docs.qiime2.org/2025.10/)

<!-- Platform-Specific Badges -->
[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod)
[![Platform](https://img.shields.io/badge/Platform-Gitpod%20Classic-lightgrey.svg)](https://www.gitpod.io/)
[![Gitpod](https://img.shields.io/badge/Gitpod-DEPRECATED-red.svg)](#deprecation-notice)

<!-- Resource Badges -->
[![CPU](https://img.shields.io/badge/CPU-4--8%20cores-informational.svg)](#resource-options)
[![RAM](https://img.shields.io/badge/RAM-8--16%20GB-informational.svg)](#resource-options)
[![Storage](https://img.shields.io/badge/Storage-30--50%20GB-informational.svg)](#resource-options)

<!-- Migration Badges -->
[![Migrate Now](https://img.shields.io/badge/⚠%20Migrate-Now!-critical.svg)](#migration-options)
[![GitHub Codespaces](https://img.shields.io/badge/Best%20Alternative-GitHub%20Codespaces-success.svg)](#migration-options)

---

## ⚠️ DEPRECATION NOTICE

> **🚨 IMPORTANT**: Gitpod Classic is being sunset and will be discontinued. This is the **final update** (2025.10) for this Gitpod configuration.
>
> **Action Required**: Please migrate to one of the alternative platforms listed below. All migration branches are ready with 2025.10 configurations.
>
> **Timeline**: Gitpod Classic end-of-life date to be announced by Gitpod.

---

A ready-to-use QIIME2 Amplicon Distribution (2025.10) command-line environment on Gitpod Classic for microbiome analysis.

> **📌 Legacy Support**: This README provides instructions for the final Gitpod Classic update. For new projects, please use one of the migration branches below.

---

## 🔄 Migration Options

**Recommended alternatives to Gitpod Classic:**

| Platform | Branch | RAM | Storage | Cost | Best For |
|----------|--------|-----|---------|------|----------|
| **[GitHub Codespaces](https://github.com/codespaces)** | [claude/github-codespaces-migration-011CUhtcsjFAvbCA5anHdTqN](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/github-codespaces-migration-011CUhtcsjFAvbCA5anHdTqN) | 8-32 GB | 32-64 GB | 60 hrs/mo free | **Direct replacement** |
| **[Oracle Cloud](https://www.oracle.com/cloud/free/)** | [claude/oracle-cloud-migration-011CUhtcsjFAvbCA5anHdTqN](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/oracle-cloud-migration-011CUhtcsjFAvbCA5anHdTqN) | 24 GB | 200 GB | Free forever | **Most resources** |
| **[Google Colab](https://colab.research.google.com/)** | [claude/colab-migration-011CUhtcsjFAvbCA5anHdTqN](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/colab-migration-011CUhtcsjFAvbCA5anHdTqN) | 12 GB | ~100 GB | Free | **Notebooks + GPU** |
| **[Binder](https://mybinder.org/)** | [claude/binder-migration-011CUhtcsjFAvbCA5anHdTqN](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/binder-migration-011CUhtcsjFAvbCA5anHdTqN) | 2 GB | ~10 GB | Free | **Quick demos** |
| **[Lightning.ai](https://lightning.ai)** | [claude/lightning-ai-migration-011CUhtcsjFAvbCA5anHdTqN](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/lightning-ai-migration-011CUhtcsjFAvbCA5anHdTqN) | 8-192 GB | 50-500 GB | Free tier + paid | **GPU workloads** |

### Quick Migration

```bash
# Clone the repository
git clone https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod.git
cd qiime2-amplicon-2025.7-gitpod

# Switch to your chosen platform branch
git checkout claude/github-codespaces-migration-011CUhtcsjFAvbCA5anHdTqN  # Recommended
# Or:
git checkout claude/oracle-cloud-migration-011CUhtcsjFAvbCA5anHdTqN
git checkout claude/colab-migration-011CUhtcsjFAvbCA5anHdTqN
git checkout claude/binder-migration-011CUhtcsjFAvbCA5anHdTqN
git checkout claude/lightning-ai-migration-011CUhtcsjFAvbCA5anHdTqN
```

See **[Migration Tools](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/migration-tools-011CUhtcsjFAvbCA5anHdTqN)** for detailed migration guides.

---

## 🚀 Quick Start (Legacy Gitpod Classic)

> ⚠️ **For existing users only**. New users should use one of the migration branches above.

1. Click the "Open in Gitpod" button above
2. Choose your workspace size:
   - **Standard** (4 cores, 8GB RAM) - Good for tutorials and small datasets
   - **Large** (8 cores, 16GB RAM) - Better for real analyses and larger datasets
3. Wait for the environment to set up (~10 minutes on first run, faster on subsequent runs)
4. QIIME2 2025.10 will be automatically activated and ready to use!

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

### Gitpod Environment

- **Miniconda3** package manager
- **Python 3.9+** with scientific libraries
- **VS Code** with Python extensions
- **Git** integration
- **Port forwarding** for visualizations (8080)

---

## ✅ Features

- ✨ **Auto-activation**: QIIME2 environment activates on terminal start
- 💾 **Persistent storage**: Conda installation in `/workspace/miniconda3`
- 🔄 **Retry logic**: Reliable setup with automatic retries
- 🎯 **Proven configuration**: Based on working 2025.7 setup
- 📊 **Port 8080**: Configured for QIIME2 visualizations
- 🖥️ **VS Code IDE**: Full-featured browser-based editor

---

## 🧪 Verification

Once setup is complete, verify your installation:

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
# Should be in: /workspace/miniconda3/envs/qiime2-amplicon-2025.10/bin/python
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

---

## 📊 Viewing Visualizations

QIIME2 visualizations (`.qzv` files) can be viewed:

### Option 1: In Gitpod

```bash
qiime tools view demux.qzv
```
- Opens on port 8080 (automatically forwarded)
- Gitpod will show "Open Preview" notification
- Click to view in browser

### Option 2: Download and Upload to QIIME2 View

```bash
# Download from Gitpod
# Right-click file in file explorer → Download
```

Then upload to [https://view.qiime2.org](https://view.qiime2.org)

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

### Workspace Persistence

The conda installation is stored in `/workspace/miniconda3` which persists across workspace restarts, making subsequent launches much faster (5-10 min vs 10-15 min initial).

### Resource Options

Gitpod free tier offers two workspace sizes:

| Workspace Size | CPU Cores | RAM | Storage | Best For |
|---------------|-----------|-----|---------|----------|
| **Standard** | Up to 4 | 8GB | 30GB | Tutorials, small datasets (<1GB) |
| **Large** | Up to 8 | 16GB | 50GB | Research, larger datasets (1-10GB) |

**For optimal performance:**
- **Small datasets (<1GB)**: Standard workspace is sufficient
- **Medium datasets (1-5GB)**: Use Large workspace
- **Large datasets (>5GB)**: Use Large workspace with resource management:
  - Limit threads: `--p-n-threads 4`
  - Consider subsampling: `--p-sampling-depth 1000`
  - Process in batches if needed
- **Very large datasets**: Migrate to Oracle Cloud (24GB free) or GitHub Codespaces

### Common Issues

**Command not found**:
```bash
conda activate qiime2-amplicon-2025.10
```

**Port 8080 already in use**:
```bash
lsof -ti:8080 | xargs kill -9
```

**Out of memory**:
```bash
# For Standard workspace (8GB RAM)
--p-n-threads 2
--p-sampling-depth 1000

# For Large workspace (16GB RAM)
--p-n-threads 4
--p-sampling-depth 5000
```

### Monitoring Resources

```bash
# Check available memory
free -h

# Monitor CPU and memory in real-time
htop

# Check disk usage
df -h

# Monitor specific QIIME2 process
/usr/bin/time -v qiime dada2 denoise-single ...
```

---

## 🏗️ Configuration Details

- **Base Image**: `gitpod/workspace-full` - Ubuntu with development tools
- **Conda Path**: `/workspace/miniconda3` - Persists across sessions
- **Environment**: `qiime2-amplicon-2025.10` - Official QIIME2 distribution
- **Installation Source**: https://raw.githubusercontent.com/qiime2/distributions/refs/heads/dev/2025.10/amplicon/released/qiime2-amplicon-ubuntu-latest-conda.yml

---

## 📝 Changelog

### Version 2025.10 (November 2024) - FINAL GITPOD UPDATE

- **Upgraded** from QIIME2 2025.7 to 2025.10
- **Updated** all documentation links to 2025.10
- **Updated** all tutorial data URLs to 2025.10 versions
- **Added** deprecation notice for Gitpod Classic
- **Added** comprehensive migration options
- **Added** links to all migration branches
- **Enhanced** documentation for final Gitpod update
- **Note**: This is the LAST update for Gitpod Classic

See **[CHANGELOG.md](CHANGELOG.md)** for complete version history.

---

## 🔄 Why Migrate?

### Gitpod Classic Limitations

- Being discontinued by Gitpod
- Limited free tier hours
- Resource constraints (max 16GB RAM)
- No guaranteed long-term support

### Migration Benefits

Different platforms offer different advantages:

| Advantage | Best Platform |
|-----------|--------------|
| **Most Free Resources** | Oracle Cloud (24GB RAM, free forever) |
| **Best Gitpod Replacement** | GitHub Codespaces (similar interface, 60 hrs/mo free) |
| **GPU Support** | Google Colab (T4 GPU free) or Lightning.ai (T4-A100 paid) |
| **Jupyter Notebooks** | Google Colab or Binder |
| **Quick Demos** | Binder (zero setup) |
| **Scalable Resources** | Lightning.ai (up to 192GB RAM, 96 cores) |

See **[Platform Comparison](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/blob/claude/migration-tools-011CUhtcsjFAvbCA5anHdTqN/PLATFORM_COMPARISON.md)** for detailed analysis.

---

## 🆘 Need Help?

- 💬 [QIIME2 Forum](https://forum.qiime2.org/) - Community support
- 📖 [QIIME2 Documentation](https://docs.qiime2.org/2025.10/) - Official docs
- 🐛 [GitHub Issues](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/issues) - Report problems
- 📊 [Platform Comparison](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/blob/claude/migration-tools-011CUhtcsjFAvbCA5anHdTqN/PLATFORM_COMPARISON.md) - Compare platforms
- 📋 [Quick Reference](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/blob/claude/migration-tools-011CUhtcsjFAvbCA5anHdTqN/PLATFORM_QUICK_REFERENCE.md) - All platforms guide
- 🔀 [Migration Flowchart](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/blob/claude/migration-tools-011CUhtcsjFAvbCA5anHdTqN/MIGRATION_FLOWCHART.md) - Decision guide

---

## 📄 License

This Gitpod configuration is provided as-is for educational and research purposes. QIIME2 is licensed under the BSD 3-Clause License.

---

## 🔗 Migration Resources

- **[GitHub Codespaces Migration](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/github-codespaces-migration-011CUhtcsjFAvbCA5anHdTqN)** - Recommended replacement
- **[Oracle Cloud Migration](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/oracle-cloud-migration-011CUhtcsjFAvbCA5anHdTqN)** - Most free resources
- **[Google Colab Migration](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/colab-migration-011CUhtcsjFAvbCA5anHdTqN)** - Jupyter + GPU
- **[Binder Migration](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/binder-migration-011CUhtcsjFAvbCA5anHdTqN)** - Quick demos
- **[Lightning.ai Migration](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/lightning-ai-migration-011CUhtcsjFAvbCA5anHdTqN)** - GPU workloads
- **[Migration Tools](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/migration-tools-011CUhtcsjFAvbCA5anHdTqN)** - Comparison guides & decision tools

---

**Maintained by**: [@nycmyc](https://github.com/nycmyc)
**Repository**: [https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod)
**QIIME2 Version**: 2025.10 (Final Gitpod Update)
**Platform**: Gitpod Classic (Legacy / Deprecated)
**Status**: ⚠️ Legacy Support Only
**Last Updated**: November 2024

---

**⚠️ Please migrate to a supported platform** → See [Migration Options](#migration-options) above
