[app/sources/252775865.Dockerfile]
digraph {
  "sha256:e85c912813bdc6775b45c34a061f8351bfb7c17ff2641fdb0a30a653c58c9475" [label="docker-image://docker.io/library/elixir:1.6.5-slim" shape="ellipse"];
  "sha256:6f37d44a1bc1f8f38c5b9237652bf55dcce1d69799c35e20ad27e4139f11e237" [label="/bin/sh -c mix local.hex \\--force && mix local.rebar \\--force" shape="box"];
  "sha256:daf21e8d3675728978c3617890d81faa56b825f3cf3d100063919e73346f35d9" [label="sha256:daf21e8d3675728978c3617890d81faa56b825f3cf3d100063919e73346f35d9" shape="plaintext"];
  "sha256:e85c912813bdc6775b45c34a061f8351bfb7c17ff2641fdb0a30a653c58c9475" -> "sha256:6f37d44a1bc1f8f38c5b9237652bf55dcce1d69799c35e20ad27e4139f11e237" [label=""];
  "sha256:6f37d44a1bc1f8f38c5b9237652bf55dcce1d69799c35e20ad27e4139f11e237" -> "sha256:daf21e8d3675728978c3617890d81faa56b825f3cf3d100063919e73346f35d9" [label=""];
}

