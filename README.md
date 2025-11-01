# QIIME2 Amplicon 2025.10 on GitHub Codespaces 🧬

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new?hide_repo_select=true&ref=github-codespaces-migration&repo=YOUR_REPO_ID)

A ready-to-use QIIME2 Amplicon Distribution (2025.10) command-line environment on GitHub Codespaces for microbiome analysis.

## 🚀 Quick Start

1. Click the "Open in GitHub Codespaces" button above or create a new Codespace from this repository
2. Wait for the environment to build (~15-20 minutes on first run, faster on rebuilds)
3. QIIME2 2025.10 will be automatically activated and ready to use!

## 📦 What's Included

- **QIIME2 Amplicon Distribution 2025.10** (latest version) with all core plugins:
  - q2-dada2: Denoising with DADA2
  - q2-deblur: Denoising with Deblur
  - q2-cutadapt: Primer trimming
  - q2-feature-classifier: Taxonomic classification
  - q2-diversity: Diversity analyses
  - q2-emperor: PCoA plots
  - q2-phylogeny: Phylogenetic analyses
  - q2-feature-table: Feature table operations
  - q2-metadata: Metadata operations
  - q2-taxa: Taxonomic analysis
  - q2-vsearch: VSEARCH integration
  - q2-alignment: Sequence alignment
  - q2-composition: Compositional data analysis
  - q2-fragment-insertion: Fragment insertion
  - q2-longitudinal: Longitudinal analysis
  - q2-quality-control: Quality control
  - q2-quality-filter: Quality filtering
  - q2-sample-classifier: Machine learning classification
  - q2-stats: Statistical testing
  - q2-types: QIIME 2 type system
  - q2-vizard: Visualization tools

- **Miniconda3** package manager pre-installed
- **Python** environment with scientific libraries
- **VS Code** with Python and Jupyter extensions

## ✅ Features

- ✨ Automatic environment activation on terminal start
- 💾 Persistent conda installation
- 🎯 Based on official QIIME2 2025.10 distribution
- 📊 Port 8080 configured for QIIME2 visualizations
- 🔄 Fast rebuilds after initial setup

## 🧪 Verification

Once setup is complete, verify your installation:

```bash
# Check QIIME2 version (should show 2025.10)
qiime --version

# Get system information
qiime info

# List available plugins
qiime --help
```

## 📂 Sample Workflow

```bash
# Create a directory for your analysis
mkdir -p ~/moving-pictures
cd ~/moving-pictures

# Download sample data (2025.10 version)
wget "https://data.qiime2.org/2025.10/tutorials/moving-pictures/sample-metadata.tsv"
wget "https://data.qiime2.org/2025.10/tutorials/moving-pictures/emp-single-end-sequences/sequences.fastq.gz"
wget "https://data.qiime2.org/2025.10/tutorials/moving-pictures/emp-single-end-sequences/barcodes.fastq.gz"

# Import data
qiime tools import \
  --type EMPSingleEndSequences \
  --input-path . \
  --output-path emp-single-end-sequences.qza

# Demultiplex
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

# View the visualization (opens on port 8080)
qiime tools view demux.qzv
```

## 📊 Viewing Visualizations

QIIME2 visualizations (.qzv files) can be viewed in two ways:

1. **In Codespaces**: Use `qiime tools view <file.qzv>` - opens on port 8080
2. **Online**: Download the .qzv file and upload to [https://view.qiime2.org](https://view.qiime2.org)

## 📚 Tutorials & Resources

### Tutorials
- [Moving Pictures Tutorial](https://docs.qiime2.org/2025.10/tutorials/moving-pictures/) - Best starting point
- [Atacama Soils Tutorial](https://docs.qiime2.org/2025.10/tutorials/atacama-soils/) - Paired-end reads
- [Parkinson's Mouse Tutorial](https://docs.qiime2.org/2025.10/tutorials/pd-mice/) - Longitudinal analysis
- [Training Feature Classifiers](https://docs.qiime2.org/2025.10/tutorials/feature-classifier/) - Taxonomic classification

### Documentation
- [QIIME2 Documentation](https://docs.qiime2.org/2025.10/)
- [QIIME2 Forum](https://forum.qiime2.org/) - Community support
- [QIIME2 Library](https://library.qiime2.org/) - Plugin directory

## 🔧 Troubleshooting

### Environment Not Activated
If the environment isn't activated automatically:
```bash
source ~/.bashrc
conda activate qiime2-amplicon-2025.10
```

### Codespace Resources
GitHub Codespaces offers different machine types:

| Machine Type | CPU Cores | RAM | Storage |
|-------------|-----------|-----|---------|
| **2-core** | 2 | 8GB | 32GB |
| **4-core** | 4 | 16GB | 32GB |
| **8-core** | 8 | 32GB | 64GB |

**Recommended configurations:**
- **Small datasets (<1GB)**: 2-core machine
- **Medium datasets (1-5GB)**: 4-core machine
- **Large datasets (>5GB)**: 8-core machine

### Common Issues

**Command not found**: Ensure the environment is activated
```bash
conda activate qiime2-amplicon-2025.10
```

**Port 8080 already in use**: Kill existing process
```bash
lsof -ti:8080 | xargs kill -9
```

### Monitoring Resources

Check your Codespace resource usage:
```bash
# Check available memory
free -h

# Monitor CPU and memory in real-time
htop

# Check disk usage
df -h

# Monitor a specific QIIME2 process
/usr/bin/time -v qiime dada2 denoise-single ...
```

**Out of memory**: Reduce threads or sampling depth
```bash
# For 2-core machine (8GB RAM)
qiime dada2 denoise-single \
  --p-n-threads 1 \
  --i-demultiplexed-seqs demux.qza \
  --p-trim-left 0 \
  --p-trunc-len 120 \
  --o-representative-sequences rep-seqs.qza \
  --o-table table.qza \
  --o-denoising-stats stats.qza

# For 4-core machine (16GB RAM)
qiime dada2 denoise-single \
  --p-n-threads 2 \
  --i-demultiplexed-seqs demux.qza \
  --p-trim-left 0 \
  --p-trunc-len 120 \
  --o-representative-sequences rep-seqs.qza \
  --o-table table.qza \
  --o-denoising-stats stats.qza
```

## 🏗️ Configuration Details

- **Base Image**: `mcr.microsoft.com/devcontainers/base:ubuntu` - Official Microsoft devcontainer
- **Conda Path**: `/opt/conda` - System-wide installation
- **Environment**: `qiime2-amplicon-2025.10` - Official QIIME2 distribution
- **Installation Source**: Official QIIME2 conda channel

## 📝 Changelog

### Version 2025.10 (November 2024)
- **Upgraded** from QIIME2 2025.7 to 2025.10
- **Migrated** from Gitpod to GitHub Codespaces
- **Updated** all documentation links to 2025.10
- **Updated** all tutorial data URLs to 2025.10 versions
- **Added** .devcontainer configuration for Codespaces support

See [VERSION.md](VERSION.md) for detailed information about QIIME2 2025.10 features and changes.

## 📄 License

This GitHub Codespaces configuration is provided as-is for educational and research purposes. QIIME2 is licensed under the BSD 3-Clause License.

---

**Maintained by**: [@nycmyc](https://github.com/nycmyc)
**Repository**: [https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod)
**Based on**: [QIIME2 Official Distribution](https://library.qiime2.org/)
