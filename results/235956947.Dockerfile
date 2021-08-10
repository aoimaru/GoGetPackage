[app/sources/235956947.Dockerfile]
digraph {
  "sha256:bbeb565e95ead46b9676ce77f6b15d4253443d4208b15ee588abefa1cfe40d0f" [label="docker-image://docker.io/functions/alpine:latest" shape="ellipse"];
  "sha256:43609241f20f6331feabfdf85985c4ea5e979ea2fe0bade37066c0eaf499fb90" [label="/bin/sh -c apk add --no-cache pwgen" shape="box"];
  "sha256:03f7cf741175dd8280fb1725ed8bf58aaddb090d8f01274900cb85fb7ae0b2bf" [label="sha256:03f7cf741175dd8280fb1725ed8bf58aaddb090d8f01274900cb85fb7ae0b2bf" shape="plaintext"];
  "sha256:bbeb565e95ead46b9676ce77f6b15d4253443d4208b15ee588abefa1cfe40d0f" -> "sha256:43609241f20f6331feabfdf85985c4ea5e979ea2fe0bade37066c0eaf499fb90" [label=""];
  "sha256:43609241f20f6331feabfdf85985c4ea5e979ea2fe0bade37066c0eaf499fb90" -> "sha256:03f7cf741175dd8280fb1725ed8bf58aaddb090d8f01274900cb85fb7ae0b2bf" [label=""];
}

