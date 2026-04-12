class Forge < Formula
  desc "Internet-native programming language with natural syntax and Cranelift JIT"
  homepage "https://github.com/humancto/forge-lang"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/humancto/forge-lang/releases/download/v0.7.1/forge-v0.7.1-darwin-arm64.tar.gz"
      sha256 "cf0286d348a96a75b30ff3d8325934d3b8fa2f182017f39971597cd3fea06ded"
    else
      # x86_64 macOS binary not yet available for v0.7.1
      # Install from source via: cargo install forge-lang
      odie "Forge v0.7.1 pre-built binary is only available for Apple Silicon. Install from source: cargo install forge-lang"
    end
  end

  on_linux do
    # Linux binaries not yet available for v0.7.1
    # Install from source via: cargo install forge-lang
    odie "Forge v0.7.1 pre-built binary is only available for macOS ARM64. Install from source: cargo install forge-lang"
  end

  def install
    bin.install "forge"
  end

  test do
    assert_match "Forge v", shell_output("#{bin}/forge --version")
  end
end
