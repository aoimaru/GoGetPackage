[app/sources/201188655.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:9986d4475e69430368689d2af4fe1d06abec6e8e01048c4c042aa4b88512fb6b" [label="/bin/sh -c apk add --no-cache w3m" shape="box"];
  "sha256:5e8f0bee8a7e6f36c9382e265104720790d5ef5a6810e0ad60ededaab8575f27" [label="sha256:5e8f0bee8a7e6f36c9382e265104720790d5ef5a6810e0ad60ededaab8575f27" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:9986d4475e69430368689d2af4fe1d06abec6e8e01048c4c042aa4b88512fb6b" [label=""];
  "sha256:9986d4475e69430368689d2af4fe1d06abec6e8e01048c4c042aa4b88512fb6b" -> "sha256:5e8f0bee8a7e6f36c9382e265104720790d5ef5a6810e0ad60ededaab8575f27" [label=""];
}

