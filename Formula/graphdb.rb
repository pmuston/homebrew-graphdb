class Graphdb < Formula
  desc "In-memory graph database with a Cypher subset over HTTP/JSON"
  homepage "https://github.com/pmuston/homebrew-graphdb"
  version "0.25.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.25.0/graphdb-v0.25.0-darwin-arm64.tar.gz"
      sha256 "87b15c4b8b9779aaae488b2d90f381732f8470f237a0612cda0df388584f133f"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.25.0/graphdb-v0.25.0-darwin-amd64.tar.gz"
      sha256 "d7d6442b7038a60e245564591c41a674d59d553522198bd02950d7e2609b0019"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.25.0/graphdb-v0.25.0-linux-arm64.tar.gz"
      sha256 "0b3302907f2961743cd0b7ad42940548fb7858c66e5d60fcf2618826bee6aacd"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.25.0/graphdb-v0.25.0-linux-amd64.tar.gz"
      sha256 "bcaf5dc3bdc8a91523a46e18a6d7151ec6aa22874c15ae5564eeca8cd9120bde"
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
