class Forge < Formula
  desc "Internet-native programming language with natural syntax and Cranelift JIT"
  homepage "https://github.com/humancto/forge-lang"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/humancto/forge-lang/releases/download/v0.3.2/forge-v0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "16ec053105c0a1b461d26222dbaec21f4840e69b10f83bba568c7b424b95275a"
    else
      url "https://github.com/humancto/forge-lang/releases/download/v0.3.2/forge-v0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "3aa71d878f0f8f1868c03c07c7d0c6a1cfef7b13541d431182893bcc04f3a0c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/humancto/forge-lang/releases/download/v0.3.2/forge-v0.3.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3954dc835abf02854a3e54fac288c176de8997dd041eda9a29838e492ec803c8"
    else
      url "https://github.com/humancto/forge-lang/releases/download/v0.3.2/forge-v0.3.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "180c0839b63643acce6914058401f52390e9f3baabb75b3852a472d60344b5f4"
    end
  end

  def install
    bin.install "forge"
  end

  test do
    assert_match "Forge v", shell_output("#{bin}/forge --version")
  end
end

