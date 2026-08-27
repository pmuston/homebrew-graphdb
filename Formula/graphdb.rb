class Graphdb < Formula
  desc "In-memory graph database with a Cypher subset over HTTP/JSON"
  homepage "https://github.com/pmuston/homebrew-graphdb"
  version "0.30.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.30.0/graphdb-v0.30.0-darwin-arm64.tar.gz"
      sha256 "69248668af8ff65c0a1d48771b7388a8fc80aa0b8c12180b061f528a86e91c0d"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.30.0/graphdb-v0.30.0-darwin-amd64.tar.gz"
      sha256 "98aad3b6a8b5dd1f1c74c245979a70d2bcdd123d887a27602c7669f4efb52fd5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.30.0/graphdb-v0.30.0-linux-arm64.tar.gz"
      sha256 "0b7d5345d6c10acd80e1062f85d7fd9da7b3b7a35ed8b7423b6be6c5704105fe"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.30.0/graphdb-v0.30.0-linux-amd64.tar.gz"
      sha256 "3bb40ec7ffa94fed1cc6316e6075bdf9b6ef2cdb38582877999154ed5f1480d2"
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
