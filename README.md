# Homebrew Tap

Homebrew casks for my apps.

## Driftwall

A free, open-source live video wallpaper for macOS — <https://github.com/dhitalkamal/driftwall>.

```sh
brew install --cask dhitalkamal/tap/driftwall
```

or:

```sh
brew tap dhitalkamal/tap
brew install --cask driftwall
```

Driftwall is not notarized yet, so on first launch macOS Gatekeeper will block it.
Right-click **Driftwall** in Applications and choose **Open**, or run:

```sh
xattr -dr com.apple.quarantine "/Applications/Driftwall.app"
```

To update later: `brew upgrade --cask driftwall`.
