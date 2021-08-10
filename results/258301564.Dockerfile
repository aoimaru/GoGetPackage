[app/sources/258301564.Dockerfile]
digraph {
  "sha256:b103282a815bf8df9d383619d2e6405d0355245aad8ee31b658cf463d69db9db" [label="docker-image://docker.io/library/node:4.3.2-wheezy" shape="ellipse"];
  "sha256:22968a2aa0cfaf45117b0623f6ad2947fb7c65d0ad065c4fa6ae437570dc113f" [label="/bin/sh -c npm set progress=false &&     npm install -g --progress=false yarn" shape="box"];
  "sha256:44df975b161a01ed2400e7e1ec9b19ab26e6031ee68a7799b1d4a3ad86d94764" [label="mkdir{path=/workspace}" shape="note"];
  "sha256:7d6291af8ba056f6b3cfdec3a80e7b77618cd28080f3234a683c779618a3dd3a" [label="sha256:7d6291af8ba056f6b3cfdec3a80e7b77618cd28080f3234a683c779618a3dd3a" shape="plaintext"];
  "sha256:b103282a815bf8df9d383619d2e6405d0355245aad8ee31b658cf463d69db9db" -> "sha256:22968a2aa0cfaf45117b0623f6ad2947fb7c65d0ad065c4fa6ae437570dc113f" [label=""];
  "sha256:22968a2aa0cfaf45117b0623f6ad2947fb7c65d0ad065c4fa6ae437570dc113f" -> "sha256:44df975b161a01ed2400e7e1ec9b19ab26e6031ee68a7799b1d4a3ad86d94764" [label=""];
  "sha256:44df975b161a01ed2400e7e1ec9b19ab26e6031ee68a7799b1d4a3ad86d94764" -> "sha256:7d6291af8ba056f6b3cfdec3a80e7b77618cd28080f3234a683c779618a3dd3a" [label=""];
}

