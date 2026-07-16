# Instagram Clone Monorepo

This repository scaffolds a production-style monorepo for an Instagram-clone learning project. It is organized the way a small platform team would structure infrastructure, backend services, frontend delivery, documentation, and CI/CD from day one.

## Project Overview

The goal is to keep the codebase modular, predictable, and easy to grow as each layer is implemented phase by phase. Infrastructure lives under `infra/`, service backends live under `services/`, the user interface lives under `frontend/`, and architecture notes and runbooks live under `docs/`.

## Architecture Summary

The target shape is an AWS-based, service-oriented platform with Terraform-managed infrastructure, isolated service deployments, shared networking and observability modules, and a frontend served separately through CDN-backed static hosting. Core application data is expected to span managed relational, object, and key-value stores, with deployment pipelines promoting changes from `dev` to `staging` to `prod` through controlled approvals and environment-specific configuration.

## Folder Structure

- `infra/`: Terraform backend, reusable modules, and environment stacks.
- `services/`: Individual backend services such as auth, posts, and social graph.
- `frontend/`: The client application and its build/test workflow.
- `docs/`: Architecture decisions, diagrams, and operational runbooks.
- `.github/`: CI workflows, PR template, and issue templates.

## Run Locally

1. Install the tooling for the part of the stack you are working on, such as Node.js for services or the frontend, and the Terraform CLI for infrastructure.
2. Initialize the environment you want to work on, for example `infra/envs/dev`.
3. Run the relevant checks before making changes:
   - `terraform fmt -check`
   - `terraform validate`
   - `terraform plan`
   - service or frontend lint/test/build commands from the relevant package manager
4. Iterate locally until the target slice is green, then open a PR.

## Environment Promotion

Changes should move through `dev` first, then `staging`, then `prod`.

- `dev`: fast iteration and validation of new infrastructure or service changes.
- `staging`: production-like verification with tighter release discipline.
- `prod`: only promote after successful validation in lower environments and manual approval where required.

## Contribution Workflow

- Branch naming: `feature/<short-description>`, `fix/<short-description>`, `chore/<short-description>`.
- Commit messages: follow Conventional Commits, for example `feat: add auth bootstrap` or `fix: correct terraform variable typing`.
- Pull requests should include a clear summary, linked ticket or ADR when relevant, testing notes, and screenshots for UI work.
- Keep PRs scoped to one logical change set and prefer small, reviewable increments.

## PR Template

Use the repository PR template in `.github/PULL_REQUEST_TEMPLATE.md` and fill in the summary, related ticket or ADR, testing performed, screenshots if applicable, and checklist items before requesting review.
