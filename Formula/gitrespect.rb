class Gitrespect < Formula
  desc "Respect your git work with real metrics - developer productivity CLI"
  homepage "https://github.com/juangracia/gitrespect"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/juangracia/gitrespect/releases/download/v0.2.0/gitrespect-darwin-arm64.tar.gz"
      sha256 "35af89ee644628a7dc02d526aea49c9a2dc1564c48d2654fa6edc2c2e6867f08"
    else
      url "https://github.com/juangracia/gitrespect/releases/download/v0.2.0/gitrespect-darwin-amd64.tar.gz"
      sha256 "6f4f6d1a674b6f2457c244cf75b125aec5a7fc995760b581298529aaf2232fc5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/juangracia/gitrespect/releases/download/v0.2.0/gitrespect-linux-arm64.tar.gz"
      sha256 "9b8d66988d9600b3a1272090d43a623a6818e0a9e4d43f305a9246e5c7f838ae"
    else
      url "https://github.com/juangracia/gitrespect/releases/download/v0.2.0/gitrespect-linux-amd64.tar.gz"
      sha256 "4037f34cdaa57425fea9c246741aa2e5a761ef5557f18df254c879d23febaf05"
    end
  end

  def install
    bin.install "gitrespect"
  end

  test do
    system "#{bin}/gitrespect", "version"
  end
end
