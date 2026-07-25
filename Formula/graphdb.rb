class Graphdb < Formula
  desc "In-memory graph database with a Cypher subset over HTTP/JSON"
  homepage "https://github.com/pmuston/homebrew-graphdb"
  version "0.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.21.0/graphdb-v0.21.0-darwin-arm64.tar.gz"
      sha256 "a4bcab5b76a712f4ad2f67e395bc246f169a8e6597e13157c8cb8c98a41aefcb"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.21.0/graphdb-v0.21.0-darwin-amd64.tar.gz"
      sha256 "aafb7b39f962c8a0cf758438e188bb36a6a9a45714644adccfaacfbc54ad3630"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.21.0/graphdb-v0.21.0-linux-arm64.tar.gz"
      sha256 "050d769c5b30515bce4a43411144d3cf4126d30c010325f26fe5f6df8809aab7"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.21.0/graphdb-v0.21.0-linux-amd64.tar.gz"
      sha256 "95f2f6ba8c0d9233337d36e69323e11b30f7b6e375fecf129dd651cead205281"
    end
  end

  def install
    bin.install "graphdb"
  end

  test do
    assert_match "graphdb v", shell_output("#{bin}/graphdb version")
  end
end
