[app/sources/248469622.Dockerfile]
digraph {
  "sha256:e558b794f555a5cda7dc031d6ddb7a4faf8fa7ce1a904037140bc27a977f1c59" [label="local://context" shape="ellipse"];
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" [label="docker-image://docker.io/library/alpine:3.4" shape="ellipse"];
  "sha256:6a6cd42eadef3c4dfb11ef7b9c349f9434d7ffc24f61d2a094016ddc3a7c334f" [label="copy{src=/, dest=/go/src/github.com/shimastripe/go-api-sokushukai}" shape="note"];
  "sha256:3db184dc0285408a913a4a4beefaf0a4611dcc75194b3cbc4fc1ea2d9bbec4e8" [label="/bin/sh -c apk add --no-cache --update --virtual=build-deps g++ curl git go make mercurial     && cd /go/src/github.com/shimastripe/go-api-sokushukai     && make     && apk del build-deps" shape="box"];
  "sha256:43789504758ac9a8db41ffb275729376edd6c7b1b0651e3a5b3b42896d04f2df" [label="mkdir{path=/go/src/github.com/shimastripe/go-api-sokushukai}" shape="note"];
  "sha256:6994192d2dd8813ddb77949ca87803d8f53d320457b195a56656ca5c6c1ff0a9" [label="sha256:6994192d2dd8813ddb77949ca87803d8f53d320457b195a56656ca5c6c1ff0a9" shape="plaintext"];
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" -> "sha256:6a6cd42eadef3c4dfb11ef7b9c349f9434d7ffc24f61d2a094016ddc3a7c334f" [label=""];
  "sha256:e558b794f555a5cda7dc031d6ddb7a4faf8fa7ce1a904037140bc27a977f1c59" -> "sha256:6a6cd42eadef3c4dfb11ef7b9c349f9434d7ffc24f61d2a094016ddc3a7c334f" [label=""];
  "sha256:6a6cd42eadef3c4dfb11ef7b9c349f9434d7ffc24f61d2a094016ddc3a7c334f" -> "sha256:3db184dc0285408a913a4a4beefaf0a4611dcc75194b3cbc4fc1ea2d9bbec4e8" [label=""];
  "sha256:3db184dc0285408a913a4a4beefaf0a4611dcc75194b3cbc4fc1ea2d9bbec4e8" -> "sha256:43789504758ac9a8db41ffb275729376edd6c7b1b0651e3a5b3b42896d04f2df" [label=""];
  "sha256:43789504758ac9a8db41ffb275729376edd6c7b1b0651e3a5b3b42896d04f2df" -> "sha256:6994192d2dd8813ddb77949ca87803d8f53d320457b195a56656ca5c6c1ff0a9" [label=""];
}

