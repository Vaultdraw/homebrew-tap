# Vaultdraw Homebrew tap

Install [Vaultdraw](https://github.com/Vaultdraw/vaultdraw), the offline desktop vault for Excalidraw drawings.

```sh
brew install --cask vaultdraw/tap/vaultdraw
```

This installs `Vaultdraw.app` and links the `vaultdraw` command into your PATH.

## First open

The build is ad-hoc signed, not notarized, so macOS blocks the first launch. Right-click the app and choose **Open**, or go to **System Settings > Privacy & Security** and click **Open Anyway**. You only do this once per version.

If macOS says the app is "damaged", or the `vaultdraw` command stops with `Killed: 9`, remove the quarantine flag and try again:

```sh
xattr -dr com.apple.quarantine /Applications/Vaultdraw.app
```

## Upgrade and uninstall

```sh
brew upgrade --cask vaultdraw
brew uninstall --cask vaultdraw
brew uninstall --cask --zap vaultdraw   # also removes app settings and caches
```

Your vault folders are never touched.
