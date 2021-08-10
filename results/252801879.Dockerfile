[app/sources/252801879.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:5b30860d7a3e207340ea3da9ee9358e7c1802f1904172389fbe48e9dbd64f3c1" [label="/bin/sh -c apt-get install -y octave" shape="box"];
  "sha256:03f1a642648729012b9e369223f1893c7e54b34b92ece3e1ef42b0b7c3e4e4fb" [label="sha256:03f1a642648729012b9e369223f1893c7e54b34b92ece3e1ef42b0b7c3e4e4fb" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" [label=""];
  "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" -> "sha256:5b30860d7a3e207340ea3da9ee9358e7c1802f1904172389fbe48e9dbd64f3c1" [label=""];
  "sha256:5b30860d7a3e207340ea3da9ee9358e7c1802f1904172389fbe48e9dbd64f3c1" -> "sha256:03f1a642648729012b9e369223f1893c7e54b34b92ece3e1ef42b0b7c3e4e4fb" [label=""];
}

