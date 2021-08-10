[app/sources/240469183.Dockerfile]
digraph {
  "sha256:479beee7b63834b1ab7920ecc3bc4fad2e34ced0565b3fc533a90f4c7e856697" [label="docker-image://docker.io/bigtruedata/scala:2.10.6-alpine@sha256:c9703259f47d4c95e8b7f562c4c83b6b3132be5de6d32fabcae562098a643d89" shape="ellipse"];
  "sha256:27740f37b2a5704ad5f7bbddd98d85ae952d49a3a8be11911aafedd9f69159c3" [label="/bin/sh -c apk add --no-cache --virtual=.dependencies tar wget" shape="box"];
  "sha256:c53ea1bc707fa00c8ac8c21681973968155f7422596fda96392f2d16a87377e3" [label="/bin/sh -c wget -O- \"https://github.com/sbt/sbt/releases/download/v0.13.15/sbt-0.13.15.tgz\"     |  tar xzf - -C /usr/local --strip-components=1     && sbt exit" shape="box"];
  "sha256:cd0429f832133cdb9f7f4a82c3adba19b66c04338f4a58277f5f81468620255c" [label="/bin/sh -c apk del --no-cache .dependencies" shape="box"];
  "sha256:2e2517e1d8b44f083bd8ff1678c629c78cc5d1b24da062741e6196a4ddfe3880" [label="mkdir{path=/app}" shape="note"];
  "sha256:142e102f866dba872b8887c2762b9aba321079d358006b5dc3bb9bfa35543204" [label="sha256:142e102f866dba872b8887c2762b9aba321079d358006b5dc3bb9bfa35543204" shape="plaintext"];
  "sha256:479beee7b63834b1ab7920ecc3bc4fad2e34ced0565b3fc533a90f4c7e856697" -> "sha256:27740f37b2a5704ad5f7bbddd98d85ae952d49a3a8be11911aafedd9f69159c3" [label=""];
  "sha256:27740f37b2a5704ad5f7bbddd98d85ae952d49a3a8be11911aafedd9f69159c3" -> "sha256:c53ea1bc707fa00c8ac8c21681973968155f7422596fda96392f2d16a87377e3" [label=""];
  "sha256:c53ea1bc707fa00c8ac8c21681973968155f7422596fda96392f2d16a87377e3" -> "sha256:cd0429f832133cdb9f7f4a82c3adba19b66c04338f4a58277f5f81468620255c" [label=""];
  "sha256:cd0429f832133cdb9f7f4a82c3adba19b66c04338f4a58277f5f81468620255c" -> "sha256:2e2517e1d8b44f083bd8ff1678c629c78cc5d1b24da062741e6196a4ddfe3880" [label=""];
  "sha256:2e2517e1d8b44f083bd8ff1678c629c78cc5d1b24da062741e6196a4ddfe3880" -> "sha256:142e102f866dba872b8887c2762b9aba321079d358006b5dc3bb9bfa35543204" [label=""];
}

