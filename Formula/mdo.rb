class Mdo < Formula
  desc "Render markdown and vet/run its code blocks in the terminal (OSC 52 clipboard)"
  homepage "https://github.com/dhitalkamal/mdo"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dhitalkamal/mdo/releases/download/v0.2.0/mdo_v0.2.0_darwin_arm64.tar.gz"
      sha256 "1616a5740bc7a3205b37fd2846b18373114e39a07767bc84ecec6006f6479e21"
    end
    on_intel do
      url "https://github.com/dhitalkamal/mdo/releases/download/v0.2.0/mdo_v0.2.0_darwin_amd64.tar.gz"
      sha256 "25622d83b7dcc69cf3b4a18bc19804a23ceaef0b6c38314f1eb18b97807ac308"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dhitalkamal/mdo/releases/download/v0.2.0/mdo_v0.2.0_linux_arm64.tar.gz"
      sha256 "eb04bf9e3a572f2094ce2b10b68bfe57fa5053671851bb80c6576e8556f81d91"
    end
    on_intel do
      url "https://github.com/dhitalkamal/mdo/releases/download/v0.2.0/mdo_v0.2.0_linux_amd64.tar.gz"
      sha256 "941d734502e44b2faeaa99bccb03348c66f044a568a23542a14587db025bb781"
    end
  end

  def install
    bin.install "mdo"
  end

  test do
    assert_match "mdo", shell_output("#{bin}/mdo --version")
  end
end
