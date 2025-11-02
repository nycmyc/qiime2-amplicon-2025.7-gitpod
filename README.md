# QIIME2 Amplicon 2025.10 on Google Colab 🔬

<!-- Universal Badges -->
[![QIIME2 Version](https://img.shields.io/badge/QIIME2-2025.10-green.svg)](https://docs.qiime2.org/2025.10/)
[![Status](https://img.shields.io/badge/Status-Production%20Ready-brightgreen.svg)](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/blob/claude/migration-tools-011CUhtcsjFAvbCA5anHdTqN/TEST_RESULTS.md)
[![Tested](https://img.shields.io/badge/Tested-Passing-success.svg)](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/blob/claude/migration-tools-011CUhtcsjFAvbCA5anHdTqN/TEST_RESULTS.md)
[![Documentation](https://img.shields.io/badge/Docs-Complete-blue.svg)](https://docs.qiime2.org/2025.10/)

<!-- Platform-Specific Badges -->
[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/nycmyc/qiime2-amplicon-2025.7-gitpod/blob/claude/colab-migration-011CUhtcsjFAvbCA5anHdTqN/QIIME2_Setup.ipynb)
[![Platform](https://img.shields.io/badge/Platform-Google%20Colab-yellow.svg)](https://colab.research.google.com/)
[![Jupyter](https://img.shields.io/badge/Notebooks-Jupyter-F37626.svg)](https://jupyter.org/)
[![Setup Time](https://img.shields.io/badge/Setup-15--20%20min-yellow.svg)](#installation)

<!-- Resource Badges -->
[![RAM](https://img.shields.io/badge/RAM-12%20GB%20(Free)-success.svg)](#resource-specifications)
[![GPU](https://img.shields.io/badge/GPU-T4%20Available-success.svg)](#resource-specifications)
[![Storage](https://img.shields.io/badge/Storage-~100%20GB-informational.svg)](#resource-specifications)
[![Session](https://img.shields.io/badge/Session-12%20hours-informational.svg)](#resource-specifications)

<!-- Feature Badges -->
[![Google Drive](https://img.shields.io/badge/Integration-Google%20Drive-4285F4.svg)](#save-to-google-drive)
[![Free](https://img.shields.io/badge/Cost-Free-brightgreen.svg)](#quick-start)
[![Pro Available](https://img.shields.io/badge/Pro-25GB%20RAM-blue.svg)](#resource-specifications)

---

Run QIIME2 Amplicon 2025.10 in Google Colab - free cloud computing with up to 12GB RAM and optional GPU acceleration!

> **🔬 Best for Medium Datasets**: 12GB RAM, Google Drive integration, GPU support

---

## 🚀 Quick Start

### One-Click Launch

Click the badge below to open the setup notebook in Google Colab:

[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/nycmyc/qiime2-amplicon-2025.7-gitpod/blob/claude/colab-migration-011CUhtcsjFAvbCA5anHdTqN/QIIME2_Setup.ipynb)

### Getting Started (3 Simple Steps)

1. **Open the notebook** - Click the badge above
2. **Run the setup cell** - Takes 15-20 minutes (one-time per session)
3. **Start analyzing!** - QIIME2 2025.10 ready to use

**No account required** (Google account recommended for saving work)

### First Steps After Setup

```python
# In a Colab notebook cell, verify installation
!qiime --version  # Should show: q2cli version 2025.10.x

# Get system info
!qiime info

# Check available resources
!free -h  # RAM
!df -h    # Storage
!nvidia-smi  # GPU (if enabled)
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

### Colab Integration

- **QIIME2_Setup.ipynb**: Automated installation notebook
- **colab_setup.py**: Python utilities for Colab
- **Google Drive integration**: Save results to your Drive
- **File download helpers**: Easy result downloads
- **Progress indicators**: Track installation and analyses

---

## ✅ Colab Advantages

### vs. Other Free Platforms

| Feature | Colab | Binder | GitHub Codespaces |
|---------|-------|--------|-------------------|
| **RAM** | 12 GB | 2 GB | 8 GB (free tier) |
| **GPU** | Yes (T4) | No | No |
| **Storage** | ~100 GB | ~10 GB | 32 GB |
| **Session** | 12 hours | 12 hours | 60 hrs/month |
| **Drive Integration** | Yes | No | Limited |
| **Setup Time** | 15-20 min | 20-30 min | 15-20 min |

### Key Benefits

- 💪 **More RAM**: 12GB vs 2GB (Binder)
- 🚀 **GPU Available**: Optional T4 GPU (free tier)
- 💾 **Google Drive**: Save results to your Drive
- ⚡ **Fast Installation**: Optimized setup (~15 min)
- 📊 **Jupyter Native**: Full notebook experience
- 🔄 **Session Recovery**: Reconnect if disconnected
- 📱 **Mobile Friendly**: Works on tablets
- 🆓 **Completely Free**: No credit card needed

---

## 📝 Installation

The `QIIME2_Setup.ipynb` notebook handles installation automatically:

### What Gets Installed

```python
QIIME2_VERSION = "2025.10"

# Installation steps:
# 1. Miniconda3 (if not present)
# 2. QIIME2 2025.10 conda environment
# 3. All amplicon distribution plugins
# 4. Helper utilities (colab_setup.py)
```

### Installation Process

1. **Download Miniconda** (~5 min)
   - Downloads and installs conda package manager

2. **Create QIIME2 Environment** (~10 min)
   - Downloads from official QIIME2 2025.10 distribution
   - Installs all dependencies and plugins

3. **Configure Environment** (~1 min)
   - Sets up PATH
   - Verifies installation

**Total time**: 15-20 minutes (one-time per session)

### Manual Installation (Advanced)

```python
# If you want to install manually
!wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
!bash Miniconda3-latest-Linux-x86_64.sh -b -p /opt/conda
import os
os.environ['PATH'] = f"/opt/conda/bin:{os.environ['PATH']}"

# Create QIIME2 environment
!conda env create -n qiime2-amplicon-2025.10 \
  --file https://raw.githubusercontent.com/qiime2/distributions/refs/heads/dev/2025.10/amplicon/released/qiime2-amplicon-ubuntu-latest-conda.yml

# Activate
!conda activate qiime2-amplicon-2025.10
```

---

## 💻 Usage Examples

### Check Version and System Info

```python
# Check QIIME2 version
!qiime --version  # q2cli version 2025.10.x

# Get detailed system information
!qiime info

# List available plugins
!qiime --help

# Check system resources
!free -h  # Available RAM
!df -h    # Disk space
```

### Download Tutorial Data

```python
# Create working directory
!mkdir -p ~/qiime2-analysis && cd ~/qiime2-analysis

# Download Moving Pictures tutorial data (2025.10)
!wget "https://data.qiime2.org/2025.10/tutorials/moving-pictures/sample-metadata.tsv"
!wget "https://data.qiime2.org/2025.10/tutorials/moving-pictures/emp-single-end-sequences.qza"

# Download Atacama Soils data (2025.10)
!wget "https://data.qiime2.org/2025.10/tutorials/atacama-soils/sample-metadata.tsv"
```

### Run QIIME2 Analysis

```python
# Demultiplex sequences
!qiime demux emp-single \
  --i-seqs emp-single-end-sequences.qza \
  --m-barcodes-file sample-metadata.tsv \
  --m-barcodes-column barcode-sequence \
  --o-per-sample-sequences demux.qza \
  --o-error-correction-details demux-details.qza

# Generate summary visualization
!qiime demux summarize \
  --i-data demux.qza \
  --o-visualization demux.qzv

# Download visualization
from google.colab import files
files.download('demux.qzv')
```

Then upload to [https://view.qiime2.org](https://view.qiime2.org)

### Denoise with DADA2

```python
# Use 2 threads for Colab free tier
!qiime dada2 denoise-single \
  --i-demultiplexed-seqs demux.qza \
  --p-trim-left 0 \
  --p-trunc-len 120 \
  --p-n-threads 2 \
  --o-representative-sequences rep-seqs.qza \
  --o-table table.qza \
  --o-denoising-stats stats.qza

# Summarize results
!qiime feature-table summarize \
  --i-table table.qza \
  --o-visualization table.qzv \
  --m-sample-metadata-file sample-metadata.tsv

# Download results
files.download('table.qza')
files.download('table.qzv')
```

---

## 💾 Save to Google Drive

### Mount Google Drive

```python
# Mount your Google Drive
from google.colab import drive
drive.mount('/content/drive')

# Create results directory
!mkdir -p /content/drive/MyDrive/qiime2-results
```

### Save Results Automatically

```python
import shutil
import os

# Function to save all QIIME2 files
def save_to_drive(source_dir='.', drive_dir='/content/drive/MyDrive/qiime2-results'):
    """Save all .qza and .qzv files to Google Drive"""
    for file in os.listdir(source_dir):
        if file.endswith(('.qza', '.qzv')):
            src = os.path.join(source_dir, file)
            dst = os.path.join(drive_dir, file)
            shutil.copy2(src, dst)
            print(f"✅ Saved: {file}")

# Save all results
save_to_drive()
```

### Organize by Project

```python
import datetime

# Create project-specific folder
project_name = "moving_pictures"
timestamp = datetime.datetime.now().strftime("%Y%m%d_%H%M%S")
project_dir = f"/content/drive/MyDrive/qiime2-results/{project_name}_{timestamp}"

!mkdir -p {project_dir}
!cp *.qza *.qzv {project_dir}/

print(f"✅ Results saved to: {project_dir}")
```

---

## 🔧 Python Utilities

### Using colab_setup.py

```python
# Load helper functions
import colab_setup

# Check QIIME2 installation
colab_setup.check_version()
# Output: ✅ QIIME2 2025.10.x installed

# List all installed plugins
colab_setup.list_plugins()

# Download tutorial data
colab_setup.download_tutorial_data('moving-pictures')

# Quick system check
colab_setup.system_info()
```

### Custom Helper Functions

```python
def download_qiime2_file(file_path):
    """Download QIIME2 artifact or visualization"""
    from google.colab import files
    if os.path.exists(file_path):
        files.download(file_path)
        print(f"✅ Downloaded: {file_path}")
    else:
        print(f"❌ File not found: {file_path}")

def save_all_results():
    """Save all .qza and .qzv files to Drive"""
    import shutil
    results_dir = '/content/drive/MyDrive/qiime2-results'
    os.makedirs(results_dir, exist_ok=True)

    for file in os.listdir('.'):
        if file.endswith(('.qza', '.qzv')):
            shutil.copy2(file, results_dir)
            print(f"✅ Saved: {file}")
```

---

## 📊 Resource Specifications

### Free Tier (No Cost)

| Resource | Specification | Notes |
|----------|---------------|-------|
| **RAM** | Up to 12 GB | Enough for most analyses |
| **CPU** | 2 cores (Intel Xeon) | 2.3 GHz typical |
| **GPU** | NVIDIA T4 (16GB VRAM) | Optional, enable in Runtime menu |
| **Storage** | ~100 GB temporary | Cleared after session |
| **Runtime** | 12 hours max | Auto-disconnects after 90 min idle |
| **Sessions** | Unlimited | Free forever |

### Colab Pro ($9.99/month)

| Resource | Specification | Improvement |
|----------|---------------|-------------|
| **RAM** | Up to 25 GB | **2x more RAM** |
| **CPU** | 4+ cores | **2x more cores** |
| **GPU** | P100 or V100 | **Faster GPUs** |
| **Storage** | More persistent | **Better caching** |
| **Runtime** | 24 hours max | **2x longer** |
| **Priority** | Higher | **Faster connections** |

### Recommended Configurations

**Small Datasets (<1GB, <100 samples)**
```python
# Free tier is perfect
--p-n-threads 2
--p-sampling-depth 1000
```

**Medium Datasets (1-10GB, 100-500 samples)**
```python
# Free tier works well
--p-n-threads 2
--p-sampling-depth 5000
# Save intermediate results to Drive
```

**Large Datasets (>10GB, >500 samples)**
```python
# Consider Colab Pro for:
# - More RAM (25GB)
# - Longer sessions (24 hrs)
# - Faster GPUs

# Or use Oracle Cloud (24GB free)
```

---

## ⚡ Performance Tips

### 1. Enable GPU (Optional)

```python
# Runtime → Change runtime type → GPU

# Verify GPU
!nvidia-smi

# Note: Most QIIME2 operations don't use GPU
# GPU helps with TensorFlow-based plugins only
```

### 2. Optimize Thread Count

```python
# Free tier: 2 cores
!qiime dada2 denoise-single --p-n-threads 2

# Pro tier: Can use more
!qiime dada2 denoise-single --p-n-threads 4
```

### 3. Monitor Resources

```python
# Check RAM usage
!free -h

# Check disk space
!df -h

# Monitor in real-time
import psutil
print(f"RAM: {psutil.virtual_memory().percent}%")
print(f"Disk: {psutil.disk_usage('/').percent}%")
```

### 4. Save Work Frequently

```python
# Checkpoint every major step
!cp table.qza /content/drive/MyDrive/qiime2-results/
!cp rep-seqs.qza /content/drive/MyDrive/qiime2-results/

# Or use helper function
save_all_results()
```

### 5. Keep Session Alive

```python
# Run this cell periodically to prevent timeout
import time
from datetime import datetime

while True:
    print(f"⏰ Session active: {datetime.now().strftime('%H:%M:%S')}")
    time.sleep(300)  # Print every 5 minutes
```

### 6. Use Smaller Reference Databases

```python
# Download pre-trained classifier (smaller)
!wget "https://data.qiime2.org/2025.10/common/gg-13-8-99-515-806-nb-classifier.qza"

# Instead of training your own (memory intensive)
```

---

## 🧪 Complete Tutorial Workflow

Here's a complete Moving Pictures workflow for Colab:

```python
# ========================================
# 1. SETUP (Run once per session)
# ========================================
# Open and run: QIIME2_Setup.ipynb
# Wait ~15-20 minutes

# ========================================
# 2. MOUNT GOOGLE DRIVE
# ========================================
from google.colab import drive
drive.mount('/content/drive')

# Create project directory
!mkdir -p /content/drive/MyDrive/moving-pictures-2025.10
%cd /content/drive/MyDrive/moving-pictures-2025.10

# ========================================
# 3. DOWNLOAD DATA (2025.10)
# ========================================
!wget "https://data.qiime2.org/2025.10/tutorials/moving-pictures/sample-metadata.tsv"
!wget "https://data.qiime2.org/2025.10/tutorials/moving-pictures/emp-single-end-sequences.qza"

# ========================================
# 4. DEMULTIPLEX
# ========================================
!qiime demux emp-single \
  --i-seqs emp-single-end-sequences.qza \
  --m-barcodes-file sample-metadata.tsv \
  --m-barcodes-column barcode-sequence \
  --o-per-sample-sequences demux.qza \
  --o-error-correction-details demux-details.qza

# ========================================
# 5. VISUALIZE QUALITY
# ========================================
!qiime demux summarize \
  --i-data demux.qza \
  --o-visualization demux.qzv

# Download to view
from google.colab import files
files.download('demux.qzv')
# View at: https://view.qiime2.org

# ========================================
# 6. DENOISE WITH DADA2
# ========================================
!qiime dada2 denoise-single \
  --i-demultiplexed-seqs demux.qza \
  --p-trim-left 0 \
  --p-trunc-len 120 \
  --p-n-threads 2 \
  --o-representative-sequences rep-seqs.qza \
  --o-table table.qza \
  --o-denoising-stats stats.qza

# ========================================
# 7. GENERATE SUMMARIES
# ========================================
!qiime feature-table summarize \
  --i-table table.qza \
  --o-visualization table.qzv \
  --m-sample-metadata-file sample-metadata.tsv

!qiime feature-table tabulate-seqs \
  --i-data rep-seqs.qza \
  --o-visualization rep-seqs.qzv

# ========================================
# 8. DOWNLOAD RESULTS
# ========================================
files.download('table.qzv')
files.download('rep-seqs.qzv')
files.download('stats.qza')

print("✅ Workflow complete! Results in Google Drive and downloaded.")
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

### Google Colab Resources

- [Colab Documentation](https://colab.research.google.com/) - Official docs
- [Colab Pro](https://colab.research.google.com/signup) - Upgrade info
- [Keyboard Shortcuts](https://colab.research.google.com/notebooks/basic_features_overview.ipynb) - Productivity tips
- [External Data](https://colab.research.google.com/notebooks/io.ipynb) - Loading data guide

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

### Installation Fails

**Symptom**: Setup notebook throws errors

**Solutions**:
```python
# 1. Restart runtime
# Runtime → Restart runtime

# 2. Clear all outputs
# Edit → Clear all outputs

# 3. Run setup cell again

# 4. Check for error messages
!qiime --version
# If "command not found", re-run installation
```

### Out of Memory Errors

**Symptom**: `MemoryError` or `Killed` during analysis

**Solutions**:
```python
# 1. Reduce sampling depth
--p-sampling-depth 1000  # Instead of 5000

# 2. Filter aggressively
!qiime feature-table filter-features \
  --i-table table.qza \
  --p-min-frequency 10 \
  --p-min-samples 2 \
  --o-filtered-table filtered.qza

# 3. Use fewer threads
--p-n-threads 1

# 4. Process in batches
# Split large datasets into smaller chunks

# 5. Upgrade to Colab Pro (25GB RAM)
# Or use Oracle Cloud (24GB free)
```

### Session Timeout / Disconnected

**Symptom**: "Reconnecting..." or session ends

**Solutions**:
```python
# 1. Keep browser tab active
# Don't navigate away

# 2. Run keep-alive script
import time
while True:
    print(".", end="", flush=True)
    time.sleep(300)

# 3. Save to Drive frequently
!cp *.qza /content/drive/MyDrive/qiime2-results/

# 4. Upgrade to Colab Pro
# Longer sessions (24 hrs vs 12 hrs)
```

### Command Not Found

**Symptom**: `qiime: command not found`

**Solutions**:
```python
# 1. Verify setup ran successfully
!which qiime

# 2. Re-run setup cell
# Go back to QIIME2_Setup.ipynb

# 3. Check PATH
import os
print(os.environ['PATH'])

# 4. Manual activation
!source activate qiime2-amplicon-2025.10
!qiime --version
```

### Slow Download/Upload

**Symptom**: Files take too long to download

**Solutions**:
```python
# 1. Use Google Drive instead of files.download()
!cp results.qza /content/drive/MyDrive/

# 2. Compress before downloading
!tar -czf results.tar.gz *.qza *.qzv
from google.colab import files
files.download('results.tar.gz')

# 3. Export data instead of downloading .qzv
!qiime tools export \
  --input-path demux.qzv \
  --output-path exported/
```

### Visualization Won't Display

**Symptom**: `.qzv` files don't open

**Solutions**:
```python
# Option 1: Download and upload to view.qiime2.org
from google.colab import files
files.download('demux.qzv')
# Then go to: https://view.qiime2.org

# Option 2: Export data
!qiime tools export \
  --input-path demux.qzv \
  --output-path exported-viz/

# Option 3: View exported HTML
from IPython.display import IFrame
IFrame('exported-viz/index.html', width=800, height=600)
```

### Runtime Crashes

**Symptom**: "Your session crashed" message

**Solutions**:
```python
# 1. Restart runtime
# Runtime → Restart runtime

# 2. Reduce memory usage
# Use smaller datasets or sampling depths

# 3. Check for infinite loops
# Review your code for bugs

# 4. Upgrade to Colab Pro
# More stable with 25GB RAM
```

---

## 🔄 Session Management

### Check Session Status

```python
# Session uptime
!uptime

# Available RAM
!free -h

# Disk space
!df -h

# Full system info
!cat /proc/meminfo | grep MemTotal
!cat /proc/cpuinfo | grep "model name" | head -1
```

### Auto-Save Results

```python
import os
import shutil
from datetime import datetime

def auto_save():
    """Automatically save results every 30 minutes"""
    save_dir = '/content/drive/MyDrive/qiime2-auto-save'
    os.makedirs(save_dir, exist_ok=True)

    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    checkpoint_dir = f"{save_dir}/checkpoint_{timestamp}"
    os.makedirs(checkpoint_dir, exist_ok=True)

    # Save all QIIME2 files
    for file in os.listdir('.'):
        if file.endswith(('.qza', '.qzv')):
            shutil.copy2(file, checkpoint_dir)

    print(f"✅ Auto-saved to: {checkpoint_dir}")

# Run periodically
import time
while True:
    auto_save()
    time.sleep(1800)  # Every 30 minutes
```

---

## 📝 Changelog

### Version 2025.10 (November 2024)

- **Upgraded** from QIIME2 2025.7 to 2025.10
- **Added** Google Colab support with optimized setup
- **Updated** all documentation links to 2025.10
- **Updated** all tutorial data URLs to 2025.10 versions
- **Added** setup notebook (QIIME2_Setup.ipynb) with progress indicators
- **Added** Python utilities (colab_setup.py) for common tasks
- **Improved** installation speed with conda optimization
- **Added** Google Drive integration examples
- **Enhanced** file download/upload helpers
- **Added** comprehensive troubleshooting guide

See **CHANGELOG.md** for detailed version history.

---

## 🔄 Comparison with Other Platforms

| Feature | Colab Free | Colab Pro | Binder | Oracle Cloud | GitHub Codespaces |
|---------|-----------|-----------|--------|--------------|-------------------|
| **RAM** | 12 GB | 25 GB | 2 GB | 24 GB | 8-32 GB |
| **GPU** | Yes (T4) | Yes (P100/V100) | No | No | No |
| **Storage** | ~100 GB | ~100 GB | ~10 GB | 200 GB | 32-64 GB |
| **Session** | 12 hrs | 24 hrs | 12 hrs | Unlimited | Unlimited |
| **Cost** | Free | $9.99/mo | Free | Free | 60 hrs/mo free |
| **Setup** | 15 min | 15 min | 20-30 min | Manual | 15-20 min |

**When to use Google Colab:**
- ✅ Medium-sized datasets (1-10GB)
- ✅ Need GPU for ML tasks
- ✅ Want Google Drive integration
- ✅ Prefer Jupyter notebooks
- ✅ 12GB RAM sufficient

**When to upgrade:**
- 📊 **Colab Pro** - Larger datasets (>10GB), longer sessions
- ☁️ **Oracle Cloud** - Very large datasets, production work (24GB free)
- 💻 **GitHub Codespaces** - Development, VS Code interface

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

This Google Colab configuration is provided as-is for educational and research purposes. QIIME2 is licensed under the BSD 3-Clause License.

---

## 🔗 Related Resources

- **[GitHub Codespaces Migration](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/github-codespaces-migration-011CUhtcsjFAvbCA5anHdTqN)** - Browser-based VS Code
- **[Oracle Cloud Migration](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/oracle-cloud-migration-011CUhtcsjFAvbCA5anHdTqN)** - Free forever with 24GB RAM
- **[Binder Migration](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/binder-migration-011CUhtcsjFAvbCA5anHdTqN)** - Quick demos
- **[Lightning.ai Migration](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/lightning-ai-migration-011CUhtcsjFAvbCA5anHdTqN)** - GPU acceleration
- **[Migration Tools](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/migration-tools-011CUhtcsjFAvbCA5anHdTqN)** - Comparison guides & tools

---

**Maintained by**: [@nycmyc](https://github.com/nycmyc)
**Repository**: [https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod)
**QIIME2 Version**: 2025.10
**Platform**: Google Colab
**Status**: ✅ Production Ready
**Last Updated**: November 2024

---

**Ready to start?** → [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/nycmyc/qiime2-amplicon-2025.7-gitpod/blob/claude/colab-migration-011CUhtcsjFAvbCA5anHdTqN/QIIME2_Setup.ipynb)
