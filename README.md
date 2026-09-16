# AWS CI/CD Pipeline for Python Flask Application

A hands-on AWS DevOps project that implements an automated CI/CD pipeline for a Python Flask application.

## Architecture

GitHub → AWS CodePipeline → AWS CodeBuild → AWS CodeDeploy → Amazon EC2

## How It Works

1. A developer pushes code changes to the GitHub repository.
2. AWS CodePipeline automatically detects the change.
3. AWS CodeBuild installs dependencies and runs automated tests with pytest.
4. If the tests pass, the build artifact is passed to AWS CodeDeploy.
5. AWS CodeDeploy deploys the new application version to an EC2 instance.
6. The Flask application starts automatically and serves the new version.

If a test fails, the pipeline stops at the Build stage and the failed version is not deployed.

## AWS Services

- AWS CodePipeline
- AWS CodeBuild
- AWS CodeDeploy
- Amazon EC2
- AWS IAM
- AWS Secrets Manager
- Amazon S3

## Technologies

- Python
- Flask
- pytest
- Bash
- Git
- GitHub
- Linux

## Security

- IAM roles are used instead of hard-coded AWS credentials.
- EC2 uses least-privilege access to retrieve secrets from AWS Secrets Manager.
- Secrets are not stored directly in the source code.

## Deployment Files

- `app.py` — Flask application
- `test_app.py` — automated application tests
- `requirements.txt` — Python dependencies
- `buildspec.yml` — AWS CodeBuild instructions
- `appspec.yml` — AWS CodeDeploy configuration
- `scripts/` — deployment lifecycle scripts

## Result

The complete CI/CD workflow was successfully tested.

A change pushed to GitHub automatically triggered the pipeline, passed automated tests, was deployed to EC2, and became available in the running application without manually copying the application code to the server.
