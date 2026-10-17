# AGENTS.md
Rules for agents maintaining this public hardware repo.

**This repository is public.** Everything you commit is visible to anyone.

## Layout
```
docs/setup/       customer path (01–07)
docs/troubleshooting.md, docs/getting-help.md
docs/reference/   safety, plus equal pages for arm, rail, controller, cameras
docs/reference/<component>/  parts, wiring, IDs, assembly, checks (same set on each)
bom/              cell parts list (quantities and links, no prices)
cad/              printable files; cad/elrobot/ keeps its own licence
tools/check.sh    run before every push
```

## Commands
```bash
tools/check.sh      # relative links, public-safety scan, large files
```

## Invariants
- AutoFAB is a managed service: our systems manage production on your machines, including AutoFAB's AI agents plus a human supervision service. Never claim the cell runs without that service. Software is closed; only the hardware is open.
- Hardware: CERN-OHL-P-2.0. Docs: CC-BY-4.0. Third-party files keep Apache-2.0 (ElRobot, leslider) with texts in LICENSES/ and NOTICE.
- Do not invent print settings, quantities or IDs. Cite ElRobot or leslider, or mark TODO.
- Never write internal hostnames, endpoints, scripts, tokens or service names.
- Safety changes update [docs/reference/safety.md](docs/reference/safety.md) and the note on each setup step.

## Never
- Commit secrets, credentials, tokens, setup-card passwords, claim codes, `.env` files, or photos showing them.
- Push to `main` or force-push a shared branch.
- Add a GitHub workflow without a maintainer's approval.
- Weaken `tools/check.sh` to hide a finding.
- Contact customers or buy parts. A human builds and tests.
