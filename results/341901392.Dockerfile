[app/sources/341901392.Dockerfile]
digraph {
  "sha256:4306f98fc920786500fd14daddc14316cc687a10b695a5b819d46dbeb13fb944" [label="local://context" shape="ellipse"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:fe25dceb9ca1aee2122ecbaf239192b91e444e1f08672efbb2ced80f8656a740" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:431967388bfa14464329711270f074670a32b6cfcf6796e7ebf64c5bb2075f4e" [label="sha256:431967388bfa14464329711270f074670a32b6cfcf6796e7ebf64c5bb2075f4e" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:fe25dceb9ca1aee2122ecbaf239192b91e444e1f08672efbb2ced80f8656a740" [label=""];
  "sha256:4306f98fc920786500fd14daddc14316cc687a10b695a5b819d46dbeb13fb944" -> "sha256:fe25dceb9ca1aee2122ecbaf239192b91e444e1f08672efbb2ced80f8656a740" [label=""];
  "sha256:fe25dceb9ca1aee2122ecbaf239192b91e444e1f08672efbb2ced80f8656a740" -> "sha256:431967388bfa14464329711270f074670a32b6cfcf6796e7ebf64c5bb2075f4e" [label=""];
}

