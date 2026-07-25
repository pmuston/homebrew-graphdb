class Graphdb < Formula
  desc "In-memory graph database with a Cypher subset over HTTP/JSON"
  homepage "https://github.com/pmuston/homebrew-graphdb"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.19.0/graphdb-v0.19.0-darwin-arm64.tar.gz"
      sha256 "f1629938649f36aaab6a36e45687b7c6c0fb9a045b8de961f41fd450d9fc7f84"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.19.0/graphdb-v0.19.0-darwin-amd64.tar.gz"
      sha256 "4ba4296ea7bf5436854f43adeaa38b88c6d2cfee94467ee3fd43959ed68bc5a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.19.0/graphdb-v0.19.0-linux-arm64.tar.gz"
      sha256 "45b7bdb7015ed50e9542d03d806544ad4a1ea790844f354db98ef94167b91fd8"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.19.0/graphdb-v0.19.0-linux-amd64.tar.gz"
      sha256 "014a7551dfc40a3199d12fbb3cdc84cb25b0c8113270a72b7783545cf4196f14"
    end
  end

  def install
    bin.install "graphdb"
  end

  test do
    assert_match "graphdb v", shell_output("#{bin}/graphdb version")
  end
end
