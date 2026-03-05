class Forge < Formula
  desc "Internet-native programming language with natural syntax and Cranelift JIT"
  homepage "https://github.com/humancto/forge-lang"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/humancto/forge-lang/releases/download/v0.4.2/forge-v0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "493cedf5a2496198952b6a5b95182e0e539434fbf066916498c8bb813d2f2f47"
    else
      url "https://github.com/humancto/forge-lang/releases/download/v0.4.2/forge-v0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "350142a7cc022fc0bd035cd87a230e23f0076b0805f983e1d3bd5119031e1eda"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/humancto/forge-lang/releases/download/v0.4.2/forge-v0.4.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f50d98912bf27139fab513caca6e52a322498ac05b11b401ed18435e19cc079f"
    else
      url "https://github.com/humancto/forge-lang/releases/download/v0.4.2/forge-v0.4.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b9784460af64e659e212eef84715c7227a0b6814f4f86d0798d031f74586180c"
    end
  end

  def install
    bin.install "forge"
  end

  test do
    assert_match "Forge v", shell_output("#{bin}/forge --version")
  end
end
