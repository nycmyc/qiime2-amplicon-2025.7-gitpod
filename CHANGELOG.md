# Changelog

All notable changes to this project will be documented in this file.

## [2025.10] - 2024-11-01

### ⚠️ IMPORTANT: Gitpod Classic Sunset Notice

**Gitpod Classic is being sunset.** This is the final update for the Gitpod configuration. Users are encouraged to migrate to alternative platforms:

- **GitHub Codespaces**: Best replacement for Gitpod (see `github-codespaces-migration` branch)
- **Oracle Cloud Free Tier**: Forever free with more resources (see `oracle-cloud-migration` branch)
- **Google Colab**: Free Jupyter environment (see `colab-migration` branch)
- **Binder**: Free notebook environment (see `binder-migration` branch)
- **Lightning.ai**: GPU-enabled platform (see `lightning-ai-migration` branch)

### Changed
- Updated QIIME2 Amplicon from 2025.7 to 2025.10
- Updated conda environment name to `qiime2-amplicon-2025.10`
- Updated all documentation links to 2025.10 version
- Updated tutorial data URLs to 2025.10 versions
- Updated environment file URL to QIIME2 2025.10 distribution

### Added
- Deprecation notice in terminal startup message
- Migration guidance to alternative platforms
- CHANGELOG.md file
- Links to migration branches in README

### Fixed
- None (maintenance release)

## [2025.7] - 2024-10-15

### Added
- Initial Gitpod configuration for QIIME2 Amplicon 2025.7
- Automatic conda environment setup
- Retry logic for reliable installation
- Port 8080 configuration for visualizations
- VS Code Python extensions
- Resource tier documentation (Standard vs Large)
- Comprehensive README with tutorials

### Features
- Persistent conda installation in `/workspace/miniconda3`
- Auto-activation of QIIME2 environment
- Quick command reference in terminal
- Support for Moving Pictures and Atacama Soils tutorials

---

## Migration Guide

### From 2025.7 to 2025.10

**Artifacts**: All QIIME2 artifacts (.qza files) from 2025.7 are compatible with 2025.10.

**Scripts**: Update environment name in activation scripts:
```bash
# Old
conda activate qiime2-amplicon-2025.7

# New
conda activate qiime2-amplicon-2025.10
```

**Data URLs**: Update tutorial data URLs:
```bash
# Old
https://data.qiime2.org/2025.7/tutorials/...

# New
https://data.qiime2.org/2025.10/tutorials/...
```

### To Alternative Platforms

See migration branches for platform-specific setup:

```bash
# GitHub Codespaces
git checkout github-codespaces-migration

# Oracle Cloud
git checkout oracle-cloud-migration

# Google Colab
git checkout colab-migration

# Binder
git checkout binder-migration

# Lightning.ai
git checkout lightning-ai-migration
```

---

**Maintained by**: [@nycmyc](https://github.com/nycmyc)
**Last Updated**: November 1, 2024
