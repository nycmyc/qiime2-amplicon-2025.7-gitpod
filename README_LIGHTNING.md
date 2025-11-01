# QIIME2 Amplicon 2025.10 on Lightning.ai ⚡

QIIME2 2025.10 on Lightning.ai with optional GPU acceleration.

## Quick Start

```bash
git clone https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod.git
cd qiime2-amplicon-2025.7-gitpod
git checkout lightning-ai-migration
bash lightning-ai/setup_qiime2.sh
source /root/.bashrc
qiime --version
```

## Features

- QIIME2 Amplicon 2025.10
- Optional GPU acceleration
- Persistent storage
- Flexible compute scaling

## Configuration (lightning.yaml)

```yaml
compute:
  cpu: 4
  memory: 16GB
  gpu: false  # Set to true for GPU

volumes:
  - name: qiime2-data
    size: 50GB
```

## Performance (2025.10)

| Operation | Time (CPU) | Time (GPU) |
|-----------|-----------|------------|
| DADA2 (1M reads) | ~40 min | N/A |
| Taxonomy (5K ASVs) | ~8 min | ~3 min |
| Diversity (500 samples) | ~12 min | N/A |

## Tutorial Data (2025.10)

```bash
wget "https://data.qiime2.org/2025.10/tutorials/moving-pictures/sample-metadata.tsv"
wget "https://data.qiime2.org/2025.10/tutorials/moving-pictures/emp-single-end-sequences.qza"
```

## Documentation

- [QIIME2 2025.10](https://docs.qiime2.org/2025.10/)
- [Lightning.ai](https://lightning.ai/docs)

---

**QIIME2 Version**: 2025.10 | **Platform**: Lightning.ai
