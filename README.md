# QIIME2 Amplicon 2025.10 on Binder 📓

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/nycmyc/qiime2-amplicon-2025.7-gitpod/binder-migration)

Interactive Jupyter notebooks with QIIME2 Amplicon 2025.10 - run microbiome analyses in your browser without installation!

## 🚀 Quick Start

1. Click the "Launch Binder" badge above
2. Wait for environment to build (20-30 minutes first time, faster after)
3. Open `example-notebooks/QIIME2_Introduction.ipynb` to get started
4. QIIME2 2025.10 is ready to use in notebooks!

## 📦 What's Included

- **QIIME2 Amplicon 2025.10** with all core plugins
- **JupyterLab** environment with Python 3.9
- **Example notebooks** demonstrating QIIME2 usage
- **Sample data** from Moving Pictures tutorial
- **Interactive visualizations** in notebooks

### QIIME2 Plugins
All amplicon distribution plugins:
- q2-dada2, q2-deblur: Sequence denoising
- q2-diversity: Alpha/beta diversity analysis
- q2-feature-classifier: Taxonomic classification
- q2-emperor: 3D PCoA plots
- q2-phylogeny: Phylogenetic tree building
- Plus 15+ more plugins

## 📚 Example Notebooks

- `QIIME2_Introduction.ipynb`: Version check and basic usage
- More notebooks available in `example-notebooks/`

## 💻 Usage

### In Jupyter Notebooks

```python
# Check QIIME2 version
import qiime2
print(qiime2.__version__)  # Should show 2025.10.x

# Run QIIME2 commands with !
!qiime --version
!qiime info

# Load artifacts
from qiime2 import Artifact
table = Artifact.load('table.qza')
```

### Shell Commands

```bash
# In notebook cells, use ! prefix
!qiime demux summarize \
  --i-data demux.qza \
  --o-visualization demux.qzv

# View visualizations
!qiime tools view demux.qzv
```

## ⚠️ Resource Limitations

Binder provides limited resources:

| Resource | Limit |
|----------|-------|
| RAM | ~2 GB |
| CPU | 1-2 cores |
| Storage | ~10 GB |
| Idle timeout | 10 minutes |
| Maximum session | 12 hours |

**Recommended for**:
- ✅ Tutorials and learning
- ✅ Small datasets (<100MB)
- ✅ Testing workflows
- ✅ Educational purposes

**Not recommended for**:
- ❌ Large datasets (>1GB)
- ❌ Production analyses
- ❌ Long computations (>2 hours)

## 🧪 Tutorial Data

Sample data for QIIME2 2025.10 tutorials:

```python
# Moving Pictures tutorial
!wget "https://data.qiime2.org/2025.10/tutorials/moving-pictures/sample-metadata.tsv"
!wget "https://data.qiime2.org/2025.10/tutorials/moving-pictures/emp-single-end-sequences.qza"

# Atacama Soils tutorial
!wget "https://data.qiime2.org/2025.10/tutorials/atacama-soils/sample-metadata.tsv"
```

## 🔧 Optimization Tips

### 1. Use Subsampling for Large Datasets
```python
!qiime feature-table filter-samples \
  --i-table table.qza \
  --p-min-frequency 100 \
  --o-filtered-table filtered-table.qza
```

### 2. Limit Thread Usage
```python
!qiime dada2 denoise-single \
  --p-n-threads 1 \  # Single thread for Binder
  # ... other parameters
```

### 3. Download Results Before Session Expires
```python
from IPython.display import FileLink
FileLink('table.qza')  # Creates download link
```

## 📊 Visualizations

QIIME2 visualizations work in Binder:

```python
from qiime2 import Visualization

# Load and display in notebook
viz = Visualization.load('demux.qzv')
viz  # Display inline
```

Or use the QIIME2 viewer:
```bash
!qiime tools view demux.qzv
# Opens in new browser tab
```

## 📝 Build Configuration

Binder uses these configuration files:

- `binder/environment.yml`: Conda environment with QIIME2 2025.10
- `binder/postBuild`: Post-build optimization script
- `binder/runtime.txt`: Python 3.9 specification

**Build time expectations**:
- First build: 20-30 minutes (full conda environment)
- Cached builds: 5-10 minutes
- Tip: Be patient! QIIME2 is a large environment

## 📚 Documentation

### QIIME2 Resources
- [QIIME2 2025.10 Docs](https://docs.qiime2.org/2025.10/)
- [Moving Pictures Tutorial](https://docs.qiime2.org/2025.10/tutorials/moving-pictures/)
- [QIIME2 Forum](https://forum.qiime2.org/)

### Binder Resources
- [Binder Documentation](https://mybinder.readthedocs.io/)
- [Jupyter Notebook Guide](https://jupyter-notebook.readthedocs.io/)

## 🐛 Troubleshooting

### Build Takes Too Long
**Solution**: Binder builds can take 20-30 minutes first time. Be patient or try later.

### Session Timeout
**Solution**: Download results frequently. Sessions expire after 10 minutes idle.

### Out of Memory
**Solution**: Use smaller datasets or try these platforms with more resources:
- Google Colab (more RAM)
- Local installation
- Cloud platforms

### Visualization Not Displaying
**Solution**: Try refreshing or use:
```python
from qiime2 import Visualization
viz = Visualization.load('file.qzv')
viz  # Display inline
```

## 🔄 For Better Performance

For larger analyses, consider:

1. **Google Colab**: 12GB RAM, GPU access
2. **GitHub Codespaces**: Configurable resources
3. **Local Installation**: Full system resources
4. **Cloud Platforms**: Oracle, AWS, GCP, Azure

See [VERSION_NOTES.md](VERSION_NOTES.md) for detailed 2025.10 information.

## 📝 Changelog

### Version 2025.10 (November 2024)
- **Upgraded** from QIIME2 2025.7 to 2025.10
- **Added** Binder support with optimized build
- **Updated** all tutorial data URLs to 2025.10
- **Added** example notebooks
- **Improved** build caching for faster launches

## 📄 License

This Binder configuration is provided as-is for educational and research purposes. QIIME2 is licensed under the BSD 3-Clause License.

---

**Maintained by**: [@nycmyc](https://github.com/nycmyc)
**Repository**: [https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod](https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod)
**QIIME2 Version**: 2025.10
**Platform**: Binder / MyBinder.org
