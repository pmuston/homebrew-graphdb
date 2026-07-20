class Graphdb < Formula
  desc "In-memory graph database with a Cypher subset over HTTP/JSON"
  homepage "https://github.com/pmuston/homebrew-graphdb"
  version "0.16.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.16.0/graphdb-v0.16.0-darwin-arm64.tar.gz"
      sha256 "eb673c3b0df4324d32867a8acfa246216119fec1df487dcbcfc1c83fe2c87eb8"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.16.0/graphdb-v0.16.0-darwin-amd64.tar.gz"
      sha256 "6c39d5a05e386b4c493f6afd6a3bcc1d8beeb37ef19cb8a14a2eb8086b07e5e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.16.0/graphdb-v0.16.0-linux-arm64.tar.gz"
      sha256 "30915cbee7859cb00859afca7018e34b54ee67318df81375b9f5ec893a35440a"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.16.0/graphdb-v0.16.0-linux-amd64.tar.gz"
      sha256 "fdbc1fd5fe50012138f0d6ecf079cd29043dd7b6ea97f962f432adf265f80ff2"
    end
  end

  def install
    bin.install "graphdb"
  end

  test do
    assert_match "graphdb v", shell_output("#{bin}/graphdb version")
  end
end
