[app/sources/473623783.Dockerfile]
digraph {
  "sha256:eecb5c48c2c8b723d6a213fc6278e295f581868f2ccf48a88e1a772c91e5f6fc" [label="docker-image://docker.io/library/python:2.7.10" shape="ellipse"];
  "sha256:0a99fbbd00cff0fd3a1df9218e646fc9556f8b296f3009dcae4d4387c56bd731" [label="/bin/sh -c echo \"deb http://ftp.us.debian.org/debian jessie-backports main\" | tee -a /etc/apt/sources.list" shape="box"];
  "sha256:75c3f8e0c0ab79d9b8a3b745194b3be170cc3b27e6a45c4701283719a1985014" [label="/bin/sh -c apt-get update && apt-get install -y -q libgrpc-dev=${GRPC_VERSION}" shape="box"];
  "sha256:35f9652b83def7528587f8876533110d9faa65c75bb70337dba170bfa83815c6" [label="/bin/sh -c pip install grpcio==${GRPC_PYTHON_VERSION}" shape="box"];
  "sha256:589b21175bdaf5ecca5e92b6168c3943bbc01e447a4ff66741d67b889589f8d5" [label="sha256:589b21175bdaf5ecca5e92b6168c3943bbc01e447a4ff66741d67b889589f8d5" shape="plaintext"];
  "sha256:eecb5c48c2c8b723d6a213fc6278e295f581868f2ccf48a88e1a772c91e5f6fc" -> "sha256:0a99fbbd00cff0fd3a1df9218e646fc9556f8b296f3009dcae4d4387c56bd731" [label=""];
  "sha256:0a99fbbd00cff0fd3a1df9218e646fc9556f8b296f3009dcae4d4387c56bd731" -> "sha256:75c3f8e0c0ab79d9b8a3b745194b3be170cc3b27e6a45c4701283719a1985014" [label=""];
  "sha256:75c3f8e0c0ab79d9b8a3b745194b3be170cc3b27e6a45c4701283719a1985014" -> "sha256:35f9652b83def7528587f8876533110d9faa65c75bb70337dba170bfa83815c6" [label=""];
  "sha256:35f9652b83def7528587f8876533110d9faa65c75bb70337dba170bfa83815c6" -> "sha256:589b21175bdaf5ecca5e92b6168c3943bbc01e447a4ff66741d67b889589f8d5" [label=""];
}

