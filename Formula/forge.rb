class Forge < Formula
  desc "Internet-native programming language with natural syntax and Cranelift JIT"
  homepage "https://github.com/humancto/forge-lang"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/humancto/forge-lang/releases/download/v0.4.1/forge-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "0d129841484c8b356a7acf9794f5934664fd6a779446a3d02e9d8b5897298bf7"
    else
      url "https://github.com/humancto/forge-lang/releases/download/v0.4.1/forge-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "c1331e307d650dc9f6768299ac8b1e92eec9d5065d6e8098b47fe3a0d19d4a1e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/humancto/forge-lang/releases/download/v0.4.1/forge-v0.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "426aca5def73028d83a0299be3cf32d1660660fe58fab14fe4b2cb7521ac2555"
    else
      url "https://github.com/humancto/forge-lang/releases/download/v0.4.1/forge-v0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2087e08f1f3a63a5a6b0c644d3eb44605476e058c358685e9f9f340669257380"
    end
  end

  def install
    bin.install "forge"
  end

  test do
    assert_match "Forge v", shell_output("#{bin}/forge --version")
  end
end
