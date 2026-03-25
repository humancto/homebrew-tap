class Punch < Formula
  desc "The Agent Combat System — deploy autonomous AI agent squads from a single binary"
  homepage "https://github.com/humancto/punch"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/humancto/punch/releases/download/v1.1.0/punch-aarch64-apple-darwin.tar.gz"
      sha256 "9576e8ffcd4ede18da2bb22c1e907d404839a577e7434d29161b335077e218f1"
    else
      url "https://github.com/humancto/punch/releases/download/v1.1.0/punch-x86_64-apple-darwin.tar.gz"
      sha256 "e66719de2d75161463ee9d15c891ae0c0ff8f3b986fc9618d1ee97338f49dc77"
    end
  end

  on_linux do
    url "https://github.com/humancto/punch/releases/download/v1.1.0/punch-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a3173021057316d815c90b1ba838d8244fa3f6aeea41c232907668253cf784d9"
  end

  def install
    bin.install "punch"
  end

  test do
    assert_match "punch", shell_output("#{bin}/punch --version")
  end
end
