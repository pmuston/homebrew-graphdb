class Graphdb < Formula
  desc "In-memory graph database with a Cypher subset over HTTP/JSON"
  homepage "https://github.com/pmuston/homebrew-graphdb"
  version "0.13.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.13.0/graphdb-v0.13.0-darwin-arm64.tar.gz"
      sha256 "212ebc9770639a60680290e997d2c6cf4d71b69b8dc6472cfdce3e0982bd9a28"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.13.0/graphdb-v0.13.0-darwin-amd64.tar.gz"
      sha256 "74691cefcb5fe8d65d40c45687b31bacfbba3dd082b329d5ceb89ee737856dfb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.13.0/graphdb-v0.13.0-linux-arm64.tar.gz"
      sha256 "e13c07e1f6e1bb970bd9ff435e7616b00210ef8bf475cef4d266da1b103a4e72"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.13.0/graphdb-v0.13.0-linux-amd64.tar.gz"
      sha256 "dd36b6c4bf704dde3be3282a7fb42ddea2d9b3ec8ecb6fc67ab1e1494658cec1"
    end
  end

  def install
    bin.install "graphdb"
  end

  test do
    assert_match "graphdb v", shell_output("#{bin}/graphdb version")
  end
end
