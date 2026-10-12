# marcowilka/homebrew-tap

Homebrew tap for [Past Perfect](https://pastperfect.marcowilka.de/) (direct-download Mac build).

## Install

```bash
brew tap marcowilka/tap
brew install --cask past-perfect
```

## Update

```bash
brew update
brew upgrade --cask past-perfect
```

## Uninstall

```bash
brew uninstall --cask past-perfect
# also remove license / trial data and container:
brew uninstall --cask --zap past-perfect
```

## Bump a release

After publishing a new versioned DMG (`PastPerfect-<version>-mac.dmg`) and `past-perfect.json` via `support-website/deploy.sh --with-dmg`:

```bash
brew bump-cask-pr past-perfect --tap marcowilka/tap --version <new-version>
```

Or edit `Casks/past-perfect.rb` (`version` + `sha256`) and push to this repository.
