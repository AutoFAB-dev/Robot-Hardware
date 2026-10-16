# Contributing
Thanks for helping. This project is community-supported. These rules apply to people and AI agents alike (agents also read [AGENTS.md](AGENTS.md)).

## The flow
1. **One issue = one branch = one PR.** Name the branch `<type>/<short-topic>` (`docs/`, `cad/`, `bom/`, `firmware/`, `fix/`), plus the issue number if there is one.
2. **Start from `main`.** Don't stack branches.
3. **Open a draft PR** using the template, and mark it ready when `tools/check.sh` passes.
4. **Nothing reaches `main` except through a reviewed PR.** No direct pushes or force-pushes to shared branches.

## What to send
- **Issues:** build reports, printer compatibility, doc fixes, part alternatives.
- **CAD:** editable source (STEP or OpenSCAD) plus STL/3MF, print settings and a photo.
- **BOM:** quantity, example link, approximate cost and the date you checked it.
- **Upstream parts:** fixes to the ElRobot arm go to [norma-core](https://github.com/norma-core/norma-core); fixes to the rail design go to [leslider](https://github.com/pham-tuan-binh/leslider).

## Never
Post passwords, setup-card details, claim codes, tokens, personal information, or photos showing them.

## Licensing
By contributing you agree to license your work under this repo's licences (see [LICENSE](LICENSE)).
