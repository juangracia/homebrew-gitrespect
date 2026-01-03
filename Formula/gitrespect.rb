class Gitrespect < Formula
  desc "Respect your git work with real metrics - developer productivity CLI"
  homepage "https://github.com/juangracia/gitrespect"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/juangracia/gitrespect/releases/download/v0.1.0/gitrespect-darwin-arm64.tar.gz"
      sha256 "31a8753f912ff9df5ed246ff086d4f632aab7088cd558145956cf47b0f8bd3b9"
    else
      url "https://github.com/juangracia/gitrespect/releases/download/v0.1.0/gitrespect-darwin-amd64.tar.gz"
      sha256 "e179c815250c084fd184be947dd2fb722c6fc0b67a6b10043a0e71cad4e80126"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/juangracia/gitrespect/releases/download/v0.1.0/gitrespect-linux-arm64.tar.gz"
      sha256 "9811d8b9c2220142e129983e64aa86762434a932eb020cb01966feb0254959c4"
    else
      url "https://github.com/juangracia/gitrespect/releases/download/v0.1.0/gitrespect-linux-amd64.tar.gz"
      sha256 "3d4276b5629847819b711c57836b2e8a17dca9ec4f93c5737567d706a3339614"
    end
  end

  def install
    bin.install "gitrespect"
  end

  test do
    system "#{bin}/gitrespect", "version"
  end
end
