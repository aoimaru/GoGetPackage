[app/sources/252773425.Dockerfile]
digraph {
  "sha256:cc7343f5a9b2a93f7c82688f49ff6611a4c1389ce3bb6871e0b8b5be50084dd0" [label="docker-image://docker.io/library/composer:1.5" shape="ellipse"];
  "sha256:5b76c3fa8f1ff649ffcde3356868829852b96d0623ddeec68b234d01a43eace1" [label="/bin/sh -c composer global require tightenco/jigsaw:v1.0.7 && composer clear-cache && apk update && apk --no-cache add nodejs build-base && npm install -g npm && npm cache clean --force" shape="box"];
  "sha256:5ac5dfae90dc34f1557a7ab9419afd70a9bbd73929b32c83437967cf5b991f6f" [label="sha256:5ac5dfae90dc34f1557a7ab9419afd70a9bbd73929b32c83437967cf5b991f6f" shape="plaintext"];
  "sha256:cc7343f5a9b2a93f7c82688f49ff6611a4c1389ce3bb6871e0b8b5be50084dd0" -> "sha256:5b76c3fa8f1ff649ffcde3356868829852b96d0623ddeec68b234d01a43eace1" [label=""];
  "sha256:5b76c3fa8f1ff649ffcde3356868829852b96d0623ddeec68b234d01a43eace1" -> "sha256:5ac5dfae90dc34f1557a7ab9419afd70a9bbd73929b32c83437967cf5b991f6f" [label=""];
}

