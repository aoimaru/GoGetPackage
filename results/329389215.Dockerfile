[app/sources/329389215.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:823f6e6b84d97845e13484be5b87ffc4e958f85dccdc3d2ca8623de8a322a5ab" [label="/bin/sh -c apk add --no-cache ca-certificates openssh-client" shape="box"];
  "sha256:c6fabf846a3a84899bb67d7f109b63eca94e2862a915251cbdc9b9155e06a3c4" [label="local://context" shape="ellipse"];
  "sha256:c119beb7fb7c0adfd1930c96aa9892be6ccf257cb228737b9a858aa0593fdd13" [label="copy{src=/rancher, dest=/usr/bin/}" shape="note"];
  "sha256:fe550afa36dbd9fe911a2a8a8ca898a66b8aec99fb3fbcc72dd083437449242e" [label="mkdir{path=/mnt}" shape="note"];
  "sha256:28d7d1eb22cc79c6488cafbd5a08e078356a587701a7fdef97d76d3437c8a6aa" [label="sha256:28d7d1eb22cc79c6488cafbd5a08e078356a587701a7fdef97d76d3437c8a6aa" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:823f6e6b84d97845e13484be5b87ffc4e958f85dccdc3d2ca8623de8a322a5ab" [label=""];
  "sha256:823f6e6b84d97845e13484be5b87ffc4e958f85dccdc3d2ca8623de8a322a5ab" -> "sha256:c119beb7fb7c0adfd1930c96aa9892be6ccf257cb228737b9a858aa0593fdd13" [label=""];
  "sha256:c6fabf846a3a84899bb67d7f109b63eca94e2862a915251cbdc9b9155e06a3c4" -> "sha256:c119beb7fb7c0adfd1930c96aa9892be6ccf257cb228737b9a858aa0593fdd13" [label=""];
  "sha256:c119beb7fb7c0adfd1930c96aa9892be6ccf257cb228737b9a858aa0593fdd13" -> "sha256:fe550afa36dbd9fe911a2a8a8ca898a66b8aec99fb3fbcc72dd083437449242e" [label=""];
  "sha256:fe550afa36dbd9fe911a2a8a8ca898a66b8aec99fb3fbcc72dd083437449242e" -> "sha256:28d7d1eb22cc79c6488cafbd5a08e078356a587701a7fdef97d76d3437c8a6aa" [label=""];
}

