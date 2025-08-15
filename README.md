# QIIME2 Amplicon 2025.7 on Gitpod 🧬

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod)

A ready-to-use QIIME2 (Quantitative Insights Into Microbial Ecology) environment on Gitpod for microbiome analysis.

## 🚀 Quick Start

1. Click the "Open in Gitpod" button above
2. Wait for the environment to build (first time takes ~5-10 minutes)
3. QIIME2 will be automatically activated and ready to use!

## 📦 What's Included

- **QIIME2 Amplicon Distribution 2025.7** with all core plugins:
  - q2-dada2: Denoising with DADA2
  - q2-deblur: Denoising with Deblur
  - q2-cutadapt: Primer trimming
  - q2-feature-classifier: Taxonomic classification
  - q2-diversity: Diversity analyses
  - q2-emperor: PCoA plots
  - q2-phylogeny: Phylogenetic analyses
  - And many more!

- **JupyterLab** for interactive analysis
- **Python scientific stack** (pandas, numpy, matplotlib, seaborn)
- **Pre-configured VS Code** with Python extensions

## 📚 Getting Started with QIIME2

### Basic Commands

```bash
# Check QIIME2 installation
qiime info

# Get help
qiime --help

# List available plugins
qiime --help | grep "available plugins"
```

### Sample Workflow

```bash
# Create a directory for your analysis
mkdir -p ~/analysis
cd ~/analysis

# Import your sequences (example with paired-end reads)
qiime tools import \
  --type 'SampleData[PairedEndSequencesWithQuality]' \
  --input-path manifest.txt \
  --output-path demux.qza \
  --input-format PairedEndFastqManifestPhred33

# Visualize demultiplexed sequences
qiime demux summarize \
  --i-data demux.qza \
  --o-visualization demux.qzv

# View the visualization
qiime tools view demux.qzv
```

## 📊 Working with Visualizations

QIIME2 visualizations (.qzv files) can be viewed in several ways:

1. **In JupyterLab**: Open the JupyterLab tab and use:
   ```python
   import qiime2
   from qiime2 import Visualization
   
   viz = Visualization.load('your-file.qzv')
   viz
   ```

2. **Using QIIME2 View**: 
   ```bash
   qiime tools view your-file.qzv
   ```

3. **Online at view.qiime2.org**: Download the .qzv file and upload it to [https://view.qiime2.org](https://view.qiime2.org)

## 📂 Sample Data

You can download QIIME2 tutorial data directly:

```bash
# Moving Pictures tutorial data
wget -O "moving-pictures.zip" \
  "https://data.qiime2.org/2025.7/tutorials/moving-pictures/emp-single-end-sequences.zip"
unzip moving-pictures.zip

# Atacama soil microbiome tutorial data
wget -O "atacama-soil.zip" \
  "https://data.qiime2.org/2025.7/tutorials/atacama-soils/atacama-soil-fastq.zip"
unzip atacama-soil.zip
```

## 🛠️ Customization

### Adding R Support

To add R and QIIME2 R packages, update the `environment.yml`:

```yaml
dependencies:
  # ... existing dependencies ...
  - r-base
  - r-tidyverse
  - r-vegan
  - r-phyloseq
```

### Installing Additional Plugins

You can install additional QIIME2 plugins:

```bash
# Example: Install q2-picrust2 for functional prediction
conda install -c conda-forge -c bioconda -c gavinmdouglas q2-picrust2
```

## 📖 Resources

- [QIIME2 Documentation](https://docs.qiime2.org/)
- [QIIME2 Tutorials](https://docs.qiime2.org/2025.7/tutorials/)
- [QIIME2 Forum](https://forum.qiime2.org/)
- [Moving Pictures Tutorial](https://docs.qiime2.org/2025.7/tutorials/moving-pictures/)
- [Atacama Soils Tutorial](https://docs.qiime2.org/2025.7/tutorials/atacama-soils/)

## 🐛 Troubleshooting

### Conda Environment Not Activated
If the environment isn't activated automatically:
```bash
conda activate qiime2-amplicon-2025.7
```

### Memory Issues
Gitpod free tier has limited resources. For large datasets:
- Consider using DADA2's `--p-n-threads` parameter to limit CPU usage
- Use `--p-sample-size` parameters to subsample for initial exploration
- Upgrade to Gitpod's paid plans for more resources

### Visualization Port Issues
If port 8080 is blocked, you can change it:
```bash
export QIIME2_PORT=8081
qiime tools view --port $QIIME2_PORT your-file.qzv
```

## 🤝 Contributing

Feel free to submit issues or pull requests to improve this setup!

## 📄 License

This repository is MIT licensed. QIIME2 is licensed under the BSD 3-Clause License.

---

**Repository**: [https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod)
