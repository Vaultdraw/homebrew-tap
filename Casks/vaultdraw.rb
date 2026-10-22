cask "vaultdraw" do
  version "0.1.1"
  sha256 "072278559954778a4ecc36eae30be7c929bea9fa02b0ab307de120189b890ebb"

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
