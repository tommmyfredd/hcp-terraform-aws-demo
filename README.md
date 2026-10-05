# HCP Terraform + AWS Demo

Minimal VCS-driven demo: creates a secure S3 bucket in AWS via an HCP Terraform workspace using OIDC (dynamic provider credentials).

## Files
- `versions.tf`: Terraform and provider versions, AWS provider config
- `variables.tf`: input variables
- `main.tf`: S3 bucket with versioning, encryption, and public access block
- `outputs.tf`: bucket name, ARN, region

## Workspace requirements
Environment variables set on the workspace (or a project variable set):

| Key | Value |
|---|---|
| `TFC_AWS_PROVIDER_AUTH` | `true` |
| `TFC_AWS_RUN_ROLE_ARN` | `arn:aws:iam::<ACCOUNT_ID>:role/<ROLE_NAME>` |

## Demo flow
1. Push a commit, and a plan runs automatically.
2. Review the plan in HCP Terraform and confirm the apply.
3. Open a PR that changes a variable (e.g. `environment`) to show a speculative plan.
