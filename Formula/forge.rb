class Forge < Formula
  desc "Internet-native programming language with natural syntax and Cranelift JIT"
  homepage "https://github.com/humancto/forge-lang"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/humancto/forge-lang/releases/download/v0.4.0/forge-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "294776be14f4d111d9dabc17a691adb6e27460d57cd69e4f5944ee6dca7c9b77"
    else
      url "https://github.com/humancto/forge-lang/releases/download/v0.4.0/forge-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "f7b2d5921447f0efbd3629ed356dad52f420632b95bfce0843b9568a762fe352"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/humancto/forge-lang/releases/download/v0.4.0/forge-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1d19c078a796d89ca2b023f3fb7a645dbf3a980b79518bc07e95529ef2fc251e"
    else
      url "https://github.com/humancto/forge-lang/releases/download/v0.4.0/forge-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "34e05c916ed3f70ac597706a41c6c24d2d6d28de1f56bd4dc4d1fecf8c61094e"
    end
  end

  def install
    bin.install "forge"
  end

  test do
    assert_match "Forge v", shell_output("#{bin}/forge --version")
  end
end
