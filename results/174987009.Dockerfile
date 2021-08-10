[app/sources/174987009.Dockerfile]
digraph {
  "sha256:67ca87eacda16dfedf0a605cc15deed25d6cece0d5397b5f244f751f6d913187" [label="docker-image://docker.io/easypi/alpine-arm:latest" shape="ellipse"];
  "sha256:00412cf937e7b010c601f3cbdd668750d447d2247425cf2b04011f7dfda17301" [label="/bin/sh -c set -xe     && apk add --no-cache nginx     && mkdir -p /run/nginx" shape="box"];
  "sha256:a56e8efe410ff7ac90959b461e3fac60c1adb7d9b562033b8423efcdab2c4905" [label="sha256:a56e8efe410ff7ac90959b461e3fac60c1adb7d9b562033b8423efcdab2c4905" shape="plaintext"];
  "sha256:67ca87eacda16dfedf0a605cc15deed25d6cece0d5397b5f244f751f6d913187" -> "sha256:00412cf937e7b010c601f3cbdd668750d447d2247425cf2b04011f7dfda17301" [label=""];
  "sha256:00412cf937e7b010c601f3cbdd668750d447d2247425cf2b04011f7dfda17301" -> "sha256:a56e8efe410ff7ac90959b461e3fac60c1adb7d9b562033b8423efcdab2c4905" [label=""];
}

