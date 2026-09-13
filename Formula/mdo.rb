class Mdo < Formula
  desc "Render markdown and vet/run its code blocks in the terminal (OSC 52 clipboard)"
  homepage "https://github.com/dhitalkamal/mdo"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dhitalkamal/mdo/releases/download/v0.1.0/mdo_v0.1.0_darwin_arm64.tar.gz"
      sha256 "366db7c018db66a85c7208caa3cf6e60a2b9a27e6dd88df7bc9e8c3a83f376dd"
    end
    on_intel do
      url "https://github.com/dhitalkamal/mdo/releases/download/v0.1.0/mdo_v0.1.0_darwin_amd64.tar.gz"
      sha256 "c16850f65a1fcfe77bc04cda264a5df0f070a6cdb1f7ac56ea7b8dbbb07e9ee3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dhitalkamal/mdo/releases/download/v0.1.0/mdo_v0.1.0_linux_arm64.tar.gz"
      sha256 "9d511c4328002fb112db91b824c5fd810e310ee2c3f1594da8c73732a60e9b2e"
    end
    on_intel do
      url "https://github.com/dhitalkamal/mdo/releases/download/v0.1.0/mdo_v0.1.0_linux_amd64.tar.gz"
      sha256 "d41cf1de37663f00020d5ab456ce2e6d5439cac1b2faee412ca4f1f94ada5636"
    end
  end

  def install
    bin.install "mdo"
  end

  test do
    assert_match "mdo", shell_output("#{bin}/mdo --version")
  end
end
