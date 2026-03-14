# Environment Setup Guide

## Prerequisites

| Tool | Version | Install |
|---|---|---|
| AWS CLI | v2+ | [docs.aws.amazon.com](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html) |
| Terraform | v1.5+ | [developer.hashicorp.com](https://developer.hashicorp.com/terraform/downloads) |
| Docker Desktop | Latest | [docker.com](https://www.docker.com/products/docker-desktop) |
| uvx (via uv) | Latest | `pip install uv` |
| Git | v2+ | [git-scm.com](https://git-scm.com/downloads) |
| VS Code | Latest | [code.visualstudio.com](https://code.visualstudio.com) |
| Claude Code | Latest | `irm https://claude.ai/install.ps1 \| iex` (Windows) |

## Verification Commands

```bash
aws --version
terraform -v
docker -v
uvx --version
git --version
code --version
claude --version
```

## AWS Configuration

```bash
aws configure
# Enter: Access Key ID, Secret Access Key, Region (ap-south-1), Output (json)

# Verify
aws sts get-caller-identity
```

## Clone and Configure

```bash
git clone https://github.com/<your-username>/agentic-devops-claude-code.git
cd agentic-devops-claude-code

# Set up credentials
cp .claude/settings.local.json.example .claude/settings.local.json
# Edit settings.local.json with your AWS profile name

# Make hooks executable
chmod +x .claude/hooks/*.sh

# Launch Claude Code
claude
```
