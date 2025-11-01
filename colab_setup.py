"""
QIIME2 2025.10 Setup Utilities for Google Colab
"""

VERSION = "2025.10"

def check_version():
    """Verify QIIME2 version"""
    import subprocess
    try:
        result = subprocess.run(['qiime', '--version'], capture_output=True, text=True)
        version_str = result.stdout.strip()
        if VERSION in version_str:
            print(f"✅ QIIME2 {VERSION} verified!")
            return True
        else:
            print(f"❌ Expected version {VERSION}, found: {version_str}")
            return False
    except Exception as e:
        print(f"❌ Error checking version: {e}")
        return False

def list_plugins():
    """List available QIIME2 plugins"""
    import subprocess
    result = subprocess.run(['qiime', 'info'], capture_output=True, text=True)
    print(result.stdout)

def download_tutorial_data(tutorial='moving-pictures'):
    """Download tutorial data for QIIME2 2025.10"""
    import subprocess
    import os

    base_url = f"https://data.qiime2.org/{VERSION}/tutorials/{tutorial}"

    if tutorial == 'moving-pictures':
        files = [
            'sample-metadata.tsv',
            'emp-single-end-sequences.qza'
        ]
    elif tutorial == 'atacama-soils':
        files = [
            'sample-metadata.tsv'
        ]
    else:
        print(f"Unknown tutorial: {tutorial}")
        return

    os.makedirs(tutorial, exist_ok=True)
    os.chdir(tutorial)

    for file in files:
        url = f"{base_url}/{file}"
        print(f"Downloading {file}...")
        subprocess.run(['wget', '-q', url])

    print(f"✅ Downloaded {len(files)} files to {tutorial}/")

def setup_environment():
    """Complete environment setup"""
    import os
    ENV_NAME = f"qiime2-amplicon-{VERSION}"

    # Add conda environment to PATH
    conda_bin = f"/opt/conda/envs/{ENV_NAME}/bin"
    if os.path.exists(conda_bin):
        os.environ['PATH'] = f"{conda_bin}:{os.environ['PATH']}"
        print(f"✅ Environment {ENV_NAME} activated")
    else:
        print(f"❌ Environment {ENV_NAME} not found")

if __name__ == "__main__":
    print(f"QIIME2 {VERSION} Setup Utilities")
    print("-" * 40)
    check_version()
