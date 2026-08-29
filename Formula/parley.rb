class Parley < Formula
  desc "Terminal API client: collections, environments, auth, scripting, WebSocket testing"
  homepage "https://github.com/dhitalkamal/parley"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/dhitalkamal/parley/releases/download/v0.1.1/parley_darwin_arm64.tar.gz"
      sha256 "cf6458f721a63008c31b9cf494ab52a5b1a80a580e40a6cd506af0b9f3d46d87"
    end
    on_intel do
      url "https://github.com/dhitalkamal/parley/releases/download/v0.1.1/parley_darwin_amd64.tar.gz"
      sha256 "e1d9f74feec8e8d2051d1401756271051a26bbd86a123a5729ee0aa799a2e267"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dhitalkamal/parley/releases/download/v0.1.1/parley_linux_arm64.tar.gz"
      sha256 "5e2c0450046e74e47e791327b1a2b6dab00b2b5bd40f3da21d33e3e28a99df03"
    end
    on_intel do
      url "https://github.com/dhitalkamal/parley/releases/download/v0.1.1/parley_linux_amd64.tar.gz"
      sha256 "5b228b421582da3b0f2795041ad8b75a7ae9d229b7c4b0f6d62696e2985f66e8"
    end
  end

  def install
    bin.install "parley"
  end

  test do
    assert_predicate bin/"parley", :executable?
  end
end
