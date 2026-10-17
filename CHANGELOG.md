# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

## [Unreleased]

### Added
- Initial public hardware release: an ElRobot arm on a leslider-style rail, wrist and scene cameras, a Raspberry Pi controller, a user setup guide, a priced BOM, CAD files, and hardware-level servo notes.
- Public-repo essentials: code of conduct, NOTICE, CODEOWNERS, governance, this changelog, trademarks, a DIY disclaimer, and Dependabot for GitHub Actions.

### Changed
- Describe AutoFAB as a managed service (AI agents plus a human supervision service). AutoFAB software is closed source; only the hardware is open.
- Printers: Klipper and Bambu integrations; has run on Voron (Klipper), Creality K2 Plus with CFS, Creality K1, Bambu Lab X1C, Bambu Lab H2S and FlashForge Adventurer.
- Issues and build reports welcome; pull requests by invitation for now.
- Customer-facing controller setup only (flash the provided image, power-up, network join, claim at app.autofab.net).
- Docs restructured as a numbered self-service path (`docs/setup/01`–`07`) plus troubleshooting, getting help, and a Reference section.
- Steps 05–07 and troubleshooting aligned with customer-visible onboarding (setup card, captive page, claim after leaving setup Wi-Fi, organization, printer’s own app first, camera ready-checks).

### Removed
- In-progress drafts that were not part of the kit.
- Closed-software internals from servo notes and setup docs.
