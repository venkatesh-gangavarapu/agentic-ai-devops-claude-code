# CLAUDE.md — Project Context

## Project Overview
Static HTML/CSS portfolio website deployed to AWS using S3 and CloudFront.
No JavaScript. No frameworks. No build tools.
Infrastructure managed with Terraform and deployed via Claude Code Skills.

## Architecture
- **Frontend:** Pure HTML/CSS — no JS, no frameworks
- **Hosting:** AWS S3 (static website) + CloudFront (CDN + HTTPS)
- **IaC:** Terraform — resources in `terraform/`
- **Security:** S3 AES256 server-side encryption enabled
- **Agent:** Claude Code with Skills, MCP, and Hooks

## Project Structure
```
site/           → HTML/CSS source files
terraform/      → AWS infrastructure (S3, CloudFront, IAM)
.claude/
  skills/       → Reusable Claude Code Skills
  hooks/        → Safety guard scripts
  settings.json → Hook wiring
CLAUDE.md       → This file (always-on context)
.mcp.json       → MCP server definitions
```

## Conventions
- **No JavaScript** anywhere in this project
- **No JS frameworks** (React, Vue, Alpine, etc.)
- **No CSS frameworks** (Bootstrap, Tailwind, etc.) — custom CSS only
- **Mobile-first CSS** — write mobile styles first, use min-width for larger screens
- **All images** stored in `site/images/` — never inline or in CSS
- **CSS class names** use kebab-case (e.g. `hero-section`, `nav-link`)
- **Terraform** resources named with project prefix
- **Never run** `terraform destroy` or `aws s3 rm --recursive` without explicit confirmation

## Deployment Targets
- **S3 Bucket:** `your-bucket-name`
- **CloudFront Distribution:** `your-distribution-id`
- **AWS Region:** `ap-south-1`
- **AWS Profile:** configured in `settings.local.json`

## Skills Available
- `/scaffold-terraform` — Generate Terraform file structure
- `/tf-plan` — Validate + plan infrastructure changes (read-only)
- `/tf-apply` — Apply infrastructure changes (requires reviewed plan)
- `/deploy` — Sync site to S3 + invalidate CloudFront cache

## Safety Rules
- Always run `/tf-plan` and review output before `/tf-apply`
- Never skip the plan review step
- Never run `terraform destroy` — use targeted resource removal if needed
- All Bash commands are logged to `.claude/deploy.log`
