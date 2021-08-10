[app/sources/473623806.Dockerfile]
digraph {
  "sha256:eecb5c48c2c8b723d6a213fc6278e295f581868f2ccf48a88e1a772c91e5f6fc" [label="docker-image://docker.io/library/python:2.7.10" shape="ellipse"];
  "sha256:0a99fbbd00cff0fd3a1df9218e646fc9556f8b296f3009dcae4d4387c56bd731" [label="/bin/sh -c echo \"deb http://ftp.us.debian.org/debian jessie-backports main\" | tee -a /etc/apt/sources.list" shape="box"];
  "sha256:62f0df2c268b7f5b0d4ddf03ee1c255261956e23a7d1686a4bc5ed5552bef44e" [label="/bin/sh -c apt-get update && apt-get install -y -q libgrpc-dev=${GRPC_VERSION}" shape="box"];
  "sha256:c59c6729fa4e2b7a995e590577dc27a6cde4bf56cabd818d92f7ff17da57c149" [label="/bin/sh -c pip install grpcio==${GRPC_PYTHON_VERSION}" shape="box"];
  "sha256:bf36f44be042af0c17592f0ba42bd4197a946f241d8ffb388e4b77b88ca8c79d" [label="sha256:bf36f44be042af0c17592f0ba42bd4197a946f241d8ffb388e4b77b88ca8c79d" shape="plaintext"];
  "sha256:eecb5c48c2c8b723d6a213fc6278e295f581868f2ccf48a88e1a772c91e5f6fc" -> "sha256:0a99fbbd00cff0fd3a1df9218e646fc9556f8b296f3009dcae4d4387c56bd731" [label=""];
  "sha256:0a99fbbd00cff0fd3a1df9218e646fc9556f8b296f3009dcae4d4387c56bd731" -> "sha256:62f0df2c268b7f5b0d4ddf03ee1c255261956e23a7d1686a4bc5ed5552bef44e" [label=""];
  "sha256:62f0df2c268b7f5b0d4ddf03ee1c255261956e23a7d1686a4bc5ed5552bef44e" -> "sha256:c59c6729fa4e2b7a995e590577dc27a6cde4bf56cabd818d92f7ff17da57c149" [label=""];
  "sha256:c59c6729fa4e2b7a995e590577dc27a6cde4bf56cabd818d92f7ff17da57c149" -> "sha256:bf36f44be042af0c17592f0ba42bd4197a946f241d8ffb388e4b77b88ca8c79d" [label=""];
}

