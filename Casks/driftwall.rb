cask "driftwall" do
  version "0.3.0"
  sha256 "7de90b82b594ff29778a1eef36455a3e9bb19dcf411c023bcb2f632b7c9a49cc"

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
