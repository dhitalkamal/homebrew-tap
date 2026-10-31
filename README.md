# Homebrew Tap

Homebrew casks and formulas for my apps.

    brew tap dhitalkamal/tap

## Driftwall

Free, open-source live video wallpaper for macOS:
<https://github.com/dhitalkamal/driftwall>

```sh
brew install --cask dhitalkamal/tap/driftwall
```

Driftwall is not notarized yet, so on first launch macOS Gatekeeper will block it.
Right-click **Driftwall** in Applications and choose **Open**, or run:

```sh
xattr -dr com.apple.quarantine "/Applications/Driftwall.app"
```

## parley

Terminal API client: collections, environments, auth, scripting, and
WebSocket testing in a keyboard-driven TUI:
<https://github.com/dhitalkamal/parley>

```sh
brew install dhitalkamal/tap/parley
```

## mdo

Render Markdown in the terminal and vet/run its code blocks, over SSH, tmux,
or Termux: <https://github.com/dhitalkamal/mdo>

```sh
brew install dhitalkamal/tap/mdo
```

## updating

```sh
brew update
brew upgrade --cask driftwall
brew upgrade parley mdo
```
