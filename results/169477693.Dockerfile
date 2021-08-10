[app/sources/169477693.Dockerfile]
digraph {
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" [label="docker-image://docker.io/library/alpine:edge" shape="ellipse"];
  "sha256:d00c03ef793c93090ec2a5040a0669b59c14a9680c5394cd24d26bc8da490cf4" [label="/bin/sh -c mkdir -p /go &&     apk update &&     apk add bash ca-certificates git go alpine-sdk &&     go get -v github.com/AcalephStorage/consul-alerts &&     mv /go/bin/consul-alerts /bin &&     go get -v github.com/hashicorp/consul &&     mv /go/bin/consul /bin &&     rm -rf /go &&     apk del --purge go git alpine-sdk &&     rm -rf /var/cache/apk/*" shape="box"];
  "sha256:589ec8bed54a504211bfae14075fd2ca5f679799e668ff2493911da6f8a40094" [label="sha256:589ec8bed54a504211bfae14075fd2ca5f679799e668ff2493911da6f8a40094" shape="plaintext"];
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" -> "sha256:d00c03ef793c93090ec2a5040a0669b59c14a9680c5394cd24d26bc8da490cf4" [label=""];
  "sha256:d00c03ef793c93090ec2a5040a0669b59c14a9680c5394cd24d26bc8da490cf4" -> "sha256:589ec8bed54a504211bfae14075fd2ca5f679799e668ff2493911da6f8a40094" [label=""];
}

