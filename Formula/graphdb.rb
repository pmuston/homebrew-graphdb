class Graphdb < Formula
  desc "In-memory graph database with a Cypher subset over HTTP/JSON"
  homepage "https://github.com/pmuston/homebrew-graphdb"
  version "0.29.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.29.0/graphdb-v0.29.0-darwin-arm64.tar.gz"
      sha256 "d0992af52dbd6212356c0ecdde131a182b1789cb3c259459fecb5bc91dbd879c"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.29.0/graphdb-v0.29.0-darwin-amd64.tar.gz"
      sha256 "9a5c8938cce2cfa7568fcd8210430f4df237a94c726885b71d0a4333bb30350c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.29.0/graphdb-v0.29.0-linux-arm64.tar.gz"
      sha256 "9825a617f45a0d3997f8446a98d5a39224b2813bdca5292d81251f32437926bb"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.29.0/graphdb-v0.29.0-linux-amd64.tar.gz"
      sha256 "0366335860aa90ed96b95154a7951d312e978339f435a8173c2b49fe9187a9a7"
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
