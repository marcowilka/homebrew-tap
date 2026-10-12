# marcowilka/homebrew-tap

Homebrew tap for Marco Wilka’s direct-download Mac apps:

| Cask | App | Homepage |
|------|-----|----------|
| `past-perfect` | [Past Perfect](https://pastperfect.marcowilka.de/) | On-device photo restoration and editing |
| `paste-maker` | [PasteMaker](https://pastemaker.marcowilka.de/) | Menu-bar clipboard history |
| `sdrecover` | [SDRecover](https://sdrecover.marcowilka.de/) | Recover deleted files from memory cards |

## Install

```bash
brew tap marcowilka/tap
brew install --cask past-perfect
brew install --cask paste-maker
brew install --cask sdrecover
```

## Update

```bash
brew update
brew upgrade --cask past-perfect
brew upgrade --cask paste-maker
brew upgrade --cask sdrecover
```

## Uninstall

```bash
brew uninstall --cask past-perfect
brew uninstall --cask paste-maker
brew uninstall --cask sdrecover
# also remove app data:
brew uninstall --cask --zap past-perfect
brew uninstall --cask --zap paste-maker
brew uninstall --cask --zap sdrecover
```

## Bump a release

After publishing a new versioned DMG and livecheck JSON via the app’s `support-website/deploy.sh --with-dmg`:

```bash
brew bump-cask-pr past-perfect --tap marcowilka/tap --version <new-version>
brew bump-cask-pr paste-maker --tap marcowilka/tap --version <new-version>
brew bump-cask-pr sdrecover --tap marcowilka/tap --version <new-version>
```

Or edit the matching file under `Casks/` (`version` + `sha256`) and push to this repository.
