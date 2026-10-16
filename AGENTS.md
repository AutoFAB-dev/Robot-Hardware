# AGENTS.md: AutoFAB Robot Hardware
Rules for people and AI agents working in this repo. Contributors follow the same rules ([CONTRIBUTING.md](CONTRIBUTING.md)).

## 1. Layout
```
docs/       user setup guide (assembly, wiring, software setup, calibration, safety, troubleshooting)
bom/        bill of materials
cad/        printable/CAD files; third-party files keep their own licence (cad/elrobot/)
firmware/   servo IDs and settings
images/     photos and diagrams
tools/      repo checks (tools/check.sh)
docs/rnd/, cad/rnd/   R&D designs: NOT part of the current kit
```
**This repository is public.** Everything you commit is visible to anyone.

## 2. How work flows
1. **One issue = one branch = one PR.**
   - Name the branch `<type>/<short-topic>` (`docs/`, `cad/`, `bom/`, `firmware/`, `fix/`), plus the issue number if there is one (`cad/12-elrobot-adapter`).
   - Prefix commits with the issue number when there is one (`#12: add adapter STL`).
2. **Resume, don't restart.** Before creating a branch, check whether one already exists for the issue (`git ls-remote --heads origin`) and continue it. Never make `-v2` copies.
3. **Start from `main`.** Never branch off another unmerged branch.
4. **Open the PR as a draft.** Mark it ready when §4 passes. Use the PR template.
5. **Nothing reaches `main` except through a PR.** Never push to `main`, and never force-push a branch someone else fetched; add a fix-up commit instead.
6. **Maintainer-owned files:** `.github/`, `AGENTS.md`, `LICENSE`, `LICENSES/` and `tools/` change only with a maintainer's approval in the issue or PR.

## 3. Plan → Execute → Verify
- **Plan:** read the issue, this file and the doc you're changing. Say in the PR which files change and how you'll verify them.
- **Execute:** make the smallest change that does the job, matching the surrounding style. Commit in small, described steps.
- **Verify:** run §4. Re-read your diff as a reviewer would. Say what you ran and what you could **not** verify. Never claim a hardware result you didn't observe on a real build.

## 4. Commands
```bash
tools/check.sh      # before every push: relative links, public-safety scan, large files
```
For CAD changes, also: open/slice the file and state the slicer, settings and print result in the PR. For BOM changes: give a link and the date checked for each price.

## 5. Repository invariants
- **Licensing:**
  - AutoFAB hardware is CERN-OHL-P-2.0, docs are CC-BY-4.0, code is Apache-2.0 ([LICENSE](LICENSE)).
  - Third-party files keep their original licence and attribution in their own folder.
  - Prefer linking upstream files over copying them. If you copy one, keep it unmodified, or mark your changes.
- **Upstreams:** arm fixes go to [ElRobot/norma-core](https://github.com/norma-core/norma-core); rail fixes go to [leslider](https://github.com/pham-tuan-binh/leslider).
- **Source files:** for new CAD, commit editable source (STEP, or OpenSCAD/FreeCAD) alongside STL/3MF. Keep files under 10 MB.
- **BOM:** every line has qty, part, an example link and an approximate cost (or TODO). Prices are indicative and dated.
- **R&D** lives only under `docs/rnd/` and `cad/rnd/`, with an "R&D, not part of the current kit" banner.
- **Wording:** describe the system as **human-supervised AI**. Never claim full autonomy or unattended use.
- **Safety:** any change that affects power, motion, the e-stop or pinch points updates [docs/safety.md](docs/safety.md).

## 6. Never
- Commit secrets, credentials, tokens, setup-card passwords, claim codes, `.env` files, or photos showing them.
- Commit internal URLs or hostnames, private service names, customer names or data, people's personal information, or internal pricing.
- Push to `main`, force-push a shared branch, or stack branches.
- Add or change GitHub workflows without a maintainer's approval.
- "Fix" a check by weakening `tools/check.sh` or deleting the thing it flagged without explaining why.
- Present untested designs as part of the kit.

## 7. Spending and hardware
Agents never buy parts, never run anything on a real cell, and never contact customers. A human builds and tests.
