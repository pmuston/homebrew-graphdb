class Graphdb < Formula
  desc "In-memory graph database with a Cypher subset over HTTP/JSON"
  homepage "https://github.com/pmuston/homebrew-graphdb"
  version "0.11.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.11.0/graphdb-v0.11.0-darwin-arm64.tar.gz"
      sha256 "81e9bcaef9668bc6045977fe63b33671a6640997de00239bb020096f769c3b7c"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.11.0/graphdb-v0.11.0-darwin-amd64.tar.gz"
      sha256 "ff71755ab418851ded85f06fba5289101ca28b9197884889c506f9d954eba9c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.11.0/graphdb-v0.11.0-linux-arm64.tar.gz"
      sha256 "4b37586266348343e4c1cc6b5e3ad129dfef846e61c899f4a566d292c7273fda"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.11.0/graphdb-v0.11.0-linux-amd64.tar.gz"
      sha256 "0617164007eb348e92c78ff1d022c22dd2872304bf634827dbad03533fc4ed93"
    end
  end

  def install
    bin.install "graphdb"
  end

  test do
    assert_match "graphdb v", shell_output("#{bin}/graphdb version")
  end
end
