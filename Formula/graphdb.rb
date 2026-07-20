class Graphdb < Formula
  desc "In-memory graph database with a Cypher subset over HTTP/JSON"
  homepage "https://github.com/pmuston/homebrew-graphdb"
  version "0.10.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.10.0/graphdb-v0.10.0-darwin-arm64.tar.gz"
      sha256 "700e117c278994580179686bf4f08724eefc934f2b736e37eac16d98c9223ac3"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.10.0/graphdb-v0.10.0-darwin-amd64.tar.gz"
      sha256 "62c1c8ca740f2a1771cd279aa955d0ad0216a8dd9d1d95d36da59dddffc7bf6e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.10.0/graphdb-v0.10.0-linux-arm64.tar.gz"
      sha256 "37f6758453ab48add243ddad7238c05e14df6b52d7a3352aa9d818768c6233c4"
    end
    on_intel do
      url "https://github.com/pmuston/homebrew-graphdb/releases/download/v0.10.0/graphdb-v0.10.0-linux-amd64.tar.gz"
      sha256 "81a9ec106a6e32a6d93228acbedf72c8bd3d4f24450718a0ffc314139a739be6"
    end
  end

  def install
    bin.install "graphdb"
  end

  test do
    assert_match "graphdb v", shell_output("#{bin}/graphdb version")
  end
end
