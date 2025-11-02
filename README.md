# QIIME2 Amplicon 2025.10 on Binder 📓

<!-- Universal Badges -->
[![QIIME2 Version](https://img.shields.io/badge/QIIME2-2025.10-green.svg)](https://docs.qiime2.org/2025.10/)
[![Status](https://img.shields.io/badge/Status-Production%20Ready-brightgreen.svg)](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/blob/claude/migration-tools-011CUhtcsjFAvbCA5anHdTqN/TEST_RESULTS.md)
[![Tested](https://img.shields.io/badge/Tested-Passing-success.svg)](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/blob/claude/migration-tools-011CUhtcsjFAvbCA5anHdTqN/TEST_RESULTS.md)
[![Documentation](https://img.shields.io/badge/Docs-Complete-blue.svg)](https://docs.qiime2.org/2025.10/)

<!-- Platform-Specific Badges -->
[![Launch Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/nycmyc/qiime2-amplicon-2025.7-gitpod/claude/binder-migration-011CUhtcsjFAvbCA5anHdTqN)
[![Platform](https://img.shields.io/badge/Platform-Binder-orange.svg)](https://mybinder.org/)
[![Jupyter](https://img.shields.io/badge/IDE-JupyterLab-F37626.svg)](https://jupyter.org/)
[![Build Time](https://img.shields.io/badge/First%20Build-20--30%20min-yellow.svg)](#build-configuration)

<!-- Resource Badges -->
[![RAM](https://img.shields.io/badge/RAM-~2%20GB-orange.svg)](#resource-limitations)
[![CPU](https://img.shields.io/badge/CPU-1--2%20cores-orange.svg)](#resource-limitations)
[![Storage](https://img.shields.io/badge/Storage-~10%20GB-orange.svg)](#resource-limitations)
[![Session Limit](https://img.shields.io/badge/Session-12%20hours-orange.svg)](#resource-limitations)

<!-- Feature Badges -->
[![No Installation](https://img.shields.io/badge/Installation-None%20Required-success.svg)](#quick-start)
[![Interactive](https://img.shields.io/badge/Notebooks-Interactive-success.svg)](#example-notebooks)
[![Free](https://img.shields.io/badge/Cost-Free-brightgreen.svg)](#quick-start)

---

Interactive Jupyter notebooks with QIIME2 Amplicon 2025.10 - run microbiome analyses in your browser without installation!

> **📓 Best for Demos**: Zero-setup, shareable notebooks perfect for tutorials and learning

---

## 🚀 Quick Start

### One-Click Launch

Click the badge below to start an interactive session:

[![Launch Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/nycmyc/qiime2-amplicon-2025.7-gitpod/claude/binder-migration-011CUhtcsjFAvbCA5anHdTqN)

**What happens when you click:**
1. Binder builds the QIIME2 2025.10 environment (20-30 min first time, cached after)
2. JupyterLab opens in your browser
3. Navigate to `example-notebooks/QIIME2_Introduction.ipynb`
4. Start analyzing microbiome data immediately!

**No account, installation, or credit card required!**

### First Steps After Launch

Once JupyterLab opens:

```python
# In a new notebook or terminal, verify installation
import qiime2
print(f"QIIME2 version: {qiime2.__version__}")
# Should show: 2025.10.x

# Test QIIME2 CLI
!qiime --version
!qiime info
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

### JupyterLab Environment

- **JupyterLab 3+**: Modern notebook interface
- **Python 3.9+**: Scientific Python stack
- **Example Notebooks**: Pre-built tutorials
- **Sample Data**: Moving Pictures tutorial data
- **Interactive Visualizations**: In-notebook QIIME2 views

---

## ✅ Features

- 📓 **Zero Setup**: No installation, no configuration
- 🌐 **Browser-Based**: Works on any device with a browser
- 📚 **Example Notebooks**: Learn by example
- 🔗 **Shareable**: Share notebooks via URL
- 💰 **Free**: No cost, no account needed
- 📊 **Interactive Visualizations**: View `.qzv` files in notebooks
- 🔄 **Reproducible**: Same environment every time
- 🎓 **Educational**: Perfect for teaching and workshops

---

## 📚 Example Notebooks

Pre-built notebooks in `example-notebooks/` directory:

### QIIME2_Introduction.ipynb
- QIIME2 version verification
- Basic Python API usage
- Running CLI commands from notebooks
- Loading and viewing artifacts
- Creating simple visualizations

### Moving_Pictures_Tutorial.ipynb (coming soon)
- Complete Moving Pictures workflow
- From raw sequences to diversity analysis
- Interactive visualizations

### Create Your Own
```python
# In any notebook cell
import qiime2
from qiime2 import Artifact, Visualization

# Run QIIME2 commands
!qiime demux summarize \
  --i-data demux.qza \
  --o-visualization demux.qzv

# View visualization in notebook
viz = Visualization.load('demux.qzv')
viz
```

---

## 💻 Usage Examples

### Check Version and System Info

```python
# Check QIIME2 version
import qiime2
print(qiime2.__version__)  # 2025.10.x

# Get detailed system information
!qiime info

# List available plugins
!qiime --help
```

### Download Tutorial Data

```python
# Moving Pictures tutorial (2025.10)
!wget "https://data.qiime2.org/2025.10/tutorials/moving-pictures/sample-metadata.tsv"
!wget "https://data.qiime2.org/2025.10/tutorials/moving-pictures/emp-single-end-sequences.qza"

# Atacama Soils tutorial (2025.10)
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

# Generate visualization
!qiime demux summarize \
  --i-data demux.qza \
  --o-visualization demux.qzv
```

### View Visualizations

```python
# Option 1: Load and display in notebook
from qiime2 import Visualization
viz = Visualization.load('demux.qzv')
viz  # Interactive display

# Option 2: Use QIIME2 viewer (opens in new tab)
!qiime tools view demux.qzv

# Option 3: Download to view locally
from IPython.display import FileLink
FileLink('demux.qzv')
```

### Use Python API

```python
from qiime2 import Artifact, Visualization
from qiime2.plugins import demux

# Load artifacts
seqs = Artifact.load('emp-single-end-sequences.qza')

# Run QIIME2 methods via Python API
result = demux.methods.summarize(data=seqs)

# Save results
result.visualization.save('demux-summary.qzv')
```

---

## ⚠️ Resource Limitations

Binder provides **limited free resources**:

| Resource | Limit | Recommendation |
|----------|-------|----------------|
| **RAM** | ~2 GB | Use small datasets (<100MB) |
| **CPU** | 1-2 cores | Set `--p-n-threads 1` |
| **Storage** | ~10 GB | Download results regularly |
| **Idle Timeout** | 10 minutes | Keep browser tab active |
| **Max Session** | 12 hours | Long analyses not suitable |

### Best Use Cases

**✅ Recommended for:**
- Tutorials and learning QIIME2
- Educational workshops and demos
- Testing small workflows (<100MB datasets)
- Sharing reproducible analyses
- Quick prototyping
- Teaching bioinformatics

**❌ Not Recommended for:**
- Large datasets (>500MB)
- Production analyses
- Long computations (>2 hours)
- Memory-intensive operations (DADA2 on large datasets)
- Persistent storage needs

### For Larger Analyses, Use:
- **[Oracle Cloud](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/oracle-cloud-migration-011CUhtcsjFAvbCA5anHdTqN)** - 24GB RAM, free forever
- **[Google Colab](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/colab-migration-011CUhtcsjFAvbCA5anHdTqN)** - 12GB RAM, GPU access
- **[GitHub Codespaces](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/github-codespaces-migration-011CUhtcsjFAvbCA5anHdTqN)** - Configurable resources

---

## 🔧 Optimization Tips

### 1. Use Subsampling for Large Datasets

```python
# Filter low-frequency samples
!qiime feature-table filter-samples \
  --i-table table.qza \
  --p-min-frequency 100 \
  --o-filtered-table filtered-table.qza

# Reduce sampling depth
!qiime diversity core-metrics-phylogenetic \
  --p-sampling-depth 500 \  # Lower depth for Binder
  # ... other parameters
```

### 2. Limit Thread Usage

```python
# Always use single thread on Binder
!qiime dada2 denoise-single \
  --p-n-threads 1 \  # Critical for Binder
  --i-demultiplexed-seqs demux.qza \
  --p-trunc-len 120 \
  --o-table table.qza \
  --o-representative-sequences rep-seqs.qza \
  --o-denoising-stats stats.qza
```

### 3. Download Results Before Session Expires

```python
from IPython.display import FileLink
import os

# Create download links for all results
for file in os.listdir('.'):
    if file.endswith(('.qza', '.qzv')):
        print(f"Download {file}:")
        display(FileLink(file))
```

### 4. Use Smaller Reference Databases

```python
# Instead of full Greengenes, use pre-trained classifiers
!wget "https://data.qiime2.org/2025.10/common/gg-13-8-99-515-806-nb-classifier.qza"

# Or subset your reference sequences
!qiime feature-classifier extract-reads \
  --p-f-primer GTGCCAGCMGCCGCGGTAA \
  --p-r-primer GGACTACHVGGGTWTCTAAT \
  --p-min-length 100 \
  --p-max-length 400 \
  --i-sequences ref-seqs.qza \
  --o-reads ref-seqs-subset.qza
```

### 5. Save Work Regularly

```python
# Checkpoint your progress
import datetime
timestamp = datetime.datetime.now().strftime("%Y%m%d_%H%M%S")

!qiime tools export \
  --input-path table.qza \
  --output-path exported-table-{timestamp}/
```

---

## 📊 Viewing Visualizations

QIIME2 visualizations (`.qzv` files) work great in Binder:

### Method 1: In-Notebook Display (Recommended)

```python
from qiime2 import Visualization

# Load and display visualization inline
viz = Visualization.load('demux.qzv')
viz  # Shows interactive plot in notebook
```

### Method 2: QIIME2 Viewer (New Tab)

```python
# Opens visualization in new browser tab
!qiime tools view demux.qzv
```

### Method 3: Download to Local Machine

```python
from IPython.display import FileLink

# Create download link
FileLink('demux.qzv')  # Click to download
```

Then upload to [https://view.qiime2.org](https://view.qiime2.org)

### Method 4: Export Data

```python
# Export visualization for custom analysis
!qiime tools export \
  --input-path demux.qzv \
  --output-path exported-demux/

# Download exported files
FileLink('exported-demux/index.html')
```

---

## 📝 Build Configuration

Binder uses these configuration files in the `binder/` directory:

### environment.yml
Specifies QIIME2 2025.10 conda environment:
```yaml
name: qiime2-amplicon-2025.10
channels:
  - qiime2/label/r2025.10
  - conda-forge
  - bioconda
  - defaults
dependencies:
  - qiime2=2025.10.*
  - q2cli=2025.10.*
  - python=3.9
```

### postBuild
Post-installation optimization script:
- Downloads sample tutorial data
- Configures QIIME2 cache
- Optimizes for Binder resources

### runtime.txt
Python version specification:
```
python-3.9
```

### Build Time Expectations

| Build Type | Duration | When It Happens |
|------------|----------|-----------------|
| **First build** | 20-30 min | First launch or after repo changes |
| **Cached build** | 5-10 min | Subsequent launches (cached) |
| **Rebuild** | 20-30 min | After environment.yml changes |

**Be patient!** QIIME2 is a large environment with many dependencies. The wait is worth it, and builds are cached for faster subsequent launches.

---

## 🧪 Complete Example Workflow

Here's a minimal Moving Pictures workflow optimized for Binder:

```python
# 1. Download data
!wget -q "https://data.qiime2.org/2025.10/tutorials/moving-pictures/sample-metadata.tsv"
!wget -q "https://data.qiime2.org/2025.10/tutorials/moving-pictures/emp-single-end-sequences.qza"

# 2. Demultiplex
!qiime demux emp-single \
  --i-seqs emp-single-end-sequences.qza \
  --m-barcodes-file sample-metadata.tsv \
  --m-barcodes-column barcode-sequence \
  --o-per-sample-sequences demux.qza

# 3. Visualize quality
!qiime demux summarize \
  --i-data demux.qza \
  --o-visualization demux.qzv

# 4. View in notebook
from qiime2 import Visualization
viz = Visualization.load('demux.qzv')
viz

# 5. Denoise (small dataset only!)
!qiime dada2 denoise-single \
  --i-demultiplexed-seqs demux.qza \
  --p-trim-left 0 \
  --p-trunc-len 120 \
  --p-n-threads 1 \
  --o-table table.qza \
  --o-representative-sequences rep-seqs.qza \
  --o-denoising-stats stats.qza

# 6. Summarize results
!qiime feature-table summarize \
  --i-table table.qza \
  --o-visualization table.qzv \
  --m-sample-metadata-file sample-metadata.tsv

# 7. View results
table_viz = Visualization.load('table.qzv')
table_viz
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

### Binder & Jupyter Resources

- [Binder Documentation](https://mybinder.readthedocs.io/) - Platform docs
- [JupyterLab Documentation](https://jupyterlab.readthedocs.io/) - IDE guide
- [Jupyter Notebook Tutorial](https://jupyter-notebook.readthedocs.io/) - Basics
- [Sharing Binder Notebooks](https://mybinder.readthedocs.io/en/latest/introduction.html#how-to-share) - Share your work

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

### Build Takes Too Long

**Symptom**: Binder build stuck for >30 minutes

**Solutions**:
```bash
# Wait patiently - first build takes 20-30 minutes
# QIIME2 has many dependencies

# If stuck for >1 hour, try:
# 1. Refresh the page
# 2. Click the Binder badge again
# 3. Check Binder status: https://mybinder.org/
```

### Session Timeout (10 Minute Idle)

**Symptom**: "Your session has expired" message

**Solutions**:
```python
# Keep browser tab active
# Run a cell every few minutes
import time
while True:
    print(".", end="", flush=True)
    time.sleep(300)  # Prints dot every 5 min
```

### Out of Memory Errors

**Symptom**: `MemoryError` or process killed

**Solutions**:
```python
# 1. Use smaller datasets
# Subsample to <100MB before analysis

# 2. Reduce sampling depth
--p-sampling-depth 500  # Instead of 5000

# 3. Filter aggressively
!qiime feature-table filter-features \
  --i-table table.qza \
  --p-min-frequency 10 \
  --p-min-samples 2 \
  --o-filtered-table filtered-table.qza

# 4. Use alternative platforms for large data:
# - Oracle Cloud (24GB RAM, free)
# - Google Colab (12GB RAM)
```

### Visualization Not Displaying

**Symptom**: Blank output when loading `.qzv`

**Solutions**:
```python
# Try method 1: Reload visualization
from qiime2 import Visualization
viz = Visualization.load('file.qzv')
viz

# Try method 2: Open in new tab
!qiime tools view file.qzv

# Try method 3: Download and view locally
from IPython.display import FileLink
FileLink('file.qzv')
# Then upload to https://view.qiime2.org
```

### QIIME2 Command Not Found

**Symptom**: `qiime: command not found`

**Solutions**:
```python
# Check environment activation
!conda info --envs

# Activate manually if needed
import os
os.system('source activate qiime2-amplicon-2025.10')

# Or use full path
!/opt/conda/envs/qiime2-amplicon-2025.10/bin/qiime --version
```

### Slow Performance

**Symptom**: Commands take very long to run

**Solutions**:
```python
# 1. Always use single thread
--p-n-threads 1

# 2. Reduce dataset size
# Use only 10-20 samples for testing

# 3. Monitor resources in terminal
!free -h  # Check available memory
!df -h    # Check disk space

# 4. For faster performance, use:
# - Google Colab (more RAM)
# - Oracle Cloud (much more resources)
```

### Cannot Download Files

**Symptom**: Download links not working

**Solutions**:
```python
# Method 1: Use IPython FileLink
from IPython.display import FileLink, display
display(FileLink('table.qza'))

# Method 2: Use Jupyter file browser
# Left sidebar → Files → Right-click file → Download

# Method 3: Export and download
!qiime tools export \
  --input-path table.qza \
  --output-path exported-table/
# Then download exported folder
```

---

## 📝 Changelog

### Version 2025.10 (November 2024)

- **Upgraded** from QIIME2 2025.7 to 2025.10
- **Added** Binder support with optimized build
- **Updated** all documentation links to 2025.10
- **Updated** all tutorial data URLs to 2025.10 versions
- **Added** example notebooks for interactive learning
- **Improved** build caching for faster subsequent launches
- **Added** comprehensive optimization tips for Binder's limited resources
- **Enhanced** visualization examples (in-notebook, viewer, download)
- **Added** complete workflow examples optimized for Binder

See **[VERSION_NOTES.md](VERSION_NOTES.md)** for detailed QIIME2 2025.10 features and changes.

---

## 🔄 Comparison with Other Platforms

| Feature | Binder | Google Colab | GitHub Codespaces | Oracle Cloud |
|---------|--------|--------------|-------------------|--------------|
| **RAM** | 2 GB | 12 GB | 8-32 GB | 24 GB |
| **Setup** | Zero | Zero | Minimal | Manual |
| **Cost** | Free | Free | 60 hrs/mo free | Free forever |
| **Best For** | Demos | Medium datasets | Development | Production |
| **Session** | 12 hrs | 12 hrs | Unlimited | Unlimited |

**When to use Binder:**
- ✅ Teaching workshops
- ✅ Quick demos
- ✅ Sharing reproducible workflows
- ✅ Learning QIIME2 basics
- ✅ No installation wanted

**When to upgrade to other platforms:**
- 📊 **Google Colab** - Medium datasets (1-10GB)
- 💻 **GitHub Codespaces** - Development work
- ☁️ **Oracle Cloud** - Large datasets, production analyses

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

This Binder configuration is provided as-is for educational and research purposes. QIIME2 is licensed under the BSD 3-Clause License.

---

## 🔗 Related Resources

- **[GitHub Codespaces Migration](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/github-codespaces-migration-011CUhtcsjFAvbCA5anHdTqN)** - Browser-based VS Code
- **[Oracle Cloud Migration](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/oracle-cloud-migration-011CUhtcsjFAvbCA5anHdTqN)** - Free forever with 24GB RAM
- **[Google Colab Migration](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/colab-migration-011CUhtcsjFAvbCA5anHdTqN)** - Jupyter notebooks with more resources
- **[Lightning.ai Migration](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/lightning-ai-migration-011CUhtcsjFAvbCA5anHdTqN)** - GPU acceleration
- **[Migration Tools](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/migration-tools-011CUhtcsjFAvbCA5anHdTqN)** - Comparison guides & tools

---

**Maintained by**: [@nycmyc](https://github.com/nycmyc)
**Repository**: [https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod)
**QIIME2 Version**: 2025.10
**Platform**: Binder / MyBinder.org
**Status**: ✅ Production Ready
**Last Updated**: November 2024

---

**Ready to start?** → [![Launch Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/nycmyc/qiime2-amplicon-2025.7-gitpod/claude/binder-migration-011CUhtcsjFAvbCA5anHdTqN)
