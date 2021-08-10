[app/sources/215515731.Dockerfile]
digraph {
  "sha256:6daf32cf5cb173e0e46f63175e550df8e7e50decd92839a406d49ebc68e41d01" [label="docker-image://docker.io/iron/php:latest" shape="ellipse"];
  "sha256:68a233bec1e0c6bcc185f2151a80c4c8a1782e1a694ecfd5f76cbffa6544e1d2" [label="mkdir{path=/app}" shape="note"];
  "sha256:7aaafdde65a6554101876b45f2772ed2544516d88a3aefc5bfb63fff372e5da6" [label="local://context" shape="ellipse"];
  "sha256:b8ed653278573b2693275c61177df9a881080460fb122b5b3d2e9866f18c90b1" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:fcd5ebcae0441d5b8729bc406a96ea86127561dd8fad58d5f9dc7d9401ce7318" [label="sha256:fcd5ebcae0441d5b8729bc406a96ea86127561dd8fad58d5f9dc7d9401ce7318" shape="plaintext"];
  "sha256:6daf32cf5cb173e0e46f63175e550df8e7e50decd92839a406d49ebc68e41d01" -> "sha256:68a233bec1e0c6bcc185f2151a80c4c8a1782e1a694ecfd5f76cbffa6544e1d2" [label=""];
  "sha256:68a233bec1e0c6bcc185f2151a80c4c8a1782e1a694ecfd5f76cbffa6544e1d2" -> "sha256:b8ed653278573b2693275c61177df9a881080460fb122b5b3d2e9866f18c90b1" [label=""];
  "sha256:7aaafdde65a6554101876b45f2772ed2544516d88a3aefc5bfb63fff372e5da6" -> "sha256:b8ed653278573b2693275c61177df9a881080460fb122b5b3d2e9866f18c90b1" [label=""];
  "sha256:b8ed653278573b2693275c61177df9a881080460fb122b5b3d2e9866f18c90b1" -> "sha256:fcd5ebcae0441d5b8729bc406a96ea86127561dd8fad58d5f9dc7d9401ce7318" [label=""];
}

