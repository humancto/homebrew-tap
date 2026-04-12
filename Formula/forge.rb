class Forge < Formula
  desc "Internet-native programming language with natural syntax and Cranelift JIT"
  homepage "https://github.com/humancto/forge-lang"
  version "0.7.1"
  license "MIT"

  url "https://github.com/humancto/forge-lang/releases/download/v0.7.1/forge-v0.7.1-darwin-arm64.tar.gz"
  sha256 "cf0286d348a96a75b30ff3d8325934d3b8fa2f182017f39971597cd3fea06ded"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "forge"
  end

  test do
    assert_match "Forge v", shell_output("#{bin}/forge --version")
  end
end
