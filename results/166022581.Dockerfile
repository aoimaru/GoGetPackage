[app/sources/166022581.Dockerfile]
digraph {
  "sha256:84bb938f205ca71949501782b0c033b64656c81e53c16b610614e614b2b8ab32" [label="docker-image://docker.io/library/golang:1.12.4-alpine3.9" shape="ellipse"];
  "sha256:77f370b582d570b864f86b4454bdfe2e5cf4809c832ccc991563dd51d69d478a" [label="/bin/sh -c apk update &&     apk upgrade &&     apk add --no-cache make alpine-sdk rsync openssh-client &&     adduser -D builder &&     addgroup builder abuild" shape="box"];
  "sha256:f596b584291296679b2ed5f66f2a97c4d2da15840e8efad0fe902d6c74d6a862" [label="sha256:f596b584291296679b2ed5f66f2a97c4d2da15840e8efad0fe902d6c74d6a862" shape="plaintext"];
  "sha256:84bb938f205ca71949501782b0c033b64656c81e53c16b610614e614b2b8ab32" -> "sha256:77f370b582d570b864f86b4454bdfe2e5cf4809c832ccc991563dd51d69d478a" [label=""];
  "sha256:77f370b582d570b864f86b4454bdfe2e5cf4809c832ccc991563dd51d69d478a" -> "sha256:f596b584291296679b2ed5f66f2a97c4d2da15840e8efad0fe902d6c74d6a862" [label=""];
}

