class Punch < Formula
  desc "The Agent Combat System — deploy autonomous AI agent squads from a single binary"
  homepage "https://github.com/humancto/punch"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/humancto/punch/releases/download/v1.2.0/punch-aarch64-apple-darwin.tar.gz"
      sha256 "62f20a188d5003451b05d3e5b892b5f2538c393de417b949e4f97fe36659ae0d"
    else
      url "https://github.com/humancto/punch/releases/download/v1.2.0/punch-x86_64-apple-darwin.tar.gz"
      sha256 "7145fc7dfdfb099c9d3d4ab68e3762980a46971c49c4de9c7033679c13a30d1a"
    end
  end

  on_linux do
    url "https://github.com/humancto/punch/releases/download/v1.2.0/punch-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9644e514a750cb3d74ce6efc528104d4b80abeb63126cb5a41307116c6a83f4b"
  end

  def install
    bin.install "punch"
  end

  test do
    assert_match "punch", shell_output("#{bin}/punch --version")
  end
end
