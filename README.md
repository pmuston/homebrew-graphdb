# homebrew-graphdb

Homebrew tap for **graphdb** — an in-memory graph database with a Cypher subset
over HTTP/JSON. Prebuilt static binaries (macOS & Linux, Intel & Apple Silicon);
no dependencies to build.

## Install

```bash
brew tap pmuston/graphdb
brew trust pmuston/graphdb     # third-party taps must be trusted before install
brew install graphdb
graphdb version
```

> Recent Homebrew refuses to load formulae from an untrusted third-party tap; the
> `brew trust` step above authorizes this one. If your Homebrew doesn't recognize
> `brew trust`, it's older and will install without it.

## Quick start

```bash
graphdb --listen :8087 --db graph.db     # start the server
curl -s localhost:8087/                    # discovery: version, features, endpoints
curl -s localhost:8087/health              # liveness
```

Release binaries are attached to this repo's [Releases](../../releases).

## Upgrade / uninstall

```bash
brew upgrade graphdb
brew uninstall graphdb && brew untap pmuston/graphdb
```
