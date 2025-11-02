# Platform-Specific Badges

Badges to add to each platform's README file for better visibility and status indication.

---

## 🎨 Universal Badges (All Platforms)

Add these to the top of every platform README:

```markdown
[![QIIME2 Version](https://img.shields.io/badge/QIIME2-2025.10-green.svg)](https://docs.qiime2.org/2025.10/)
[![Status](https://img.shields.io/badge/Status-Production%20Ready-brightgreen.svg)](../TEST_RESULTS.md)
[![Tested](https://img.shields.io/badge/Tested-Passing-success.svg)](../TEST_RESULTS.md)
[![Documentation](https://img.shields.io/badge/Docs-Complete-blue.svg)](https://docs.qiime2.org/2025.10/)
```

**Renders as:**

[![QIIME2 Version](https://img.shields.io/badge/QIIME2-2025.10-green.svg)](https://docs.qiime2.org/2025.10/)
[![Status](https://img.shields.io/badge/Status-Production%20Ready-brightgreen.svg)](../TEST_RESULTS.md)
[![Tested](https://img.shields.io/badge/Tested-Passing-success.svg)](../TEST_RESULTS.md)
[![Documentation](https://img.shields.io/badge/Docs-Complete-blue.svg)](https://docs.qiime2.org/2025.10/)

---

## 🔷 GitHub Codespaces Badges

**Branch**: `claude/github-codespaces-migration-011CUhtcsjFAvbCA5anHdTqN`

```markdown
<!-- Platform-Specific Badges -->
[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new?repo=nycmyc/qiime2-amplicon-2025.7-gitpod&ref=claude/github-codespaces-migration-011CUhtcsjFAvbCA5anHdTqN)
[![Platform](https://img.shields.io/badge/Platform-GitHub%20Codespaces-blue.svg)](https://github.com/features/codespaces)
[![Container](https://img.shields.io/badge/Container-devcontainer-blue.svg)](.devcontainer/devcontainer.json)
[![Setup Time](https://img.shields.io/badge/Setup%20Time-15--20%20min-yellow.svg)](README.md)

<!-- Resource Badges -->
[![CPU](https://img.shields.io/badge/CPU-2--8%20cores-informational.svg)](README.md#resources)
[![RAM](https://img.shields.io/badge/RAM-8--32%20GB-informational.svg)](README.md#resources)
[![Storage](https://img.shields.io/badge/Storage-32--64%20GB-informational.svg)](README.md#resources)

<!-- Feature Badges -->
[![VS Code](https://img.shields.io/badge/IDE-VS%20Code-007ACC.svg)](https://code.visualstudio.com/)
[![Port Forwarding](https://img.shields.io/badge/Port-8080-orange.svg)](README.md#visualizations)
[![Auto Activation](https://img.shields.io/badge/Auto%20Activation-Yes-success.svg)](README.md)
```

---

## 🟠 Oracle Cloud Badges

**Branch**: `claude/oracle-cloud-migration-011CUhtcsjFAvbCA5anHdTqN`

```markdown
<!-- Platform-Specific Badges -->
[![Platform](https://img.shields.io/badge/Platform-Oracle%20Cloud-red.svg)](https://www.oracle.com/cloud/)
[![Tier](https://img.shields.io/badge/Tier-Always%20Free-brightgreen.svg)](https://www.oracle.com/cloud/free/)
[![Architecture](https://img.shields.io/badge/Architecture-ARM%20%28Ampere%29-blue.svg)](README.md)
[![Setup Time](https://img.shields.io/badge/Setup%20Time-15--20%20min-yellow.svg)](ORACLE-SETUP.md)

<!-- Resource Badges (Forever Free!) -->
[![CPU](https://img.shields.io/badge/CPU-4%20cores-brightgreen.svg)](README.md#resources)
[![RAM](https://img.shields.io/badge/RAM-24%20GB-brightgreen.svg)](README.md#resources)
[![Storage](https://img.shields.io/badge/Storage-200%20GB-brightgreen.svg)](README.md#resources)
[![Cost](https://img.shields.io/badge/Cost-FREE%20Forever-gold.svg)](ORACLE-SETUP.md)

<!-- Deployment Options -->
[![Terraform](https://img.shields.io/badge/IaC-Terraform-623CE4.svg)](oracle-cloud/terraform/)
[![Docker](https://img.shields.io/badge/Container-Docker-2496ED.svg)](oracle-cloud/docker/)
[![Shell Script](https://img.shields.io/badge/Install-Bash%20Script-green.svg)](oracle-cloud/setup-scripts/)
```

---

## 🟡 Google Colab Badges

**Branch**: `claude/colab-migration-011CUhtcsjFAvbCA5anHdTqN`

```markdown
<!-- Platform-Specific Badges -->
[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/nycmyc/qiime2-amplicon-2025.7-gitpod/blob/claude/colab-migration-011CUhtcsjFAvbCA5anHdTqN/QIIME2_Setup.ipynb)
[![Platform](https://img.shields.io/badge/Platform-Google%20Colab-yellow.svg)](https://colab.research.google.com/)
[![Interface](https://img.shields.io/badge/Interface-Jupyter-orange.svg)](README.md)
[![Setup Time](https://img.shields.io/badge/Setup%20Time-15--20%20min-yellow.svg)](README.md)

<!-- Resource Badges -->
[![CPU](https://img.shields.io/badge/CPU-2%20cores-informational.svg)](README.md#resources)
[![RAM](https://img.shields.io/badge/RAM-12%20GB-informational.svg)](README.md#resources)
[![Storage](https://img.shields.io/badge/Storage-100%20GB-informational.svg)](README.md#resources)
[![GPU](https://img.shields.io/badge/GPU-T4%20Available-76B900.svg)](README.md)

<!-- Feature Badges -->
[![Python](https://img.shields.io/badge/Python-3.9-3776AB.svg)](README.md)
[![Google Drive](https://img.shields.io/badge/Storage-Google%20Drive-4285F4.svg)](README.md#save-to-google-drive)
[![Session](https://img.shields.io/badge/Max%20Session-12%20hours-orange.svg)](README.md)
```

---

## 🟠 Binder Badges

**Branch**: `claude/binder-migration-011CUhtcsjFAvbCA5anHdTqN`

```markdown
<!-- Platform-Specific Badges -->
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/nycmyc/qiime2-amplicon-2025.7-gitpod/claude/binder-migration-011CUhtcsjFAvbCA5anHdTqN)
[![Platform](https://img.shields.io/badge/Platform-Binder-f5792a.svg)](https://mybinder.org/)
[![Interface](https://img.shields.io/badge/Interface-JupyterLab-orange.svg)](README.md)
[![Build Time](https://img.shields.io/badge/Build%20Time-20--30%20min-yellow.svg)](README.md)

<!-- Resource Badges -->
[![CPU](https://img.shields.io/badge/CPU-1--2%20cores-informational.svg)](README.md#resources)
[![RAM](https://img.shields.io/badge/RAM-2%20GB-orange.svg)](README.md#resources)
[![Storage](https://img.shields.io/badge/Storage-10%20GB-orange.svg)](README.md#resources)
[![Warning](https://img.shields.io/badge/Dataset%20Size-Small%20Only-red.svg)](README.md#resource-limitations)

<!-- Feature Badges -->
[![No Account](https://img.shields.io/badge/Account-Not%20Required-success.svg)](README.md)
[![Share](https://img.shields.io/badge/Share-URL%20Link-blue.svg)](README.md)
[![Timeout](https://img.shields.io/badge/Idle%20Timeout-10%20min-yellow.svg)](README.md)
```

---

## 🟣 Lightning.ai Badges

**Branch**: `claude/lightning-ai-migration-011CUhtcsjFAvbCA5anHdTqN`

```markdown
<!-- Platform-Specific Badges -->
[![Platform](https://img.shields.io/badge/Platform-Lightning.ai-792ee5.svg)](https://lightning.ai/)
[![GPU](https://img.shields.io/badge/GPU-Available-76B900.svg)](README.md)
[![Setup Time](https://img.shields.io/badge/Setup%20Time-15--20%20min-yellow.svg)](README.md)

<!-- Resource Badges -->
[![CPU](https://img.shields.io/badge/CPU-4+%20cores-informational.svg)](README.md#resources)
[![RAM](https://img.shields.io/badge/RAM-16+%20GB-informational.svg)](README.md#resources)
[![Storage](https://img.shields.io/badge/Storage-50+%20GB-informational.svg)](README.md#resources)
[![GPU Types](https://img.shields.io/badge/GPU-A10%2FV100%2FA100-success.svg)](lightning-ai/lightning.yaml)

<!-- Feature Badges -->
[![Persistent](https://img.shields.io/badge/Storage-Persistent-success.svg)](README.md)
[![Scalable](https://img.shields.io/badge/Resources-Scalable-blue.svg)](README.md)
[![Collaboration](https://img.shields.io/badge/Team-Collaboration-orange.svg)](README.md)
[![Pricing](https://img.shields.io/badge/Pricing-Credits-yellow.svg)](https://lightning.ai/pricing)
```

---

## ⚠️ Gitpod Legacy Badges

**Branch**: `claude/update-to-2025.10-011CUhtcsjFAvbCA5anHdTqN`

```markdown
<!-- Platform-Specific Badges -->
[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/claude/update-to-2025.10-011CUhtcsjFAvbCA5anHdTqN)
[![Platform](https://img.shields.io/badge/Platform-Gitpod%20(Legacy)-orange.svg)](https://www.gitpod.io/)
[![Status](https://img.shields.io/badge/Status-Deprecated-red.svg)](CHANGELOG.md)
[![Migration](https://img.shields.io/badge/Migrate%20To-GitHub%20Codespaces-blue.svg)](CHANGELOG.md#migration-options)

<!-- Deprecation Warning -->
[![Warning](https://img.shields.io/badge/⚠️-Gitpod%20Classic%20Sunset-red.svg)](CHANGELOG.md)
[![Recommended](https://img.shields.io/badge/Recommended-GitHub%20Codespaces-brightgreen.svg)](../claude/github-codespaces-migration-011CUhtcsjFAvbCA5anHdTqN/)

<!-- Resource Badges -->
[![CPU](https://img.shields.io/badge/CPU-4%20cores-informational.svg)](README.md#resources)
[![RAM](https://img.shields.io/badge/RAM-8%20GB-informational.svg)](README.md#resources)
[![Storage](https://img.shields.io/badge/Storage-30%20GB-informational.svg)](README.md#resources)
```

---

## 🛠️ Migration Tools Badges

**Branch**: `claude/migration-tools-011CUhtcsjFAvbCA5anHdTqN`

```markdown
<!-- Utility Badges -->
[![Platform Count](https://img.shields.io/badge/Platforms-6-orange.svg)](PLATFORM_COMPARISON.md)
[![Tests](https://img.shields.io/badge/Tests-31%2F31%20Passed-success.svg)](TEST_RESULTS.md)
[![Documentation](https://img.shields.io/badge/Documentation-Complete-blue.svg)](README.md)

<!-- Tool Badges -->
[![Version Check](https://img.shields.io/badge/Script-Version%20Check-green.svg)](migration-scripts/version-check.sh)
[![Comparison](https://img.shields.io/badge/Guide-Platform%20Comparison-blue.svg)](PLATFORM_COMPARISON.md)
[![Quick Ref](https://img.shields.io/badge/Guide-Quick%20Reference-blue.svg)](PLATFORM_QUICK_REFERENCE.md)
[![Upgrade](https://img.shields.io/badge/Guide-Upgrade%20from%202025.7-blue.svg)](upgrade-guide/FROM_2025.7_TO_2025.10.md)

<!-- Validation Badges -->
[![Syntax](https://img.shields.io/badge/Validation-JSON%2FYAML%2FBash-success.svg)](TEST_RESULTS.md)
[![URLs](https://img.shields.io/badge/Validation-URLs%20Verified-success.svg)](TEST_RESULTS.md)
[![Versions](https://img.shields.io/badge/Validation-Versions%20Confirmed-success.svg)](TEST_RESULTS.md)
```

---

## 🎨 Color Scheme Reference

Standard colors used in badges:

```
Platform Colors:
- GitHub Codespaces: #0969da (blue)
- Oracle Cloud: #red
- Google Colab: #yellow / #f9ab00
- Binder: #f5792a (orange)
- Lightning.ai: #792ee5 (purple)
- Gitpod: #orange

Status Colors:
- Success/Ready: brightgreen / success
- Warning: yellow / orange
- Error/Deprecated: red
- Info: blue / informational
- Special (Forever Free): gold
```

---

## 📋 Badge Implementation Guide

### Step 1: Add to Platform README

For each platform branch, add the appropriate badge set to the top of `README.md`:

```markdown
# QIIME2 Amplicon 2025.10 on [Platform Name]

<!-- Universal Badges -->
[![QIIME2 Version](https://img.shields.io/badge/QIIME2-2025.10-green.svg)](https://docs.qiime2.org/2025.10/)
[![Status](https://img.shields.io/badge/Status-Production%20Ready-brightgreen.svg)](../TEST_RESULTS.md)
...

<!-- Platform-Specific Badges -->
[Platform badges from above]

<!-- Platform-Specific Launch Badge -->
[Launch button badge]

Your existing README content...
```

### Step 2: Update Links

Ensure all badge links point to correct locations:
- Relative paths for same-branch docs: `README.md#section`
- Absolute paths for other branches: `../branch-name/file.md`
- External links: Full URLs

### Step 3: Test Rendering

Preview badges on GitHub to ensure:
- ✅ All badges display correctly
- ✅ All links work
- ✅ Colors render properly
- ✅ Shields.io badges load

---

## 🔗 Custom Badge Generator

Use [Shields.io](https://shields.io/) to create custom badges:

**URL Format**:
```
https://img.shields.io/badge/<LABEL>-<MESSAGE>-<COLOR>.svg
```

**Examples**:
```markdown
<!-- Static Badge -->
![Custom](https://img.shields.io/badge/My-Badge-blue.svg)

<!-- Badge with Link -->
[![Custom](https://img.shields.io/badge/My-Badge-blue.svg)](https://example.com)

<!-- Badge with Special Characters (URL encode) -->
[![Threads](https://img.shields.io/badge/Threads-2--4-informational.svg)](README.md)
```

---

## 📊 Badge Best Practices

1. **Keep it Clean**: Don't overload with too many badges
2. **Relevant Info**: Only show badges that add value
3. **Color Coding**: Use colors consistently
   - Green: Success, free, ready
   - Yellow: Warning, time-based
   - Red: Error, deprecated, limitations
   - Blue: Info, features
4. **Update Regularly**: Keep status badges current
5. **Working Links**: All badges should link to relevant docs

---

## 📝 Badge Maintenance Checklist

When updating platforms:
- [ ] Update version number badges (2025.10 → next version)
- [ ] Update test status if tests change
- [ ] Update resource badges if specs change
- [ ] Update links if documentation moves
- [ ] Test all badge links work
- [ ] Verify badges render on GitHub

---

**Last Updated**: November 2024
**Badge Format**: Shields.io
**Platforms**: 6 + Migration Tools
