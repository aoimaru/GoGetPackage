[app/sources/463400562.Dockerfile]
digraph {
  "sha256:8e1beec418db61e746cc64a2dcc7c86524df7b873abaeb150f7762078d14562b" [label="docker-image://docker.io/library/nginx:1.12" shape="ellipse"];
  "sha256:39b6532b881cf155ff702264cc1d8b9077e160b663493b9433d66e960c1fcd50" [label="/bin/sh -c ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone" shape="box"];
  "sha256:73ff56383bf9a463f5f981db5d7928cf40992a6c1953e4acbf3434a26dc5819e" [label="sha256:73ff56383bf9a463f5f981db5d7928cf40992a6c1953e4acbf3434a26dc5819e" shape="plaintext"];
  "sha256:8e1beec418db61e746cc64a2dcc7c86524df7b873abaeb150f7762078d14562b" -> "sha256:39b6532b881cf155ff702264cc1d8b9077e160b663493b9433d66e960c1fcd50" [label=""];
  "sha256:39b6532b881cf155ff702264cc1d8b9077e160b663493b9433d66e960c1fcd50" -> "sha256:73ff56383bf9a463f5f981db5d7928cf40992a6c1953e4acbf3434a26dc5819e" [label=""];
}

