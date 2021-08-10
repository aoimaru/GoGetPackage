[app/sources/309935181.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:cac163cb377bc3254d9622c06ccc3754ce8ba74a2e794e28ce5104809c248a68" [label="local://context" shape="ellipse"];
  "sha256:5a181b000fec0c841c63dc94ffa1372c9a6ae729c1738cf77dbea42adaa0d4ec" [label="copy{src=/etcdhelper.test, dest=/}" shape="note"];
  "sha256:54837edae22418603e1016ed1b8903d4cc06672c0e789231efe49d9ffe8e4040" [label="sha256:54837edae22418603e1016ed1b8903d4cc06672c0e789231efe49d9ffe8e4040" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:5a181b000fec0c841c63dc94ffa1372c9a6ae729c1738cf77dbea42adaa0d4ec" [label=""];
  "sha256:cac163cb377bc3254d9622c06ccc3754ce8ba74a2e794e28ce5104809c248a68" -> "sha256:5a181b000fec0c841c63dc94ffa1372c9a6ae729c1738cf77dbea42adaa0d4ec" [label=""];
  "sha256:5a181b000fec0c841c63dc94ffa1372c9a6ae729c1738cf77dbea42adaa0d4ec" -> "sha256:54837edae22418603e1016ed1b8903d4cc06672c0e789231efe49d9ffe8e4040" [label=""];
}

