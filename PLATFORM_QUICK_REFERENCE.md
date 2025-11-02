# QIIME2 2025.10 Platform Quick Reference

One-page reference for all platforms with URLs, commands, and quick-start instructions.

---

## 🚀 Quick Launch Links

| Platform | Launch URL | Branch |
|----------|-----------|--------|
| **GitHub Codespaces** | https://github.com/codespaces/new?repo=nycmyc/qiime2-amplicon-2025.7-gitpod&ref=claude/github-codespaces-migration-011CUhtcsjFAvbCA5anHdTqN | `claude/github-codespaces-migration-011CUhtcsjFAvbCA5anHdTqN` |
| **Binder** | https://mybinder.org/v2/gh/nycmyc/qiime2-amplicon-2025.7-gitpod/claude/binder-migration-011CUhtcsjFAvbCA5anHdTqN | `claude/binder-migration-011CUhtcsjFAvbCA5anHdTqN` |
| **Google Colab** | https://colab.research.google.com/github/nycmyc/qiime2-amplicon-2025.7-gitpod/blob/claude/colab-migration-011CUhtcsjFAvbCA5anHdTqN/QIIME2_Setup.ipynb | `claude/colab-migration-011CUhtcsjFAvbCA5anHdTqN` |

---

## 📋 Platform-by-Platform Guide

### 1️⃣ GitHub Codespaces (Recommended)

**Branch:** `claude/github-codespaces-migration-011CUhtcsjFAvbCA5anHdTqN`

#### Quick Start
```bash
# 1. Create Codespace from branch
# 2. Wait 15-20 minutes for setup
# 3. QIIME2 auto-activates in terminal
```

#### Verification Commands
```bash
qiime --version          # Should show: q2cli version 2025.10.x
qiime info              # Show system info
conda env list          # Should show: qiime2-amplicon-2025.10
```

#### Key Configuration Files
- `.devcontainer/devcontainer.json` - VS Code settings
- `.devcontainer/Dockerfile` - Container image
- `.devcontainer/setup.sh` - Installation script
- `.devcontainer/postCreateCommand.sh` - Post-setup

#### Installation URL
```
https://raw.githubusercontent.com/qiime2/distributions/refs/heads/dev/2025.10/amplicon/released/qiime2-amplicon-ubuntu-latest-conda.yml
```

#### Sample Workflow
```bash
# Create working directory
mkdir -p ~/moving-pictures && cd ~/moving-pictures

# Download 2025.10 data
wget "https://data.qiime2.org/2025.10/tutorials/moving-pictures/sample-metadata.tsv"
wget "https://data.qiime2.org/2025.10/tutorials/moving-pictures/emp-single-end-sequences.qza"

# Run analysis
qiime demux summarize \
  --i-data emp-single-end-sequences.qza \
  --o-visualization demux.qzv

# View (opens on port 8080)
qiime tools view demux.qzv
```

#### Resources
- 2-core: 8GB RAM, 32GB storage (free tier)
- 4-core: 16GB RAM, 32GB storage (paid)
- 8-core: 32GB RAM, 64GB storage (paid)

---

### 2️⃣ Oracle Cloud Free Tier (Best Free Resources)

**Branch:** `claude/oracle-cloud-migration-011CUhtcsjFAvbCA5anHdTqN`

#### Quick Start
```bash
# 1. Create Oracle Cloud account (free)
# 2. Create VM.Standard.A1.Flex instance (Ubuntu 22.04)
# 3. SSH into instance
# 4. Run installation script

ssh ubuntu@<your-instance-ip>
wget https://raw.githubusercontent.com/nycmyc/qiime2-amplicon-2025.7-gitpod/claude/oracle-cloud-migration-011CUhtcsjFAvbCA5anHdTqN/oracle-cloud/setup-scripts/install-qiime2.sh
chmod +x install-qiime2.sh
./install-qiime2.sh
source ~/.bashrc
```

#### Verification Commands
```bash
qiime --version          # Should show: q2cli version 2025.10.x
qiime info
free -h                  # Check RAM (should see 12-24GB)
df -h                    # Check storage
```

