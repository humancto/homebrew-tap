class Forge < Formula
  desc "Internet-native programming language with natural syntax and Cranelift JIT"
  homepage "https://github.com/humancto/forge-lang"
  version "0.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/humancto/forge-lang/releases/download/v0.4.3/forge-v0.4.3-aarch64-apple-darwin.tar.gz"
      sha256 "9f05da7fd1e0d0f810486f2e8a2a0fb7b0afc6bef775e2edc6eb46989bc9af43"
    else
      url "https://github.com/humancto/forge-lang/releases/download/v0.4.3/forge-v0.4.3-x86_64-apple-darwin.tar.gz"
      sha256 "6c428bf2abc82557d44d6bac82f507791e0c567ef02661fc6d4bf97474d283cf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/humancto/forge-lang/releases/download/v0.4.3/forge-v0.4.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "45a97170618f621cc04f6e18eadabe5c92e75fca1aa4158f0e1c562c9f221ba7"
    else
      url "https://github.com/humancto/forge-lang/releases/download/v0.4.3/forge-v0.4.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9b5cd03a0a1b60aedec73a4052e5a16ecb52a420caaf35895d39e291b835b40a"
    end
  end

  def install
    bin.install "forge"
  end

  test do
    assert_match "Forge v", shell_output("#{bin}/forge --version")
  end
end
