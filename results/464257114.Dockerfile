[app/sources/464257114.Dockerfile]
digraph {
  "sha256:fc8f7a5a931404bb996ee93e11e03292efdfdf9a150192d59616c38f4796d934" [label="docker-image://docker.io/library/golang:1.12-alpine" shape="ellipse"];
  "sha256:7ca024720458dbf23837b27f8985a3a3b2cf9835d93a00aa0eb0bd21ac7f6787" [label="/bin/sh -c apk add --update --no-cache ca-certificates git" shape="box"];
  "sha256:eeab3af9f6b8550c6009a715bbf5ee63ed18aea4356ecae24eb4251ceeb07077" [label="/bin/sh -c go get github.com/derekparker/delve/cmd/dlv" shape="box"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:5ef957a9c5b0aa14f2042e5c7f7cdd5a9d36035cead92feda8abf501245585dd" [label="/bin/sh -c apk add --update --no-cache libc6-compat" shape="box"];
  "sha256:8aa785a380cae1cbd5652e073763a490ac42e6f9299bf0a9d0ef60b63fe8bfc3" [label="copy{src=/etc/ssl/certs/ca-certificates.crt, dest=/etc/ssl/certs/}" shape="note"];
  "sha256:94c510b3346655ed0dbd520ca830a76b2ddb9e8a044f9d83486762bccb66c958" [label="copy{src=/go/bin/dlv, dest=/}" shape="note"];
  "sha256:c165b62643b3fcf9eef33b20fb59aedb0a74b89108d90758c1be8f1307bf8104" [label="local://context" shape="ellipse"];
  "sha256:c9336d6495cfe82f73bf6f2bb86ba74a5fc3aa7810340833804d08ccaf5160a8" [label="copy{src=/, dest=/usr/local/bin/anchore-image-validator}" shape="note"];
  "sha256:ec2883a990368243b91eee6fd045ebdbfe141722985a9eacea556cacc0222898" [label="sha256:ec2883a990368243b91eee6fd045ebdbfe141722985a9eacea556cacc0222898" shape="plaintext"];
  "sha256:fc8f7a5a931404bb996ee93e11e03292efdfdf9a150192d59616c38f4796d934" -> "sha256:7ca024720458dbf23837b27f8985a3a3b2cf9835d93a00aa0eb0bd21ac7f6787" [label=""];
  "sha256:7ca024720458dbf23837b27f8985a3a3b2cf9835d93a00aa0eb0bd21ac7f6787" -> "sha256:eeab3af9f6b8550c6009a715bbf5ee63ed18aea4356ecae24eb4251ceeb07077" [label=""];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:5ef957a9c5b0aa14f2042e5c7f7cdd5a9d36035cead92feda8abf501245585dd" [label=""];
  "sha256:5ef957a9c5b0aa14f2042e5c7f7cdd5a9d36035cead92feda8abf501245585dd" -> "sha256:8aa785a380cae1cbd5652e073763a490ac42e6f9299bf0a9d0ef60b63fe8bfc3" [label=""];
  "sha256:eeab3af9f6b8550c6009a715bbf5ee63ed18aea4356ecae24eb4251ceeb07077" -> "sha256:8aa785a380cae1cbd5652e073763a490ac42e6f9299bf0a9d0ef60b63fe8bfc3" [label=""];
  "sha256:8aa785a380cae1cbd5652e073763a490ac42e6f9299bf0a9d0ef60b63fe8bfc3" -> "sha256:94c510b3346655ed0dbd520ca830a76b2ddb9e8a044f9d83486762bccb66c958" [label=""];
  "sha256:eeab3af9f6b8550c6009a715bbf5ee63ed18aea4356ecae24eb4251ceeb07077" -> "sha256:94c510b3346655ed0dbd520ca830a76b2ddb9e8a044f9d83486762bccb66c958" [label=""];
  "sha256:94c510b3346655ed0dbd520ca830a76b2ddb9e8a044f9d83486762bccb66c958" -> "sha256:c9336d6495cfe82f73bf6f2bb86ba74a5fc3aa7810340833804d08ccaf5160a8" [label=""];
  "sha256:c165b62643b3fcf9eef33b20fb59aedb0a74b89108d90758c1be8f1307bf8104" -> "sha256:c9336d6495cfe82f73bf6f2bb86ba74a5fc3aa7810340833804d08ccaf5160a8" [label=""];
  "sha256:c9336d6495cfe82f73bf6f2bb86ba74a5fc3aa7810340833804d08ccaf5160a8" -> "sha256:ec2883a990368243b91eee6fd045ebdbfe141722985a9eacea556cacc0222898" [label=""];
}

