class Forge < Formula
  desc "Internet-native programming language with natural syntax and Cranelift JIT"
  homepage "https://github.com/humancto/forge-lang"
  version "0.8.0"
  license "MIT"

  url "https://github.com/humancto/forge-lang/releases/download/v0.8.0/forge-aarch64-apple-darwin.tar.gz"
  sha256 "6e74bf0bf36d62bd467e899178dd2bbfde806d9317460155a88bd08928a5505f"

  def install
    bin.install "forge"
  end

  test do
    assert_match "Forge v", shell_output("#{bin}/forge --version")
  end
end
