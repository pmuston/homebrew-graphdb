class Graphdb < Formula
  desc "In-memory graph database with a Cypher subset over HTTP/JSON"
  homepage "https://github.com/pmuston/homebrew-graphdb"
  version "0.24.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.24.0/graphdb-v0.24.0-darwin-arm64.tar.gz"
      sha256 "e3418ac3b85456fd6a175e6b66fc5be121cf9f2d31c5c2067f5518f2171a00bf"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.24.0/graphdb-v0.24.0-darwin-amd64.tar.gz"
      sha256 "2e7ea7fe707fda18625865acd2d6987427152c3fafaebaa03b10a6af3971e1fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.24.0/graphdb-v0.24.0-linux-arm64.tar.gz"
      sha256 "cea726e2d96cc5ca1fa44a0aa19f30767c120586cf2a5cae130d74491ef9fdf3"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.24.0/graphdb-v0.24.0-linux-amd64.tar.gz"
      sha256 "9c1c6706ce85eef28260e8312db182acff1cbb78006f1cedbd998e272ce9b8b3"
    end
  end

  def install
    bin.install "graphdb"
    man1.install "graphdb.1"
  end

  test do
    assert_match "graphdb v", shell_output("#{bin}/graphdb version")
  end
end
