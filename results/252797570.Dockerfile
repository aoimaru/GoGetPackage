[app/sources/252797570.Dockerfile]
digraph {
  "sha256:c219dd5eb333c1f1d578d94868715c321dcd846a20aecf47c1d6732b82950f8f" [label="docker-image://docker.io/library/python:3.6-alpine3.7@sha256:33cb6cc0bf14c9e594306eee7d9f27e94135dab9c2d0d9de02694a1fcb13ad9e" shape="ellipse"];
  "sha256:926bd2f96181f1bc82a58cd22f81d263278e313348dfca1670d06071602c2146" [label="/bin/sh -c apk --no-cache add borgbackup openssh-client" shape="box"];
  "sha256:ffb5ec9bae3956f245dd703f737248f1cf3a333e8266a29c687a80fd3ebd7073" [label="/bin/sh -c pip3 install borgmatic==$BORGMATIC_VERSION" shape="box"];
  "sha256:dabdd68013b89b5f1da14841116163a78b36be1f5364c6d472b9c44bd7516cec" [label="sha256:dabdd68013b89b5f1da14841116163a78b36be1f5364c6d472b9c44bd7516cec" shape="plaintext"];
  "sha256:c219dd5eb333c1f1d578d94868715c321dcd846a20aecf47c1d6732b82950f8f" -> "sha256:926bd2f96181f1bc82a58cd22f81d263278e313348dfca1670d06071602c2146" [label=""];
  "sha256:926bd2f96181f1bc82a58cd22f81d263278e313348dfca1670d06071602c2146" -> "sha256:ffb5ec9bae3956f245dd703f737248f1cf3a333e8266a29c687a80fd3ebd7073" [label=""];
  "sha256:ffb5ec9bae3956f245dd703f737248f1cf3a333e8266a29c687a80fd3ebd7073" -> "sha256:dabdd68013b89b5f1da14841116163a78b36be1f5364c6d472b9c44bd7516cec" [label=""];
}

