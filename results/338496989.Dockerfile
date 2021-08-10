[app/sources/338496989.Dockerfile]
digraph {
  "sha256:3b07272623ad28546ef1ef12214c57897a5ef5330c9bf3b169919e43f1e0b15d" [label="docker-image://docker.io/envoyproxy/envoy:latest" shape="ellipse"];
  "sha256:97d57e491514531f18dbc425da9724d30514d923761d59d66893d9b355e1a8a3" [label="/bin/sh -c apt-get update && apt-get install -y ca-certificates openssl" shape="box"];
  "sha256:f92994f7f3c6ab63c668d049caf217878c09211eb1875eb0e9a114244572c9f1" [label="mkdir{path=/root}" shape="note"];
  "sha256:cba29f7f3b9bcd3fff189182f565f9e1360ff53edbca31f9696581a348065bed" [label="local://context" shape="ellipse"];
  "sha256:40b19e519f1eff50cfbcbca7f233d5e477cfcab67d4ff160d93856c0f4ca366b" [label="copy{src=/envoy_config.json, dest=/root}" shape="note"];
  "sha256:b55e7659d016239e038ff39c0aa1709fcf466faa440375ec8f90762258938bd3" [label="sha256:b55e7659d016239e038ff39c0aa1709fcf466faa440375ec8f90762258938bd3" shape="plaintext"];
  "sha256:3b07272623ad28546ef1ef12214c57897a5ef5330c9bf3b169919e43f1e0b15d" -> "sha256:97d57e491514531f18dbc425da9724d30514d923761d59d66893d9b355e1a8a3" [label=""];
  "sha256:97d57e491514531f18dbc425da9724d30514d923761d59d66893d9b355e1a8a3" -> "sha256:f92994f7f3c6ab63c668d049caf217878c09211eb1875eb0e9a114244572c9f1" [label=""];
  "sha256:f92994f7f3c6ab63c668d049caf217878c09211eb1875eb0e9a114244572c9f1" -> "sha256:40b19e519f1eff50cfbcbca7f233d5e477cfcab67d4ff160d93856c0f4ca366b" [label=""];
  "sha256:cba29f7f3b9bcd3fff189182f565f9e1360ff53edbca31f9696581a348065bed" -> "sha256:40b19e519f1eff50cfbcbca7f233d5e477cfcab67d4ff160d93856c0f4ca366b" [label=""];
  "sha256:40b19e519f1eff50cfbcbca7f233d5e477cfcab67d4ff160d93856c0f4ca366b" -> "sha256:b55e7659d016239e038ff39c0aa1709fcf466faa440375ec8f90762258938bd3" [label=""];
}

