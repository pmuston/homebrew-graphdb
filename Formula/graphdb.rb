class Graphdb < Formula
  desc "In-memory graph database with a Cypher subset over HTTP/JSON"
  homepage "https://github.com/pmuston/homebrew-graphdb"
  version "0.14.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.14.0/graphdb-v0.14.0-darwin-arm64.tar.gz"
      sha256 "85b51ce95fbbf2a0f1d81d6add2408cf64c5f03af377e8f37ba0d5c4f910e90f"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.14.0/graphdb-v0.14.0-darwin-amd64.tar.gz"
      sha256 "892070a60c5ae28ddf2666cbe67da23f4afde4e7cd5d201f3bbd55510dca9ca5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.14.0/graphdb-v0.14.0-linux-arm64.tar.gz"
      sha256 "37e62788fbbb00a687d59097b24bf48198e1d0e1612a31e391aa684dce7866d1"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.14.0/graphdb-v0.14.0-linux-amd64.tar.gz"
      sha256 "d670f9ac259378ae5654b291c5379b33d0b3795a7704064c615c219870676ca0"
    end
  end

  def install
    bin.install "graphdb"
  end

  test do
    assert_match "graphdb v", shell_output("#{bin}/graphdb version")
  end
end
