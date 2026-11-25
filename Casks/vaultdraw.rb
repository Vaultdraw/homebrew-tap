cask "vaultdraw" do
  version "0.2.0"
  sha256 "68da75a0b97a7dc3f38fa3cac0850d67569c63d93e4dabb9c373539290872b5f"

  url "https://github.com/Vaultdraw/vaultdraw/releases/download/v#{version}/Vaultdraw_#{version}_universal.dmg"
  name "Vaultdraw"
  desc "Offline desktop vault for Excalidraw drawings"
  homepage "https://github.com/Vaultdraw/vaultdraw"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Vaultdraw.app"
  binary "#{appdir}/Vaultdraw.app/Contents/MacOS/vaultdraw"

  zap trash: [
    "~/.config/vaultdraw",
    "~/.local/state/vaultdraw",
    "~/Library/Application Support/app.vaultdraw",
    "~/Library/Caches/app.vaultdraw",
    "~/Library/Preferences/app.vaultdraw.plist",
    "~/Library/WebKit/app.vaultdraw",
  ]
end
