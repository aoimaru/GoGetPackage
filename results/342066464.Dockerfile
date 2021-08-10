[app/sources/342066464.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:f9a17ee1f981a0ba40b8448d113f8f7843c564ff09f8e960da6ce8992332e568" [label="local://context" shape="ellipse"];
  "sha256:b939c8a9482ac813a66efb65627d88b2269bd7f07cc860f109bbdc97e7b7b6ba" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:65f206e8ab66c7cbe591a57780586cc2eab8c3c7251c7e570eeb2355a0e99bb7" [label="sha256:65f206e8ab66c7cbe591a57780586cc2eab8c3c7251c7e570eeb2355a0e99bb7" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:b939c8a9482ac813a66efb65627d88b2269bd7f07cc860f109bbdc97e7b7b6ba" [label=""];
  "sha256:f9a17ee1f981a0ba40b8448d113f8f7843c564ff09f8e960da6ce8992332e568" -> "sha256:b939c8a9482ac813a66efb65627d88b2269bd7f07cc860f109bbdc97e7b7b6ba" [label=""];
  "sha256:b939c8a9482ac813a66efb65627d88b2269bd7f07cc860f109bbdc97e7b7b6ba" -> "sha256:65f206e8ab66c7cbe591a57780586cc2eab8c3c7251c7e570eeb2355a0e99bb7" [label=""];
}

