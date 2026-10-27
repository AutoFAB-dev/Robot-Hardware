# Contributing

Open a GitHub [issue](.github/ISSUE_TEMPLATE/bug_report.md) if a part table, file, or setup step is wrong. Pull requests are welcome.

This repository is public. Everything you commit is visible to anyone.

## Rules

- Do not invent print settings, quantities, servo IDs, or other values. Cite [ElRobot](https://github.com/norma-core/norma-core/tree/main/hardware/elrobot) or [leslider](https://github.com/pham-tuan-binh/leslider), or mark **TODO**.
- Do not commit secrets, passwords, claim codes, tokens, or network names. Strip those from photos and logs.
- Do not add internal hostnames, endpoints, or service names.
- Hardware authored here is [CERN-OHL-P-2.0](LICENSES/CERN-OHL-P-2.0.txt). Docs are [CC-BY-4.0](LICENSES/CC-BY-4.0.txt). Third-party files keep their own licences (ElRobot and leslider are Apache-2.0). See [LICENSE](LICENSE), [LICENSES/](LICENSES/), and [NOTICE](NOTICE).
- Safety changes also update [docs/reference/safety.md](docs/reference/safety.md) and the note on each setup step.
- Before a push, run [`tools/check.sh`](tools/check.sh) (relative links, public-safety scan, large files).
- Follow the [code of conduct](CODE_OF_CONDUCT.md).

AutoFAB is a managed service: our systems manage production on your machines. This repo is hardware and docs only.

## Contact

[info@autofab.net](mailto:info@autofab.net) · [Getting help](docs/getting-help.md) · [Security](SECURITY.md)
