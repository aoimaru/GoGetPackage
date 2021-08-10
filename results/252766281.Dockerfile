[app/sources/252766281.Dockerfile]
digraph {
  "sha256:1573768621aadefbb52a1cc74cc9a395bae101bf65cac7e89344956058e6b583" [label="docker-image://docker.io/library/docker:latest" shape="ellipse"];
  "sha256:a4f075c858812626ead6e73251ffeceff9127af0800a1f9baf9ddb59de8c01c5" [label="/bin/sh -c apk add --no-cache py-pip openssh-client sshpass" shape="box"];
  "sha256:925c9c53e92007c8d2b834ed8974e48d9b8eeb7daa1b84f71d0879892fc9577d" [label="/bin/sh -c pip install docker-compose" shape="box"];
  "sha256:a64cc7bab20a5098d22fc91c11803971fcf38f971d79c04c6f5eec108b26a2d5" [label="sha256:a64cc7bab20a5098d22fc91c11803971fcf38f971d79c04c6f5eec108b26a2d5" shape="plaintext"];
  "sha256:1573768621aadefbb52a1cc74cc9a395bae101bf65cac7e89344956058e6b583" -> "sha256:a4f075c858812626ead6e73251ffeceff9127af0800a1f9baf9ddb59de8c01c5" [label=""];
  "sha256:a4f075c858812626ead6e73251ffeceff9127af0800a1f9baf9ddb59de8c01c5" -> "sha256:925c9c53e92007c8d2b834ed8974e48d9b8eeb7daa1b84f71d0879892fc9577d" [label=""];
  "sha256:925c9c53e92007c8d2b834ed8974e48d9b8eeb7daa1b84f71d0879892fc9577d" -> "sha256:a64cc7bab20a5098d22fc91c11803971fcf38f971d79c04c6f5eec108b26a2d5" [label=""];
}

