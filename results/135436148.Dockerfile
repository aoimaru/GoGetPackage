[app/sources/135436148.Dockerfile]
digraph {
  "sha256:7bbf54fd15143006d95a10ccec5d266bd2601d0c49e36dac05cf8016de0ac751" [label="docker-image://docker.io/svendowideit/compose:latest" shape="ellipse"];
  "sha256:b64b506be662c45cf4b88a25fa2746ca2e517e14335570920639338cf0853dca" [label="local://context" shape="ellipse"];
  "sha256:6342381ce02edf56a9b007335b6fc1ffad3a74f85504ac88799a841935ed6347" [label="copy{src=/docker-compose.yml, dest=/app/}" shape="note"];
  "sha256:4988f45ce2939c14063ca79e4e1f3628df2e18e48c376741128c394e5693cdb6" [label="sha256:4988f45ce2939c14063ca79e4e1f3628df2e18e48c376741128c394e5693cdb6" shape="plaintext"];
  "sha256:7bbf54fd15143006d95a10ccec5d266bd2601d0c49e36dac05cf8016de0ac751" -> "sha256:6342381ce02edf56a9b007335b6fc1ffad3a74f85504ac88799a841935ed6347" [label=""];
  "sha256:b64b506be662c45cf4b88a25fa2746ca2e517e14335570920639338cf0853dca" -> "sha256:6342381ce02edf56a9b007335b6fc1ffad3a74f85504ac88799a841935ed6347" [label=""];
  "sha256:6342381ce02edf56a9b007335b6fc1ffad3a74f85504ac88799a841935ed6347" -> "sha256:4988f45ce2939c14063ca79e4e1f3628df2e18e48c376741128c394e5693cdb6" [label=""];
}

