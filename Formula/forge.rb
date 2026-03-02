class Forge < Formula
  desc "Internet-native programming language with natural syntax and Cranelift JIT"
  homepage "https://github.com/humancto/forge-lang"
  version "0.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/humancto/forge-lang/releases/download/v0.3.3/forge-v0.3.3-aarch64-apple-darwin.tar.gz"
      sha256 "464ad7475210745ca965c3c7741ace3fa6635c5109653c4a14240f85d5f7e776"
    else
      url "https://github.com/humancto/forge-lang/releases/download/v0.3.3/forge-v0.3.3-x86_64-apple-darwin.tar.gz"
      sha256 "598c86d9f19b62cdf9fdbe216266ec35b7e8f74984efc32b1d5b33b778233ed9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/humancto/forge-lang/releases/download/v0.3.3/forge-v0.3.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "60d40d26aa6130868bcde45b58500790d20169d3e5d27f6626122a9e4732ba7a"
    else
      url "https://github.com/humancto/forge-lang/releases/download/v0.3.3/forge-v0.3.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d3cc986bccb736cce208dad8cdee3bed82f65c7823f6b123f879666e8dfe7b31"
    end
  end

  def install
    bin.install "forge"
  end

  test do
    assert_match "Forge v", shell_output("#{bin}/forge --version")
  end
end
