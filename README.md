# Crewship Homebrew Tap

Homebrew formulae for [Crewship](https://crewship.ai) — the self-hosted
runtime for AI coding agents.

## Install

```bash
brew tap crewship-ai/tap
brew install crewship
```

Or in one line:

```bash
brew install crewship-ai/tap/crewship
```

## Verify

```bash
crewship version
```

## Updating

```bash
brew update
brew upgrade crewship
```

## How this tap is published

The `Formula/crewship.rb` file is **auto-generated** by
[GoReleaser](https://goreleaser.com/) every time a new tag is pushed
to [crewship-ai/crewship](https://github.com/crewship-ai/crewship). Do
not edit it by hand — your changes will be overwritten on the next
release.

If you spot a problem with the published formula (broken `brew install`,
wrong URL, missing SHA), open an issue on the main repo instead:

https://github.com/crewship-ai/crewship/issues

## Verifying signatures

Every release binary is signed with [Sigstore cosign](https://www.sigstore.dev/)
keyless via GitHub Actions OIDC and ships with SBOMs (SPDX + CycloneDX).
Homebrew downloads the same archives the GitHub Release publishes, so
`cosign verify-blob` works against the brew cache too:

```bash
cosign verify-blob \
  --certificate-identity-regexp "https://github.com/crewship-ai/crewship/\.github/workflows/release\.yml@.*" \
  --certificate-oidc-issuer "https://token.actions.githubusercontent.com" \
  --signature crewship_<version>_<os>_<arch>.tar.gz.sig \
  --certificate crewship_<version>_<os>_<arch>.tar.gz.pem \
  $(brew --cache)/downloads/<sha>--crewship_<version>_<os>_<arch>.tar.gz
```

## License

This tap repo is Apache-2.0 (same as Crewship itself). See
[LICENSE](./LICENSE).
