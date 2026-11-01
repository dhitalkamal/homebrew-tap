class Mdo < Formula
  desc "Render markdown and vet/run its code blocks in the terminal (OSC 52 clipboard)"
  homepage "https://github.com/dhitalkamal/mdo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dhitalkamal/mdo/releases/download/v0.2.2/mdo_v0.2.2_darwin_arm64.tar.gz"
      sha256 "146cc8dc0bb8c1213d4347e81cb2a56a6b9f298d3bfda9402fd4cfc8896ec965"
    end
    on_intel do
      url "https://github.com/dhitalkamal/mdo/releases/download/v0.2.2/mdo_v0.2.2_darwin_amd64.tar.gz"
      sha256 "afd1f37fd44b1b92adf28955473a8635d9937c8fcb39698e39a0e40021be6884"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dhitalkamal/mdo/releases/download/v0.2.2/mdo_v0.2.2_linux_arm64.tar.gz"
      sha256 "376432961a61ef11f8de225b6cc789396011c6cd1092e2ce85e3429bbbf7d8af"
    end
    on_intel do
      url "https://github.com/dhitalkamal/mdo/releases/download/v0.2.2/mdo_v0.2.2_linux_amd64.tar.gz"
      sha256 "122aa285328f3f7bf6550c19111a070b4adc36bd4b33f56bb8f9c6c6a9fd19e9"
    end
  end

  def install
    bin.install "mdo"
  end

  test do
    assert_match "mdo", shell_output("#{bin}/mdo --version")
  end
end
