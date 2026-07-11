# homebrew-graphdb

Homebrew tap for **graphdb** — an in-memory graph database with a Cypher subset
over HTTP/JSON. Prebuilt static binaries (macOS & Linux, Intel & Apple Silicon);
no dependencies to build.

## Install

```bash
brew tap pmuston/graphdb
brew install graphdb
graphdb version
```

## Quick start

```bash
graphdb --listen :8087 --db graph.db     # start the server
curl -s localhost:8087/                   # discovery: version, features
```

Release binaries are attached to this repo's [Releases](../../releases).
