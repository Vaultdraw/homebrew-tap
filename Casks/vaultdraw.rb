cask "vaultdraw" do
  version "0.1.2"
  sha256 "cd0ccaea850aa966b4436289ba55c156191aa8726fdc70b1b31adc61c42d7c07"

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
