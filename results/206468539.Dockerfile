[app/sources/206468539.Dockerfile]
digraph {
  "sha256:65a70701384dd87e0d32fd716771782b2cfdcad5210f3692162cee4e3394e85b" [label="local://context" shape="ellipse"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:6330804d26887b220dadc751c401a699357e0f7e7b874c38682db839c5ccd9d4" [label="/bin/sh -c apk update     && apk upgrade     && apk add python py2-pip" shape="box"];
  "sha256:3961d8f8d872de47c27e5e1f91193d684cf6582471c68a18e3bcf21a233690aa" [label="copy{src=/, dest=/mha}" shape="note"];
  "sha256:f6a1123ffb4bf4cb9c43a8fae3387710f9291f999919f20b7cc2eb7b31f9613d" [label="/bin/sh -c pip install --no-cache-dir -r /mha/requirements.txt" shape="box"];
  "sha256:93d8eb3387796744de98715722549614f5c72d55de398c90bb4bc8fe3468366d" [label="mkdir{path=/mha}" shape="note"];
  "sha256:df9f5a008bc221e92c711751da28fee18733ba84a7dee6065d2c8c1e57740cf4" [label="sha256:df9f5a008bc221e92c711751da28fee18733ba84a7dee6065d2c8c1e57740cf4" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:6330804d26887b220dadc751c401a699357e0f7e7b874c38682db839c5ccd9d4" [label=""];
  "sha256:6330804d26887b220dadc751c401a699357e0f7e7b874c38682db839c5ccd9d4" -> "sha256:3961d8f8d872de47c27e5e1f91193d684cf6582471c68a18e3bcf21a233690aa" [label=""];
  "sha256:65a70701384dd87e0d32fd716771782b2cfdcad5210f3692162cee4e3394e85b" -> "sha256:3961d8f8d872de47c27e5e1f91193d684cf6582471c68a18e3bcf21a233690aa" [label=""];
  "sha256:3961d8f8d872de47c27e5e1f91193d684cf6582471c68a18e3bcf21a233690aa" -> "sha256:f6a1123ffb4bf4cb9c43a8fae3387710f9291f999919f20b7cc2eb7b31f9613d" [label=""];
  "sha256:f6a1123ffb4bf4cb9c43a8fae3387710f9291f999919f20b7cc2eb7b31f9613d" -> "sha256:93d8eb3387796744de98715722549614f5c72d55de398c90bb4bc8fe3468366d" [label=""];
  "sha256:93d8eb3387796744de98715722549614f5c72d55de398c90bb4bc8fe3468366d" -> "sha256:df9f5a008bc221e92c711751da28fee18733ba84a7dee6065d2c8c1e57740cf4" [label=""];
}

