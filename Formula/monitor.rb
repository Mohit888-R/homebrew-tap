class Monitor < Formula
  desc "Ultra-lightweight (<10MB) intelligent system & developer monitor for macOS"
  homepage "https://github.com/Mohit888-R/monitor"
  url "https://github.com/Mohit888-R/monitor/archive/refs/tags/v1.0.0.tar.gz"
  version "1.0.0"
  sha256 "4bac4e8e7eff11606bc672b83571ae127d94630bfc6dd21c2c4c23954672d11d"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags=-s -w", "-o", bin/"monitor", "."
  end

  test do
    assert_match "Host:", shell_output("#{bin}/monitor --status")
  end
end
