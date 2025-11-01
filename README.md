# QIIME2 Amplicon 2025.10 on Gitpod (Legacy) 🧬

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod)

> ⚠️ **DEPRECATION NOTICE**: Gitpod Classic is being sunset. This is the final update for this Gitpod configuration. Please migrate to one of the alternative platforms below.

A ready-to-use QIIME2 Amplicon Distribution (2025.10) command-line environment on Gitpod for microbiome analysis.

## 🔄 Migration Options

**Recommended alternatives to Gitpod Classic:**

| Platform | Branch | Best For |
|----------|--------|----------|
| [GitHub Codespaces](https://github.com/codespaces) | `github-codespaces-migration` | Direct Gitpod replacement |
| [Oracle Cloud Free Tier](https://www.oracle.com/cloud/free/) | `oracle-cloud-migration` | Forever free, more resources |
| [Google Colab](https://colab.research.google.com/) | `colab-migration` | Jupyter notebooks, 12GB RAM |
| [Binder](https://mybinder.org/) | `binder-migration` | Interactive notebooks |
| [Lightning.ai](https://lightning.ai) | `lightning-ai-migration` | GPU acceleration |

```bash
# Switch to migration branch
git checkout github-codespaces-migration  # or other branch
```

See [CHANGELOG.md](CHANGELOG.md) for migration guides.

## 🚀 Quick Start

1. Click the "Open in Gitpod" button above
2. Choose your workspace size:
   - **Standard** (4 cores, 8GB RAM) - Good for tutorials and small datasets
   - **Large** (8 cores, 16GB RAM) - Better for real analyses and larger datasets
3. Wait for the environment to set up (~10 minutes on first run, faster on subsequent runs)
4. QIIME2 2025.10 will be automatically activated and ready to use!

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

- **Miniconda3** package manager
- **Python** environment with scientific libraries
- **Pre-configured VS Code** with Python extensions

## ✅ Features

- ✨ Automatic environment activation on terminal start
- 💾 Persistent conda installation in `/workspace/miniconda3`
- 🔄 Retry logic for reliable setup
- 🎯 Based on proven working configuration
- 📊 Port 8080 configured for QIIME2 visualizations

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
mkdir -p ~/moving-pictures
cd ~/moving-pictures

# Download sample data
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

1. **In Gitpod**: Use `qiime tools view <file.qzv>` - opens on port 8080
2. **Online**: Download the .qzv file and upload to [https://view.qiime2.org](https://view.qiime2.org)

## 📚 Tutorials & Resources

### Tutorials
- [Moving Pictures Tutorial](https://docs.qiime2.org/2025.10/tutorials/moving-pictures/) - Best starting point
- [Atacama Soils Tutorial](https://docs.qiime2.org/2025.10/tutorials/atacama-soils/) - Paired-end reads
- [Parkinson's Mouse Tutorial](https://docs.qiime2.org/2025.10/tutorials/pd-mice/) - Longitudinal analysis
- [Training Feature Classifiers](https://docs.qiime2.org/2025.10/tutorials/feature-classifier/) - Taxonomic classification

### Documentation
- [QIIME2 Documentation](https://docs.qiime2.org/)
- [QIIME2 Forum](https://forum.qiime2.org/) - Community support
- [QIIME2 Library](https://library.qiime2.org/) - Plugin directory

## 🔧 Troubleshooting

### Environment Not Activated
If the environment isn't activated automatically:
```bash
source $HOME/.bashrc
conda activate qiime2-amplicon-2025.10
```

### Workspace Persistence
The conda installation is stored in `/workspace/miniconda3` which persists across workspace restarts, making subsequent launches much faster.

### Resource Options
Gitpod free tier offers two workspace sizes:

| Workspace Size | CPU Cores | RAM | Storage |
|---------------|-----------|-----|---------|
| **Standard** | Up to 4 | 8GB | 30GB |
| **Large** | Up to 8 | 16GB | 50GB |

You can select the workspace size when starting your Gitpod workspace.

**For optimal performance:**
- **Small datasets (<1GB)**: Standard workspace is sufficient
- **Medium datasets (1-5GB)**: Use Large workspace
- **Large datasets (>5GB)**: Use Large workspace with resource management:
  - Limit threads: `--p-n-threads 4` 
  - Consider subsampling: `--p-sampling-depth`
  - Process in batches if needed
- **Very large datasets**: Consider Gitpod paid plans for dedicated resources

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

Check your workspace resource usage:
```bash
# Check available memory
free -h

# Monitor CPU and memory in real-time
htop

# Check disk usage
df -h

# Monitor a specific QIIME2 process
# Run your QIIME2 command with time and memory tracking
/usr/bin/time -v qiime dada2 denoise-single ...
```

**Out of memory**: Reduce threads or sampling depth based on your workspace
```bash
# For Standard workspace (8GB RAM)
qiime dada2 denoise-single \
  --p-n-threads 2 \
  --i-demultiplexed-seqs demux.qza \
  --p-trim-left 0 \
  --p-trunc-len 120 \
  --o-representative-sequences rep-seqs.qza \
  --o-table table.qza \
  --o-denoising-stats stats.qza

# For Large workspace (16GB RAM)
qiime dada2 denoise-single \
  --p-n-threads 4 \
  --i-demultiplexed-seqs demux.qza \
  --p-trim-left 0 \
  --p-trunc-len 120 \
  --o-representative-sequences rep-seqs.qza \
  --o-table table.qza \
  --o-denoising-stats stats.qza
```

## 🏗️ Configuration Details

- **Base Image**: `gitpod/workspace-full` - Ubuntu with development tools
- **Conda Path**: `/workspace/miniconda3` - Persists across sessions
- **Environment**: `qiime2-amplicon-2025.10` - Official QIIME2 distribution
- **Installation Source**: Official QIIME2 conda channel

## 📄 License

This Gitpod configuration is provided as-is for educational and research purposes. QIIME2 is licensed under the BSD 3-Clause License.

---

**Maintained by**: [@nycmyc](https://github.com/nycmyc)  
**Repository**: [https://github.com/nycmyc/qiime2-amplicon-2025.10-gitpod](https://github.com/nycmyc/qiime2-amplicon-2025.10-gitpod)  
**Based on**: [QIIME2 Official Distribution](https://library.qiime2.org/)
