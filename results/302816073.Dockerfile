[app/sources/302816073.Dockerfile]
digraph {
  "sha256:4220a8a9108024fb9ff4264afd5b741516e939ba548fdaa03ccddb8fe5ffaaa9" [label="docker-image://docker.io/fnproject/base:latest" shape="ellipse"];
  "sha256:dcbad5cee350ab943962607f42a1d3f58e92a12f8433ef182c1df86655e5d710" [label="/bin/sh -c apk update && apk add --no-cache openjdk8-jre-base" shape="box"];
  "sha256:72e27f79834727b096a723d5a3b9098cad2b53d4a0c298bf97f9c95a3b22fa88" [label="sha256:72e27f79834727b096a723d5a3b9098cad2b53d4a0c298bf97f9c95a3b22fa88" shape="plaintext"];
  "sha256:4220a8a9108024fb9ff4264afd5b741516e939ba548fdaa03ccddb8fe5ffaaa9" -> "sha256:dcbad5cee350ab943962607f42a1d3f58e92a12f8433ef182c1df86655e5d710" [label=""];
  "sha256:dcbad5cee350ab943962607f42a1d3f58e92a12f8433ef182c1df86655e5d710" -> "sha256:72e27f79834727b096a723d5a3b9098cad2b53d4a0c298bf97f9c95a3b22fa88" [label=""];
}

