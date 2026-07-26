cask "driftwall" do
  version "0.2.0"
  sha256 "93b70ca37f86e675b6c89087caec16905e9352bc05748acd33db453e861366e1"

  url "https://github.com/dhitalkamal/driftwall/releases/download/v#{version}/Driftwall.dmg",
      verified: "github.com/dhitalkamal/driftwall/"
  name "Driftwall"
  desc "Live video wallpaper"
  homepage "https://github.com/dhitalkamal/driftwall"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Driftwall.app"

  zap trash: [
    "~/Library/Application Support/Driftwall",
    "~/Library/Preferences/com.driftwall.Driftwall.plist",
  ]

  caveats do
    <<~EOS
      Driftwall is not notarized yet, so on first launch macOS Gatekeeper will block it.
      Right-click Driftwall in Applications and choose Open, or run:
        xattr -dr com.apple.quarantine "/Applications/Driftwall.app"
    EOS
  end
end
