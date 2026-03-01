class Forge < Formula
  desc "Internet-native programming language with natural syntax and Cranelift JIT"
  homepage "https://github.com/humancto/forge-lang"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/humancto/forge-lang/releases/download/v0.3.1/forge-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "090acb049320011e044cc4d64a31ea1d6e9fa1205834a5f6fb54605e09270df1"
    else
      url "https://github.com/humancto/forge-lang/releases/download/v0.3.1/forge-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "49de9bb79da7f021b572e01524d3cd0a9eddb36ea50056dca7304042773d1f27"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/humancto/forge-lang/releases/download/v0.3.1/forge-v0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6c24e9bdbe6bc742ce370a47273a755f9bfd6caba88c1b4e499f58468c4fa976"
    else
      url "https://github.com/humancto/forge-lang/releases/download/v0.3.1/forge-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "85a822a9c5ece7418d3889fc2866dfd1ff7b59ad9e06b407dd9495e3ff4da524"
    end
  end

  def install
    bin.install "forge"
  end

  test do
    assert_match "Forge v", shell_output("#{bin}/forge --version")
  end
end