#### Key Configuration Files
- `oracle-cloud/setup-scripts/install-qiime2.sh` - Automated installer
- `oracle-cloud/terraform/variables.tf` - Infrastructure as Code
- `oracle-cloud/docker/Dockerfile` - Container option

#### Installation Script Variables
```bash
QIIME2_VERSION="2025.10"
ENV_NAME="qiime2-amplicon-2025.10"
CONDA_YML_URL="https://raw.githubusercontent.com/qiime2/distributions/refs/heads/dev/2025.10/amplicon/released/qiime2-amplicon-ubuntu-latest-conda.yml"
```

#### Terraform Quick Deploy
```bash
cd oracle-cloud/terraform
terraform init

# Create terraform.tfvars
cat > terraform.tfvars <<EOF
tenancy_ocid     = "ocid1.tenancy..."
user_ocid        = "ocid1.user..."
fingerprint      = "aa:bb:cc..."
private_key_path = "~/.oci/oci_api_key.pem"
region           = "us-ashburn-1"
compartment_ocid = "ocid1.compartment..."
qiime2_version   = "2025.10"
instance_ocpus   = 2
instance_memory_gb = 12
EOF

terraform apply
```

#### Docker Option
```bash
docker build -t qiime2:2025.10 -f oracle-cloud/docker/Dockerfile .
docker run -it -v $(pwd)/data:/data -p 8080:8080 qiime2:2025.10
```

#### Resources (Forever Free)
- 4 ARM CPU cores (Ampere)
- 24GB RAM
- 200GB storage
- No time limits!

#### Documentation
- Setup guide: `ORACLE-SETUP.md`
- Terraform: `oracle-cloud/terraform/`
- Docker: `oracle-cloud/docker/`

---

### 3️⃣ Google Colab (Best for Notebooks)

**Branch:** `claude/colab-migration-011CUhtcsjFAvbCA5anHdTqN`

#### Quick Start
```
1. Open: https://colab.research.google.com/github/nycmyc/qiime2-amplicon-2025.7-gitpod/blob/claude/colab-migration-011CUhtcsjFAvbCA5anHdTqN/QIIME2_Setup.ipynb
2. Run setup cell (takes 15-20 minutes)
3. Start analyzing!
```

#### Setup Code (Run in first cell)
```python
import os
import sys

QIIME2_VERSION = "2025.10"
ENV_NAME = f"qiime2-amplicon-{QIIME2_VERSION}"

# Install Miniconda
if not os.path.exists('/opt/conda'):
    !wget -q https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /tmp/miniconda.sh
    !bash /tmp/miniconda.sh -b -p /opt/conda
    !rm /tmp/miniconda.sh
    os.environ['PATH'] = f"/opt/conda/bin:{os.environ['PATH']}"

# Download QIIME2 environment
env_url = f"https://raw.githubusercontent.com/qiime2/distributions/refs/heads/dev/{QIIME2_VERSION}/amplicon/released/qiime2-amplicon-ubuntu-latest-conda.yml"
!wget -q {env_url} -O /tmp/qiime2-env.yml

# Create environment
!/opt/conda/bin/conda env create -n {ENV_NAME} --file /tmp/qiime2-env.yml -y -q
!rm /tmp/qiime2-env.yml

# Activate
os.environ['PATH'] = f"/opt/conda/envs/{ENV_NAME}/bin:{os.environ['PATH']}"
sys.path.insert(0, f"/opt/conda/envs/{ENV_NAME}/lib/python3.9/site-packages")

!qiime --version
```

#### Verification
```python
!qiime --version  # Should show: q2cli version 2025.10.x
!qiime info
```

#### Helper Utilities
```python
import colab_setup

colab_setup.check_version()                           # Verify 2025.10
colab_setup.download_tutorial_data('moving-pictures') # Get data
colab_setup.list_plugins()                            # Show plugins
```

#### Download Tutorial Data
```python
!mkdir -p data && cd data
!wget "https://data.qiime2.org/2025.10/tutorials/moving-pictures/sample-metadata.tsv"
!wget "https://data.qiime2.org/2025.10/tutorials/moving-pictures/emp-single-end-sequences.qza"
```

#### Save Results to Google Drive
```python
from google.colab import drive
drive.mount('/content/drive')

!cp *.qza /content/drive/MyDrive/qiime2-results/
!cp *.qzv /content/drive/MyDrive/qiime2-results/
```

