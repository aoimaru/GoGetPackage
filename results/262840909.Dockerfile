[app/sources/262840909.Dockerfile]
digraph {
  "sha256:e231423e04f1becf0d9b5f160a852a2b2596ed150e82b9d747d698a9782e3888" [label="docker-image://docker.io/frolvlad/alpine-oraclejdk8:slim" shape="ellipse"];
  "sha256:8d1201440429a9f35c70d8496e2235746a12aca529e3466a07331872c36aa79f" [label="local://context" shape="ellipse"];
  "sha256:9857733557711c1be4ecb1c9eeedead921cdff52cf936cda1869d01a095d7b33" [label="copy{src=/spring-petclinic-rest-vet-1.7.jar, dest=/app.jar}" shape="note"];
  "sha256:7aece70282d2a94de6a63de7e657b4da924254d873811655199c7d6f1c591e1e" [label="/bin/sh -c sh -c 'touch /app.jar'" shape="box"];
  "sha256:46a7a65dc19c6a81667cf1da9e9a1939c48c3d404dfc07c7fe8948f01058c54c" [label="sha256:46a7a65dc19c6a81667cf1da9e9a1939c48c3d404dfc07c7fe8948f01058c54c" shape="plaintext"];
  "sha256:e231423e04f1becf0d9b5f160a852a2b2596ed150e82b9d747d698a9782e3888" -> "sha256:9857733557711c1be4ecb1c9eeedead921cdff52cf936cda1869d01a095d7b33" [label=""];
  "sha256:8d1201440429a9f35c70d8496e2235746a12aca529e3466a07331872c36aa79f" -> "sha256:9857733557711c1be4ecb1c9eeedead921cdff52cf936cda1869d01a095d7b33" [label=""];
  "sha256:9857733557711c1be4ecb1c9eeedead921cdff52cf936cda1869d01a095d7b33" -> "sha256:7aece70282d2a94de6a63de7e657b4da924254d873811655199c7d6f1c591e1e" [label=""];
  "sha256:7aece70282d2a94de6a63de7e657b4da924254d873811655199c7d6f1c591e1e" -> "sha256:46a7a65dc19c6a81667cf1da9e9a1939c48c3d404dfc07c7fe8948f01058c54c" [label=""];
}

