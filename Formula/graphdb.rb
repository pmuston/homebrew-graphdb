class Graphdb < Formula
  desc "In-memory graph database with a Cypher subset over HTTP/JSON"
  homepage "https://github.com/pmuston/homebrew-graphdb"
  version "0.22.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.22.0/graphdb-v0.22.0-darwin-arm64.tar.gz"
      sha256 "2d1c9df12b7106a5ce3d1bc2616aa9415e5f6cc0c03f79cb56cd9b3a0182f650"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.22.0/graphdb-v0.22.0-darwin-amd64.tar.gz"
      sha256 "1d022d6f51c48194eca4281f29d09c9ae36eb8c284e6d10b266ae48efcfbc22b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.22.0/graphdb-v0.22.0-linux-arm64.tar.gz"
      sha256 "90291bacf1aae24942e888eb9704e98c7b1c3ba961ebff765615c32abf93ff1f"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.22.0/graphdb-v0.22.0-linux-amd64.tar.gz"
      sha256 "9b3dc522c4621295cfcb5cde17306913f59d3de9f4492e0e7a797b116e4b099d"
    end
  end

  def install
    bin.install "graphdb"
  end

  test do
    assert_match "graphdb v", shell_output("#{bin}/graphdb version")
  end
end
