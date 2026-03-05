class Hawk < Formula
  desc "Map your AWS serverless architecture in seconds"
  homepage "https://github.com/humancto/hawk"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/humancto/hawk/releases/download/v0.1.0/hawk-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/humancto/hawk/releases/download/v0.1.0/hawk-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/humancto/hawk/releases/download/v0.1.0/hawk-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/humancto/hawk/releases/download/v0.1.0/hawk-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "hawk"
  end

  test do
    assert_match "hawk", shell_output("#{bin}/hawk --help")
  end
end
