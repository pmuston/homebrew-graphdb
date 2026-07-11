class Graphdb < Formula
  desc "In-memory graph database with a Cypher subset over HTTP/JSON"
  homepage "https://github.com/pmuston/homebrew-graphdb"
  version "0.9.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.9.0/graphdb-v0.9.0-darwin-arm64.tar.gz"
      sha256 "0add730ae5cb6d0b31532967b06ef176eb9858514d3c1d973c7992e5ca464dac"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.9.0/graphdb-v0.9.0-darwin-amd64.tar.gz"
      sha256 "bf5cfa496bee4566cc5bedda3778a06c5b2689129bc5d539cc38b7d79a4609df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.9.0/graphdb-v0.9.0-linux-arm64.tar.gz"
      sha256 "7ef8a9f91a9e7185ced7965dc97ae55ce0238eb6e59e73dc3d204395b396068f"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.9.0/graphdb-v0.9.0-linux-amd64.tar.gz"
      sha256 "27aec9ff4f54e6df2660ec987e49655e4b1d910e268126b390e956bfd0884683"
    end
  end

  def install
    bin.install "graphdb"
  end

  test do
    assert_match "graphdb v", shell_output("#{bin}/graphdb version")
  end
end
