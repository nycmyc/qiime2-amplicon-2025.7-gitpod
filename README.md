# QIIME2 Amplicon 2025.10 on Google Colab 🔬

[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/nycmyc/qiime2-amplicon-2025.7-gitpod/blob/colab-migration/QIIME2_Setup.ipynb)

Run QIIME2 Amplicon 2025.10 in Google Colab - free cloud computing with up to 12GB RAM!

## 🚀 Quick Start

1. Click the "Open in Colab" badge above
2. Run the setup cell (takes 15-20 minutes)
3. Start analyzing microbiome data!

## 📦 What's Included

- **QIIME2 Amplicon 2025.10** with all core plugins
- **Python utilities** for Colab integration
- **Setup notebook** with automatic installation
- **Example workflows** for common analyses

## ✅ Colab Advantages

- **Free GPU**: T4 GPU available
- **12GB RAM**: More than Binder
- **Storage**: Up to 100GB temporary
- **Sessions**: Up to 12 hours continuous
- **Google Drive Integration**: Save results

## 📝 Installation

The setup notebook (`QIIME2_Setup.ipynb`) handles everything automatically:

```python
QIIME2_VERSION = "2025.10"

# Installs:
# - Miniconda
# - QIIME2 2025.10 environment
# - All amplicon plugins
```

**Installation time**: 15-20 minutes (one-time per session)

## 💻 Usage Examples

### Basic Commands

```python
# Check version
!qiime --version  # Should show 2025.10.x

# List plugins
!qiime info

# Get help
!qiime dada2 denoise-single --help
```

### Download Tutorial Data

```python
# Download Moving Pictures data (2025.10 version)
!mkdir -p data && cd data
!wget "https://data.qiime2.org/2025.10/tutorials/moving-pictures/sample-metadata.tsv"
!wget "https://data.qiime2.org/2025.10/tutorials/moving-pictures/emp-single-end-sequences.qza"
```

### Run Analysis

```python
# Summarize sequences
!qiime demux summarize \
  --i-data emp-single-end-sequences.qza \
  --o-visualization demux.qzv

# Download results
from google.colab import files
files.download('demux.qzv')
```

View at: https://view.qiime2.org

### Save to Google Drive

```python
# Mount Google Drive
from google.colab import drive
drive.mount('/content/drive')

# Save results
!cp *.qza /content/drive/MyDrive/qiime2-results/
!cp *.qzv /content/drive/MyDrive/qiime2-results/
```

## 🔧 Python Utilities

Use `colab_setup.py` for helper functions:

```python
import colab_setup

# Check installation
colab_setup.check_version()

# List plugins
colab_setup.list_plugins()

# Download tutorial data
colab_setup.download_tutorial_data('moving-pictures')
```

## 📊 Resource Specifications

### Free Tier
- **RAM**: Up to 12GB
- **CPU**: 2 cores
- **GPU**: T4 (optional)
- **Storage**: ~100GB temporary
- **Runtime**: 12 hours max

### Colab Pro
- **RAM**: Up to 25GB
- **CPU**: 4+ cores
- **GPU**: P100/V100
- **Storage**: More persistent
- **Runtime**: 24 hours max

## ⚡ Performance Tips

### 1. Use GPU for Supported Operations
```python
# Check GPU availability
!nvidia-smi
```

### 2. Adjust Thread Count
```python
# Use 2 threads for free tier
!qiime dada2 denoise-single \
  --p-n-threads 2 \
  # ... other parameters
```

### 3. Enable Progress Bars
```python
# Show progress during long operations
import sys
sys.stdout.flush()
```

### 4. Save Work Frequently
```python
# Checkpoint important results
from google.colab import files
files.download('table.qza')
```

## 🧪 Complete Tutorial Workflow

```python
# 1. Setup (run once per session)
%run QIIME2_Setup.ipynb

# 2. Create working directory
!mkdir -p ~/qiime2-analysis && cd ~/qiime2-analysis

# 3. Download data (2025.10)
!wget "https://data.qiime2.org/2025.10/tutorials/moving-pictures/sample-metadata.tsv"
!wget "https://data.qiime2.org/2025.10/tutorials/moving-pictures/emp-single-end-sequences.qza"

# 4. Demultiplex
!qiime demux emp-single \
  --i-seqs emp-single-end-sequences.qza \
  --m-barcodes-file sample-metadata.tsv \
  --m-barcodes-column barcode-sequence \
  --o-per-sample-sequences demux.qza

# 5. Denoise with DADA2
!qiime dada2 denoise-single \
  --i-demultiplexed-seqs demux.qza \
  --p-trim-left 0 \
  --p-trunc-len 120 \
  --p-n-threads 2 \
  --o-representative-sequences rep-seqs.qza \
  --o-table table.qza \
  --o-denoising-stats stats.qza

# 6. Generate summaries
!qiime feature-table summarize \
  --i-table table.qza \
  --o-visualization table.qzv \
  --m-sample-metadata-file sample-metadata.tsv

# 7. Download results
from google.colab import files
files.download('table.qzv')
files.download('rep-seqs.qza')
```

## 📚 Documentation

### QIIME2 Resources
- [QIIME2 2025.10 Docs](https://docs.qiime2.org/2025.10/)
- [Moving Pictures Tutorial](https://docs.qiime2.org/2025.10/tutorials/moving-pictures/)
- [QIIME2 Forum](https://forum.qiime2.org/)

### Google Colab Resources
- [Colab Documentation](https://colab.research.google.com/)
- [Colab Pro Features](https://colab.research.google.com/signup)

## 🐛 Troubleshooting

### Installation Fails
**Solution**: Restart runtime and try again
```python
# Runtime → Restart runtime
```

### Out of Memory
**Solution**: Use smaller datasets or upgrade to Colab Pro
```python
# Reduce sampling depth
--p-sampling-depth 1000
```

### Session Timeout
**Solution**: Keep browser tab active, use Colab Pro for longer sessions

### Command Not Found
**Solution**: Ensure setup notebook ran successfully
```python
# Re-run setup cell
!qiime --version
```

### Slow Performance
**Solution**:
- Use free tier during off-peak hours
- Limit thread count: `--p-n-threads 1`
- Consider Colab Pro for better resources

## 🔄 Session Management

```python
# Check session info
!uptime
!free -h
!df -h

# Keep session alive (run periodically)
import time
print(f"Session active at {time.ctime()}")
```

## 📝 Changelog

### Version 2025.10 (November 2024)
- **Upgraded** from QIIME2 2025.7 to 2025.10
- **Added** Google Colab support
- **Added** setup notebook with progress indicators
- **Added** Python utilities (colab_setup.py)
- **Updated** all data URLs to 2025.10
- **Improved** installation speed with optimizations

## 📄 License

This Google Colab configuration is provided as-is for educational and research purposes. QIIME2 is licensed under the BSD 3-Clause License.

---

**Maintained by**: [@nycmyc](https://github.com/nycmyc)
**Repository**: [https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod)
**QIIME2 Version**: 2025.10
**Platform**: Google Colab
