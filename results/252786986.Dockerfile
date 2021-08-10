[app/sources/252786986.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:81d6f75b69716a71d2449268b8b1cbfaa3b3d25e79e503923637b175d93602a7" [label="sha256:81d6f75b69716a71d2449268b8b1cbfaa3b3d25e79e503923637b175d93602a7" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" [label=""];
  "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" -> "sha256:81d6f75b69716a71d2449268b8b1cbfaa3b3d25e79e503923637b175d93602a7" [label=""];
}

