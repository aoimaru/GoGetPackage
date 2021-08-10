[app/sources/252801414.Dockerfile]
digraph {
  "sha256:c89806bc7d75a3601c0fc6bbd6f5d427f9957bee92800c6690361e4e3b90f037" [label="docker-image://docker.io/library/composer:1.6" shape="ellipse"];
  "sha256:f76333ee763a5d7e7969be85d1bd9a8c0ef4747503d642b206e412e6eb84e559" [label="/bin/sh -c composer global require tightenco/jigsaw:v1.2.2 && composer clear-cache && apk update && apk --no-cache add nodejs build-base libpng-dev && npm install -g npm && npm cache clean --force" shape="box"];
  "sha256:d76893697d5e40ffb08a9c384a4abf039a3164e322f3858a868695dded7e2263" [label="sha256:d76893697d5e40ffb08a9c384a4abf039a3164e322f3858a868695dded7e2263" shape="plaintext"];
  "sha256:c89806bc7d75a3601c0fc6bbd6f5d427f9957bee92800c6690361e4e3b90f037" -> "sha256:f76333ee763a5d7e7969be85d1bd9a8c0ef4747503d642b206e412e6eb84e559" [label=""];
  "sha256:f76333ee763a5d7e7969be85d1bd9a8c0ef4747503d642b206e412e6eb84e559" -> "sha256:d76893697d5e40ffb08a9c384a4abf039a3164e322f3858a868695dded7e2263" [label=""];
}

