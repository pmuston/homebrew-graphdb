class Graphdb < Formula
  desc "In-memory graph database with a Cypher subset over HTTP/JSON"
  homepage "https://github.com/pmuston/homebrew-graphdb"
  version "0.28.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.28.0/graphdb-v0.28.0-darwin-arm64.tar.gz"
      sha256 "11207b53fce0a1464762cc98cddfe097289074d90fba2d358aa68957173f9037"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.28.0/graphdb-v0.28.0-darwin-amd64.tar.gz"
      sha256 "a33fbcaf20419543e316158f8880395b0ae72f3475773ce7f38f7e9d4a8322c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.28.0/graphdb-v0.28.0-linux-arm64.tar.gz"
      sha256 "15a77400392b792046c18100b7f69dec91e167c01b1bfdb078d3ff6e290f2609"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.28.0/graphdb-v0.28.0-linux-amd64.tar.gz"
      sha256 "091eb611c57abc66132117a20d593d22f1d43d771b32e1664c85830dbceaeae0"
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
