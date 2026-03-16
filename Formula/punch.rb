class Punch < Formula
  desc "The Agent Combat System — deploy autonomous AI agent squads from a single binary"
  homepage "https://github.com/humancto/punch"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/humancto/punch/releases/download/v1.0.0/punch-aarch64-apple-darwin.tar.gz"
      sha256 "d5e1999818bee83c98c103e0b6cf0bd949f52d3b3aa02d912e9c39973c2eddae"
    else
      url "https://github.com/humancto/punch/releases/download/v1.0.0/punch-x86_64-apple-darwin.tar.gz"
      sha256 "0438c90f8c68d9f48531af1312052bfb42db862fcd3fec15008518dce5218090"
    end
  end

  on_linux do
    url "https://github.com/humancto/punch/releases/download/v1.0.0/punch-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3b57bad7fc901519025f1a5257455fa13e82623fca2e6ec23bd2fa683c679d2e"
  end

  def install
    bin.install "punch"
  end

  test do
    assert_match "punch", shell_output("#{bin}/punch --version")
  end
end
