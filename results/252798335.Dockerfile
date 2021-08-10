[app/sources/252798335.Dockerfile]
digraph {
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" [label="docker-image://docker.io/library/alpine:edge" shape="ellipse"];
  "sha256:c13db5b39c2ebc3282b8015ddb6f9469faa37639cbacb5c53394f086ca3ea740" [label="/bin/sh -c apk update && apk add ca-certificates openssh openjdk8 git maven curl && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:cd48a3d834d2abc6eca1c7a3bb7ea51dea2aadc1d4f0cd22e37b55d2bafb60d7" [label="mkdir{path=/opt}" shape="note"];
  "sha256:7f6e7ca14f7f9c30d0efa80d61710653b5631bbf96551168c33da70f02b29877" [label="sha256:7f6e7ca14f7f9c30d0efa80d61710653b5631bbf96551168c33da70f02b29877" shape="plaintext"];
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" -> "sha256:c13db5b39c2ebc3282b8015ddb6f9469faa37639cbacb5c53394f086ca3ea740" [label=""];
  "sha256:c13db5b39c2ebc3282b8015ddb6f9469faa37639cbacb5c53394f086ca3ea740" -> "sha256:cd48a3d834d2abc6eca1c7a3bb7ea51dea2aadc1d4f0cd22e37b55d2bafb60d7" [label=""];
  "sha256:cd48a3d834d2abc6eca1c7a3bb7ea51dea2aadc1d4f0cd22e37b55d2bafb60d7" -> "sha256:7f6e7ca14f7f9c30d0efa80d61710653b5631bbf96551168c33da70f02b29877" [label=""];
}

