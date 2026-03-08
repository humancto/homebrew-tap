class ScalaDepScan < Formula
  desc "Fast dependency risk scanner for Scala/Play/SBT projects"
  homepage "https://github.com/humancto/happy-scan-scala"
  url "https://github.com/humancto/happy-scan-scala/archive/refs/tags/v0.3.0.tar.gz"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "scala-dep-scan", shell_output("#{bin}/scala-dep-scan --version")
  end
end
