# QIIME2 Amplicon 2025.7 on Gitpod 🧬

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod)

A ready-to-use QIIME2 Amplicon Distribution (2025.7) environment on Gitpod for microbiome analysis.

## 🚀 Quick Start

1. Click the "Open in Gitpod" button above
2. Wait for the environment to set up (10-15 minutes on first run, faster on subsequent runs)
3. QIIME2 2025.7 will be automatically activated and ready to use!

## 📦 What's Included

- **QIIME2 Amplicon Distribution 2025.7** (latest version) with all core plugins:
  - q2-dada2: Denoising with DADA2
  - q2-deblur: Denoising with Deblur  
  - q2-cutadapt: Primer trimming
  - q2-feature-classifier: Taxonomic classification
  - q2-diversity: Diversity analyses
  - q2-emperor: PCoA plots
  - q2-phylogeny: Phylogenetic analyses
  - And many more!
- **JupyterLab** for interactive analysis
- **Miniconda3** package manager
- **Python** environment
- Pre-configured VS Code with Python extensions

## ✅ Features

- Automatic environment activation
- Persistent conda installation in `/workspace/miniconda3`
- Retry logic for reliable setup
- Split-pane JupyterLab interface
- Based on proven working configuration

## 🧪 Verification

Once setup is complete, verify your installation:

```bash
# Check QIIME2 version
qiime --version

# Get system information  
qiime info

# List available plugins
qiime --help
```

## 📂 Sample Workflow

```bash
# Create a directory for your analysis
mkdir -p ~/analysis
cd ~/analysis

# Download sample data
wget "https://data.qiime2.org/2025.7/tutorials/moving-pictures/sample-metadata.tsv"

# Import sequences (example)
qiime tools import \
  --type 'SampleData[PairedEndSequencesWithQuality]' \
  --input-path manifest.txt \
  --output-path demux.qza \
  --input-format PairedEndFastqManifestPhred33

# Visualize
qiime demux summarize \
  --i-data demux.qza \
  --o-visualization demux.qzv
```

## 📚 Resources

- [QIIME2 Documentation](https://docs.qiime2.org/)
- [QIIME2 2025.7 Tutorials](https://docs.qiime2.org/2025.7/tutorials/)
- [QIIME2 Forum](https://forum.qiime2.org/)
- [Moving Pictures Tutorial](https://docs.qiime2.org/2025.7/tutorials/moving-pictures/)

## 🔧 Troubleshooting

### Environment Not Activated
If the environment isn't activated automatically:
```bash
conda activate qiime2-amplicon-2025.7
```

### Workspace Persistence
The conda installation is stored in `/workspace/miniconda3` which persists across workspace restarts.

### Memory Issues
Gitpod free tier provides 4 CPU cores and 8GB RAM. For large datasets:
- Use `--p-n-threads` parameter to limit CPU usage
- Consider subsampling for initial exploration
- Upgrade to Gitpod paid plans for more resources

## 📄 License

This Gitpod configuration is provided as-is for educational and research purposes. QIIME2 is licensed under the BSD 3-Clause License.

---

**Repository**: [https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod)