#### Download Results
```python
from google.colab import files
files.download('demux.qzv')
files.download('table.qza')
```

#### Resources
- Free: 2 cores, 12GB RAM, 100GB storage
- Colab Pro: 4+ cores, 25GB RAM, more persistent

---

### 4️⃣ Binder (Best for Quick Demos)

**Branch:** `claude/binder-migration-011CUhtcsjFAvbCA5anHdTqN`

#### Quick Start
```
1. Click: https://mybinder.org/v2/gh/nycmyc/qiime2-amplicon-2025.7-gitpod/claude/binder-migration-011CUhtcsjFAvbCA5anHdTqN
2. Wait for build (20-30 min first time, cached after)
3. Open example-notebooks/QIIME2_Introduction.ipynb
```

#### Configuration Files
- `binder/environment.yml` - Conda environment
- `binder/postBuild` - Post-build setup
- `binder/runtime.txt` - Python version

#### Environment Configuration
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
  - jupyter
  - jupyterlab
```

#### Verification in Notebook
```python
import qiime2
import sys

print(f"Python: {sys.version}")
print(f"QIIME2: {qiime2.__version__}")
assert qiime2.__version__.startswith('2025.10')
```

#### Run QIIME2 Commands
```python
!qiime --version
!qiime info
!qiime demux summarize --help
```

#### Resources (Limited!)
- 1-2 cores
- ~2GB RAM
- ~10GB storage
- 10 min idle timeout
- ⚠️ Only for small datasets

---

### 5️⃣ Lightning.ai (Best for GPU)

**Branch:** `claude/lightning-ai-migration-011CUhtcsjFAvbCA5anHdTqN`

#### Quick Start
```bash
# 1. Create Lightning.ai account
# 2. Create new Studio
# 3. Clone repository
git clone https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod.git
cd qiime2-amplicon-2025.7-gitpod
git checkout claude/lightning-ai-migration-011CUhtcsjFAvbCA5anHdTqN

# 4. Run setup
bash lightning-ai/setup_qiime2.sh
source /root/.bashrc

# 5. Verify
qiime --version
```

#### Configuration Files
- `lightning-ai/setup_qiime2.sh` - Installation script
- `lightning-ai/lightning.yaml` - Lightning configuration

#### Lightning.yaml Configuration
```yaml
name: qiime2-amplicon-2025.10

environment:
  variables:
    QIIME2_VERSION: "2025.10"

compute:
  gpu: false  # Set to true for GPU
  cpu: 4
  memory: 16GB

volumes:
  - name: qiime2-data
    mount: /data
    size: 50GB
```

#### Enable GPU
```yaml
compute:
  gpu: true
  gpu_type: "A10"  # or "V100", "A100"
```

#### Setup Script Variables
```bash
export QIIME2_VERSION="2025.10"
ENV_NAME="qiime2-amplicon-${QIIME2_VERSION}"
CONDA_YML_URL="https://raw.githubusercontent.com/qiime2/distributions/refs/heads/dev/${QIIME2_VERSION}/amplicon/released/qiime2-amplicon-ubuntu-latest-conda.yml"
```

#### Resources
- 4+ CPU cores
- 16GB+ RAM
- GPU available (A10, V100, A100)
- 50GB+ persistent storage
- Credits-based pricing

---

### 6️⃣ Gitpod (Legacy - Being Sunset)

**Branch:** `claude/update-to-2025.10-011CUhtcsjFAvbCA5anHdTqN`

#### Quick Start
```
⚠️ WARNING: Gitpod Classic is being sunset. Use GitHub Codespaces instead.

1. Click: https://gitpod.io/#https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/update-to-2025.10-011CUhtcsjFAvbCA5anHdTqN
2. Wait for setup (~10 minutes)
3. QIIME2 auto-activates
```

#### Configuration
- `.gitpod.yml` - Gitpod configuration
- `.gitpod.Dockerfile` - Base image

#### Environment Configuration
```yaml
tasks:
  - name: Setup QIIME2 Amplicon 2025.10
    init: |
      conda env create -n qiime2-amplicon-2025.10 \
        --file https://raw.githubusercontent.com/qiime2/distributions/refs/heads/dev/2025.10/amplicon/released/qiime2-amplicon-ubuntu-latest-conda.yml
    command: |
      conda activate qiime2-amplicon-2025.10
