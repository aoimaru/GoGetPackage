[app/sources/345356980.Dockerfile]
digraph {
  "sha256:af04869234e8c1dc544233499f6137c0dd836d01d15401d4877cf792e5f550bd" [label="docker-image://docker.io/balenalib/armv5e-debian:jessie-run" shape="ellipse"];
  "sha256:126ab03e1908844df51e011100b2372e5e2acd1fd2d477a118b5ceb4390e9add" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b29169ba47ce21532b6a388aad9e7e0d0af2805c59a668d2bc8aef833c2a6404" [label="sha256:b29169ba47ce21532b6a388aad9e7e0d0af2805c59a668d2bc8aef833c2a6404" shape="plaintext"];
  "sha256:af04869234e8c1dc544233499f6137c0dd836d01d15401d4877cf792e5f550bd" -> "sha256:126ab03e1908844df51e011100b2372e5e2acd1fd2d477a118b5ceb4390e9add" [label=""];
  "sha256:126ab03e1908844df51e011100b2372e5e2acd1fd2d477a118b5ceb4390e9add" -> "sha256:b29169ba47ce21532b6a388aad9e7e0d0af2805c59a668d2bc8aef833c2a6404" [label=""];
}

