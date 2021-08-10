[app/sources/163509221.Dockerfile]
digraph {
  "sha256:57f6260d49f2c499e3b4981497b6c2a9abe5c377157373abc2904f3a33849f13" [label="docker-image://docker.io/library/ubuntu:15.04" shape="ellipse"];
  "sha256:c00ff2c02c28f98655177a679d44ff43646a5c214c6e93a86c3d1ff5c0d69beb" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:f873aea14982c2d7ae28997758e6d75cfc9a2c519d021a8349d2d31a74a6d22e" [label="/bin/sh -c apt-get -y install build-essential zlib1g-dev ruby-dev ruby nodejs     && apt-get clean     && rm -rf /var/lib/apt/lists/" shape="box"];
  "sha256:7bc89df29079b212d767275666786f934562dfc13181599b9fe5cda009d40e98" [label="/bin/sh -c gem install github-pages -v 39" shape="box"];
  "sha256:bacd8cd8ca4b4fae47d1f75f31f5278068fbfa5a0ef7e7517bb8f72e23c725f5" [label="mkdir{path=/site}" shape="note"];
  "sha256:4317208ac83181b9cf5dfe1e73175daeb61e5d857ea00e73f6d9dc7f8bef6568" [label="sha256:4317208ac83181b9cf5dfe1e73175daeb61e5d857ea00e73f6d9dc7f8bef6568" shape="plaintext"];
  "sha256:57f6260d49f2c499e3b4981497b6c2a9abe5c377157373abc2904f3a33849f13" -> "sha256:c00ff2c02c28f98655177a679d44ff43646a5c214c6e93a86c3d1ff5c0d69beb" [label=""];
  "sha256:c00ff2c02c28f98655177a679d44ff43646a5c214c6e93a86c3d1ff5c0d69beb" -> "sha256:f873aea14982c2d7ae28997758e6d75cfc9a2c519d021a8349d2d31a74a6d22e" [label=""];
  "sha256:f873aea14982c2d7ae28997758e6d75cfc9a2c519d021a8349d2d31a74a6d22e" -> "sha256:7bc89df29079b212d767275666786f934562dfc13181599b9fe5cda009d40e98" [label=""];
  "sha256:7bc89df29079b212d767275666786f934562dfc13181599b9fe5cda009d40e98" -> "sha256:bacd8cd8ca4b4fae47d1f75f31f5278068fbfa5a0ef7e7517bb8f72e23c725f5" [label=""];
  "sha256:bacd8cd8ca4b4fae47d1f75f31f5278068fbfa5a0ef7e7517bb8f72e23c725f5" -> "sha256:4317208ac83181b9cf5dfe1e73175daeb61e5d857ea00e73f6d9dc7f8bef6568" [label=""];
}