```

#### Migration Notice
See `CHANGELOG.md` for migration paths to:
- GitHub Codespaces (recommended)
- Oracle Cloud Free Tier
- Google Colab
- Other platforms

---

## 🔧 Universal Commands (All Platforms)

### Verification Commands
```bash
qiime --version              # Check version (should be 2025.10.x)
qiime info                   # System information
conda env list               # List environments
which qiime                  # Show qiime location
```

### Common Data URLs (2025.10)
```bash
# Moving Pictures Tutorial
BASE="https://data.qiime2.org/2025.10/tutorials/moving-pictures"
wget "${BASE}/sample-metadata.tsv"
wget "${BASE}/emp-single-end-sequences.qza"

# Atacama Soils Tutorial
BASE="https://data.qiime2.org/2025.10/tutorials/atacama-soils"
wget "${BASE}/sample-metadata.tsv"
```

### Documentation Links (2025.10)
- Main docs: https://docs.qiime2.org/2025.10/
- Moving Pictures: https://docs.qiime2.org/2025.10/tutorials/moving-pictures/
- Atacama Soils: https://docs.qiime2.org/2025.10/tutorials/atacama-soils/
- Forum: https://forum.qiime2.org/

### Environment Activation
```bash
# All platforms use:
conda activate qiime2-amplicon-2025.10
```

---

## 🧪 Testing Commands

### Quick Test Suite
```bash
# 1. Version check
qiime --version | grep "2025.10"

# 2. Plugin test
qiime info | grep "q2-dada2"

# 3. Simple command
echo -e "sample-id\nSample1" > test.tsv
qiime metadata tabulate --m-input-file test.tsv

# 4. Artifact test (if you have data)
qiime tools peek your-artifact.qza
```

### Performance Test (DADA2)
```bash
# Download test data
wget "https://data.qiime2.org/2025.10/tutorials/moving-pictures/emp-single-end-sequences.qza"

# Time denoising
time qiime dada2 denoise-single \
  --i-demultiplexed-seqs emp-single-end-sequences.qza \
  --p-trim-left 0 \
  --p-trunc-len 120 \
  --p-n-threads 2 \
  --o-representative-sequences rep-seqs.qza \
  --o-table table.qza \
  --o-denoising-stats stats.qza
```

---

## 📊 Resource Requirements

### Minimum Requirements
- **Installation**: 8GB RAM, 10GB storage
- **Basic tutorials**: 4GB RAM, 5GB storage
- **Medium datasets** (1-10GB): 12GB RAM, 50GB storage
- **Large datasets** (>10GB): 16-24GB RAM, 100GB+ storage

### Platform Recommendations by Dataset Size

| Dataset Size | Recommended Platform |
|-------------|---------------------|
| <100MB | Any platform |
| 100MB-1GB | Binder, Colab, Codespaces |
| 1-10GB | Colab Pro, Codespaces, Oracle Cloud |
| >10GB | Oracle Cloud, Lightning.ai (GPU) |

---

## 🆘 Troubleshooting Quick Reference

### Command Not Found
```bash
# Check environment
conda env list

# Activate
conda activate qiime2-amplicon-2025.10

# Verify
which qiime
```

### Wrong Version
```bash
# Check version
qiime --version

# If not 2025.10, reinstall:
conda env remove -n qiime2-amplicon-2025.10
# Then follow platform-specific installation
```

### Out of Memory
```bash
# Reduce threads
--p-n-threads 1

# Reduce sampling depth
--p-sampling-depth 500

# Use smaller dataset
qiime feature-table filter-samples \
  --i-table table.qza \
  --p-min-frequency 100 \
  --o-filtered-table filtered.qza
```

---

## 📞 Support Resources

- **QIIME2 Forum**: https://forum.qiime2.org/
- **Documentation**: https://docs.qiime2.org/2025.10/
- **GitHub Issues**: https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/issues
- **Version Check Script**: `bash migration-scripts/version-check.sh`

---

**Last Updated**: November 2024
**QIIME2 Version**: 2025.10
**Repository**: https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod
