[app/sources/341899768.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:b464a51976f7344be0f7ea151b614a775bbfc86e03bdeb3f97ed03bcf43eed0d" [label="local://context" shape="ellipse"];
  "sha256:fce9ded7f8aa54c3ba9a7a335dacff57e3edddebedaf690f364710ceded7198b" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:19ead5c10077eacf93d4a2e46c297cd17d7aa979a90fa1916b87c5df6135687d" [label="sha256:19ead5c10077eacf93d4a2e46c297cd17d7aa979a90fa1916b87c5df6135687d" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:fce9ded7f8aa54c3ba9a7a335dacff57e3edddebedaf690f364710ceded7198b" [label=""];
  "sha256:b464a51976f7344be0f7ea151b614a775bbfc86e03bdeb3f97ed03bcf43eed0d" -> "sha256:fce9ded7f8aa54c3ba9a7a335dacff57e3edddebedaf690f364710ceded7198b" [label=""];
  "sha256:fce9ded7f8aa54c3ba9a7a335dacff57e3edddebedaf690f364710ceded7198b" -> "sha256:19ead5c10077eacf93d4a2e46c297cd17d7aa979a90fa1916b87c5df6135687d" [label=""];
}

