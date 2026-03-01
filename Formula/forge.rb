class Forge < Formula
  desc "Internet-native programming language with natural syntax and Cranelift JIT"
  homepage "https://github.com/humancto/forge-lang"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/humancto/forge-lang/releases/download/v0.3.1/forge-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "15b25a7627840eb3c104d59bcf740b80b91fc0a3277e3ea06a43b97e0fe2c80f"
    else
      url "https://github.com/humancto/forge-lang/releases/download/v0.3.1/forge-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "741f76cf3172e043bc4bbdeb691812b2d9226ebb1e11a098b2097f4958169d8a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/humancto/forge-lang/releases/download/v0.3.1/forge-v0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "42447051e0c1a3159a4c3e6ff15f48be5bd4fb030f543c0cb13337a7d0d9f6d2"
    else
      url "https://github.com/humancto/forge-lang/releases/download/v0.3.1/forge-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d6a2972fedf6f2c78479343fa45ab85176e17572865b7e328d534fd15fd0e943"
    end
  end

  def install
    bin.install "forge"
  end

  test do
    assert_match "Forge v", shell_output("#{bin}/forge --version")
  end
end

