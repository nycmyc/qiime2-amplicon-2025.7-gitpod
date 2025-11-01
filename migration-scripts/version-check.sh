#!/bin/bash
# QIIME2 2025.10 Version Check Script

set -e

EXPECTED_VERSION="2025.10"
BOLD='\033[1m'
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

echo "========================================="
echo "QIIME2 Version Check Script"
echo "Expected Version: $EXPECTED_VERSION"
echo "========================================="
echo ""

# Check if qiime command exists
if ! command -v qiime &> /dev/null; then
    echo -e "${RED}❌ QIIME2 not found${NC}"
    echo "   Please install QIIME2 first."
    exit 1
fi

# Get installed version
INSTALLED_VERSION=$(qiime info 2>/dev/null | grep "QIIME 2 release" | cut -d: -f2 | tr -d ' ')

if [ -z "$INSTALLED_VERSION" ]; then
    echo -e "${RED}❌ Could not determine QIIME2 version${NC}"
    exit 1
fi

echo -e "Installed version: ${BOLD}$INSTALLED_VERSION${NC}"

# Check if it matches expected version
if echo "$INSTALLED_VERSION" | grep -q "$EXPECTED_VERSION"; then
    echo -e "${GREEN}✅ QIIME2 $EXPECTED_VERSION verified!${NC}"
    echo ""
    echo "Environment details:"
    conda env list | grep qiime2 || echo "  (conda not available)"
    echo ""
    echo "✅ All checks passed!"
    exit 0
else
    echo -e "${YELLOW}⚠️  Warning: Expected $EXPECTED_VERSION, found $INSTALLED_VERSION${NC}"
    echo ""
    echo "This may cause compatibility issues. Consider upgrading:"
    echo "  conda env remove -n qiime2-amplicon-$INSTALLED_VERSION"
    echo "  # Then install 2025.10 following platform-specific instructions"
    exit 1
fi
