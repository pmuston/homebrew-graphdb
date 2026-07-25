class Graphdb < Formula
  desc "In-memory graph database with a Cypher subset over HTTP/JSON"
  homepage "https://github.com/pmuston/homebrew-graphdb"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.20.0/graphdb-v0.20.0-darwin-arm64.tar.gz"
      sha256 "0f244e321254db5d566e044d9aa351d039124e0ac9d355075cd13bf4bf99e1d8"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.20.0/graphdb-v0.20.0-darwin-amd64.tar.gz"
      sha256 "03426976c839251f7e222db22c4862bcd29c805b88320927df8ce3cdf54cceb3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.20.0/graphdb-v0.20.0-linux-arm64.tar.gz"
      sha256 "988697eb1fb19b8029aefe1ae72b75fdd4c3ff98b87054a1344abef985c4eacb"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.20.0/graphdb-v0.20.0-linux-amd64.tar.gz"
      sha256 "30eeafca257535d3ecb7e0347fe578eafa022535eec2312dd040b2891d54b6e0"
    end
  end

  def install
    bin.install "graphdb"
  end

  test do
    assert_match "graphdb v", shell_output("#{bin}/graphdb version")
  end
end
