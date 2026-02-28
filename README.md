<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=2,3,12&height=170&text=homebrew-brandmint&fontSize=42&fontAlignY=38&desc=Official%20Homebrew%20tap%20for%20Brandmint&descAlignY=58&fontColor=ffffff" width="100%" />

<!-- readme-gen:start:badges -->
<p align="center">
  <a href="https://github.com/Sheshiyer/homebrew-brandmint"><img alt="Tap" src="https://img.shields.io/badge/Homebrew-Tap-fbb040?style=flat-square&logo=homebrew&logoColor=black"></a>
  <a href="https://github.com/Sheshiyer/homebrew-brandmint/blob/main/Formula/brandmint.rb"><img alt="Formula" src="https://img.shields.io/badge/Formula-brandmint.rb-0f172a?style=flat-square&logo=ruby&logoColor=white"></a>
  <a href="https://github.com/Sheshiyer/brandmint-oracle-aleph/releases/latest"><img alt="Source Release" src="https://img.shields.io/github/v/release/Sheshiyer/brandmint-oracle-aleph?style=flat-square&logo=github"></a>
  <a href="https://github.com/Sheshiyer/homebrew-brandmint/blob/main/Formula/brandmint.rb"><img alt="Python" src="https://img.shields.io/badge/python-3.11-blue?style=flat-square&logo=python&logoColor=white"></a>
</p>
<!-- readme-gen:end:badges -->

</div>

> Install **Brandmint** through Homebrew using a tap-first flow.

## Install

```bash
brew tap Sheshiyer/brandmint
brew install brandmint
bm --help
```

## Upgrade

```bash
brew update
brew upgrade brandmint
```

## What this tap contains

- `Formula/brandmint.rb` — Homebrew formula for Brandmint CLI
- `README.md` — install, maintenance, and troubleshooting notes

## Maintainer workflow

When a new `vX.Y.Z` release is published in `brandmint-oracle-aleph`:

1. Update formula `url` to the new tag tarball
2. Recompute `sha256`
3. Validate locally:

```bash
brew reinstall --build-from-source Sheshiyer/brandmint/brandmint
brew test Sheshiyer/brandmint/brandmint
brew audit --strict --online Sheshiyer/brandmint/brandmint
```

## Troubleshooting

- **Checksum mismatch**
  - `brew update && brew untap Sheshiyer/brandmint && brew tap Sheshiyer/brandmint`
- **Install from this tap explicitly**
  - `brew install Sheshiyer/brandmint/brandmint`
- **Debug formula locally**
  - `brew cat Sheshiyer/brandmint/brandmint`
  - `brew info Sheshiyer/brandmint/brandmint`

## Source project

Brandmint source repository:
- https://github.com/Sheshiyer/brandmint-oracle-aleph

Release notes and changelog are maintained in the source repo.
