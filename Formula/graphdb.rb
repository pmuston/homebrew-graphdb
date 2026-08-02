class Graphdb < Formula
  desc "In-memory graph database with a Cypher subset over HTTP/JSON"
  homepage "https://github.com/pmuston/homebrew-graphdb"
  version "0.26.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.26.0/graphdb-v0.26.0-darwin-arm64.tar.gz"
      sha256 "f170d8116dbde4d855d2ad8a4639c265f37a4ef0c2e8a990e75ec652b72de516"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.26.0/graphdb-v0.26.0-darwin-amd64.tar.gz"
      sha256 "2fd843f38afd1d125acd9f5ac18ec8294a8cf7e88d043ccf71c5571d79424f2c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.26.0/graphdb-v0.26.0-linux-arm64.tar.gz"
      sha256 "e4151d3f7121cea5de8634f8dc93c136310b6e8e3d986d1022cb0fa2a5482474"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.26.0/graphdb-v0.26.0-linux-amd64.tar.gz"
      sha256 "c6f1b78fb374eaeb7ea1758f8063c156cec86f8cb36aa0a57a8d86350c59ce70"
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
