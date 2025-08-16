# Switch to main branch
git checkout main

# Create BRANCHES.md
cat > BRANCHES.md << 'EOF'
# Branch Organization

This repository has multiple branches to test different QIIME2 installation approaches:

## Branches

### `main`
- Default branch with original configuration
- Contains all documentation and sample notebooks

### `option1-simplified-dockerfile`
- **Approach**: Pre-builds QIIME2 in Docker image
- **Pros**: Faster workspace starts after initial build
- **Cons**: Longer prebuild time (10-15 minutes)
- **Open in Gitpod**: `https://gitpod.io/#https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/option1-simplified-dockerfile`

### `option2-runtime-install`
- **Approach**: Installs QIIME2 when workspace starts
- **Pros**: Simple Docker build, less likely to fail
- **Cons**: Slower first workspace start (5-10 minutes)
- **Open in Gitpod**: `https://gitpod.io/#https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/option2-runtime-install`

### `backup-original`
- Backup of original configuration attempt
- Kept for reference

## How to Test Each Option

1. **Option 1** - Click: [Open Option 1 in Gitpod](https://gitpod.io/#https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/option1-simplified-dockerfile)

2. **Option 2** - Click: [Open Option 2 in Gitpod](https://gitpod.io/#https://github.com/nycmyc/qiime2-amplicon-2025.7-gitpod/tree/option2-runtime-install)

## Switching Between Branches Locally

```bash
# List all branches
git branch -a

# Switch to Option 1
git checkout option1-simplified-dockerfile

# Switch to Option 2
git checkout option2-runtime-install

# Return to main
git checkout main
