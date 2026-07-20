class Graphdb < Formula
  desc "In-memory graph database with a Cypher subset over HTTP/JSON"
  homepage "https://github.com/pmuston/homebrew-graphdb"
  version "0.15.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.15.0/graphdb-v0.15.0-darwin-arm64.tar.gz"
      sha256 "2c518d7a682464864454fbd745fc11e2f099a6522f4010a17f3501bd53190ca2"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.15.0/graphdb-v0.15.0-darwin-amd64.tar.gz"
      sha256 "1eb4d6d97dea02720420ba71a8c7f400a1a1870804a989e23ad513797894c78f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.15.0/graphdb-v0.15.0-linux-arm64.tar.gz"
      sha256 "2c92b0abcfceeb1028f21be13b9586eef3b7da0b79c7ec0c58c5ded37c8927b0"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.15.0/graphdb-v0.15.0-linux-amd64.tar.gz"
      sha256 "81a04655b40573e7d59e1a396952878167f87b6fa1ce2e5d51b9e48377ff8a36"
    end
  end

  def install
    bin.install "graphdb"
  end

  test do
    assert_match "graphdb v", shell_output("#{bin}/graphdb version")
  end
end
