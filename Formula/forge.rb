class Forge < Formula
  desc "Internet-native programming language with natural syntax and Cranelift JIT"
  homepage "https://github.com/humancto/forge-lang"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/humancto/forge-lang/releases/download/v0.2.0/forge-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "0d321216f5fcb91ff2396963a15b8aadb8064b8895f432e87d4f2fb6e9c00e95"
    else
      url "https://github.com/humancto/forge-lang/releases/download/v0.2.0/forge-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "be7f9ffe0cd1d809215c8222216a26af361a1961813e68e5c16c01332e191d59"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/humancto/forge-lang/releases/download/v0.2.0/forge-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c411db0d251d857a4bd9887f1306ab3fae50abcecfc69171f26a1f2629e98d08"
    else
      url "https://github.com/humancto/forge-lang/releases/download/v0.2.0/forge-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d4006ef243c04c6044e7442126f06a9edd1c243d7936cc9693394ea5b0378ad0"
    end
  end

  def install
    bin.install "forge"
  end

  test do
    assert_match "Forge v", shell_output("#{bin}/forge --version")
  end
end
