class Forge < Formula
  desc "Internet-native programming language with natural syntax and Cranelift JIT"
  homepage "https://github.com/humancto/forge-lang"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/humancto/forge-lang/releases/download/v0.5.0/forge-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "d0502ebb5df37b1c06bdc569c335556ea89a85eb01e134e3fb2611831c263952"
    else
      url "https://github.com/humancto/forge-lang/releases/download/v0.5.0/forge-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "10769c8155811100a8a92772263502f89bd05b54dde81dc23936f27b53b9168d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/humancto/forge-lang/releases/download/v0.5.0/forge-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "80c8fa05e8f520e536bc4eec95b5c542f6d9d90aa369a1d4a26ae529b12884a2"
    else
      url "https://github.com/humancto/forge-lang/releases/download/v0.5.0/forge-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3683e9c745d29027b9d95b877f1c7336377ad6b1cd518d7b2d908d7471b1fb07"
    end
  end

  def install
    bin.install "forge"
  end

  test do
    assert_match "Forge v", shell_output("#{bin}/forge --version")
  end
end
