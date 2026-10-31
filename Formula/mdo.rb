class Mdo < Formula
  desc "Render markdown and vet/run its code blocks in the terminal (OSC 52 clipboard)"
  homepage "https://github.com/dhitalkamal/mdo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dhitalkamal/mdo/releases/download/v0.2.1/mdo_v0.2.1_darwin_arm64.tar.gz"
      sha256 "e760a95256ccb8739dd2ed08f65bfbaa52912a1bc504c3c42ea89e3a7dc00027"
    end
    on_intel do
      url "https://github.com/dhitalkamal/mdo/releases/download/v0.2.1/mdo_v0.2.1_darwin_amd64.tar.gz"
      sha256 "bc83b444ab3f262e4e7544d9e84e453c6c121198144e144b369507398385c0eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dhitalkamal/mdo/releases/download/v0.2.1/mdo_v0.2.1_linux_arm64.tar.gz"
      sha256 "4b4462171943089598c935be8feda5041da8d80a51fe4a7b84fcb536ab579be1"
    end
    on_intel do
      url "https://github.com/dhitalkamal/mdo/releases/download/v0.2.1/mdo_v0.2.1_linux_amd64.tar.gz"
      sha256 "09e8b5b33679699e88c88cca5940744bdbdf50cdd70c45b1913e3a6a0e5d7f6a"
    end
  end

  def install
    bin.install "mdo"
  end

  test do
    assert_match "mdo", shell_output("#{bin}/mdo --version")
  end
end
