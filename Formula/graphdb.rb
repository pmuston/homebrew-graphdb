class Graphdb < Formula
  desc "In-memory graph database with a Cypher subset over HTTP/JSON"
  homepage "https://github.com/pmuston/homebrew-graphdb"
  version "0.18.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.18.0/graphdb-v0.18.0-darwin-arm64.tar.gz"
      sha256 "69a6bd4443eadda25e8508cda85251a4b94553bfa8034c58b80b30699630f3b5"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.18.0/graphdb-v0.18.0-darwin-amd64.tar.gz"
      sha256 "184413482ab007d67f08a0545764fdbb602ff0a15f8890b936a1a368545a3ed1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.18.0/graphdb-v0.18.0-linux-arm64.tar.gz"
      sha256 "4efa826aaa1c17425fefc3d0adfa4cfd43ce321f249aca6841882eee61eee8be"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.18.0/graphdb-v0.18.0-linux-amd64.tar.gz"
      sha256 "348dabca9b9ccb5a08446f74e63fd8c6c3ae22b2f3e18b67fd16cadc17db9a42"
    end
  end

  def install
    bin.install "graphdb"
  end

  test do
    assert_match "graphdb v", shell_output("#{bin}/graphdb version")
  end
end
