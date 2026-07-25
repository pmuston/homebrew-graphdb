class Graphdb < Formula
  desc "In-memory graph database with a Cypher subset over HTTP/JSON"
  homepage "https://github.com/pmuston/homebrew-graphdb"
  version "0.23.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.23.0/graphdb-v0.23.0-darwin-arm64.tar.gz"
      sha256 "cc75b2025d509382be11d9498849106ee9855d8ea6de70bffde70b043589fad5"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.23.0/graphdb-v0.23.0-darwin-amd64.tar.gz"
      sha256 "656506516b104db6728b49e023fb4f767251294b63f37a11d3b499cfd109140d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.23.0/graphdb-v0.23.0-linux-arm64.tar.gz"
      sha256 "97db4b12f5fc6373e7955f933895789e51d1169a65b0b0b4e9fbbb3bcafe5d85"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.23.0/graphdb-v0.23.0-linux-amd64.tar.gz"
      sha256 "026971efcff90624042daee7d518f953235cba99fdecbe6ceca248447730c8fc"
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
