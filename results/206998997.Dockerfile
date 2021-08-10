[app/sources/206998997.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:ea235264880ca3a9e87990bc523c20be8638089006033b8a3cc29d9cb0a9347e" [label="/bin/sh -c apt-get update && apt-get install -y librsvg2-bin" shape="box"];
  "sha256:04e8c9b9781626a66f47566e0ea9df29d142dafca9ab1e532fd288a9aaac51b2" [label="mkdir{path=/convertor}" shape="note"];
  "sha256:2f54ce23fa2214784bb307f8368c982229041bb2d353467d297337f18f1bef1a" [label="sha256:2f54ce23fa2214784bb307f8368c982229041bb2d353467d297337f18f1bef1a" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:ea235264880ca3a9e87990bc523c20be8638089006033b8a3cc29d9cb0a9347e" [label=""];
  "sha256:ea235264880ca3a9e87990bc523c20be8638089006033b8a3cc29d9cb0a9347e" -> "sha256:04e8c9b9781626a66f47566e0ea9df29d142dafca9ab1e532fd288a9aaac51b2" [label=""];
  "sha256:04e8c9b9781626a66f47566e0ea9df29d142dafca9ab1e532fd288a9aaac51b2" -> "sha256:2f54ce23fa2214784bb307f8368c982229041bb2d353467d297337f18f1bef1a" [label=""];
}

