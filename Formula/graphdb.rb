class Graphdb < Formula
  desc "In-memory graph database with a Cypher subset over HTTP/JSON"
  homepage "https://github.com/pmuston/homebrew-graphdb"
  version "0.27.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.27.0/graphdb-v0.27.0-darwin-arm64.tar.gz"
      sha256 "e9ea778f290c9edce6da657268ac90f36fe67b9964f494cff519ce61ac366bf8"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.27.0/graphdb-v0.27.0-darwin-amd64.tar.gz"
      sha256 "8df545cd622ac702fac0b3e78d0db78bbb2499515eba34de3f909b78a5b1365d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.27.0/graphdb-v0.27.0-linux-arm64.tar.gz"
      sha256 "d18612ecc87484f0c16991a6d6d4dccb84210149376567a6061eefde0af13252"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.27.0/graphdb-v0.27.0-linux-amd64.tar.gz"
      sha256 "a6e7968f98801d055bff4ec49448890d7811c511ff7bdf048222511da3a299fe"
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
