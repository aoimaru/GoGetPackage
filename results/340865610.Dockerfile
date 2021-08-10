[app/sources/340865610.Dockerfile]
digraph {
  "sha256:d0d7dd3e69e6c71d31e93963ee39f228f5f453fc631ef2d58b729c3f8f9cd195" [label="local://context" shape="ellipse"];
  "sha256:ce8ec34266c7b8e6069af7dcc0c9ae36144d9277d303ed5c4f291015866c899d" [label="docker-image://docker.io/library/node:12" shape="ellipse"];
  "sha256:a853201e208ffbc437df87ab04c68701c13c22bca0fd3ad8996b8398449d674b" [label="/bin/sh -c mkdir /code" shape="box"];
  "sha256:aa016db6597d21a9b5c77d6e527fa869a612d553b0a35e231ca1bfc1eff6ba4e" [label="mkdir{path=/code}" shape="note"];
  "sha256:172f709c45d2bbd6c175fcbe58bb12bde7a8c34d1224f51bda1f01a8dd7b9965" [label="copy{src=/package.json, dest=/code/}" shape="note"];
  "sha256:ef3ecc1971218d5356b69b6da40ec1d626cce8a2a4582d93b87245e6ad4f8329" [label="copy{src=/yarn.lock, dest=/code/}" shape="note"];
  "sha256:6a5830a218ef163e3bd816dc322c81a8fa93c001702de15cda7119ffb62aa979" [label="/bin/sh -c yarn install" shape="box"];
  "sha256:a1315e06cf29531a0262179aa30493fd01a9a80605fc4c7a322184667e4676f3" [label="copy{src=/.babelrc, dest=/code/}" shape="note"];
  "sha256:f58943e2b521a596c4ee51298d7a65d0ea3008f378365fd30dde12830e7ec37a" [label="copy{src=/webpack.*, dest=/code/}" shape="note"];
  "sha256:cf364e781734ac6ea9f1357eeeb98bdfe449f91748fc5e8146f00230029bcdfc" [label="copy{src=/Gruntfile.js, dest=/code/}" shape="note"];
  "sha256:bdc90d61f17785a8e7b9fd7396e39c89bed6cd312ef88fd358cf95e4f2e202d3" [label="copy{src=/GETTINGSTARTED.md, dest=/code/}" shape="note"];
  "sha256:98366a6ce29a0ee1bb73442c89f3b6f0a3b49475ecc36031fe0d0baa66d83567" [label="copy{src=/README.md, dest=/code/}" shape="note"];
  "sha256:bc33e44450a8abe4c605af0ec30a2c7bdd0b90df64fd8f81d664be4ba31d1e8c" [label="copy{src=/src, dest=/code/src}" shape="note"];
  "sha256:545b177f0f99681d0d457f21b6e572ce77982f940d477f28f76607810760126a" [label="copy{src=/test, dest=/code/test}" shape="note"];
  "sha256:671cfebb57d0f9b4df889b7d663d4b1441d282cf101ca6a60de8b0c1f7a18772" [label="copy{src=/demos, dest=/code/demos}" shape="note"];
  "sha256:21f5351ab2da2eee531000296105d7f70b2f164c64cf04f46d2f87aca412f4f1" [label="sha256:21f5351ab2da2eee531000296105d7f70b2f164c64cf04f46d2f87aca412f4f1" shape="plaintext"];
  "sha256:ce8ec34266c7b8e6069af7dcc0c9ae36144d9277d303ed5c4f291015866c899d" -> "sha256:a853201e208ffbc437df87ab04c68701c13c22bca0fd3ad8996b8398449d674b" [label=""];
  "sha256:a853201e208ffbc437df87ab04c68701c13c22bca0fd3ad8996b8398449d674b" -> "sha256:aa016db6597d21a9b5c77d6e527fa869a612d553b0a35e231ca1bfc1eff6ba4e" [label=""];
  "sha256:aa016db6597d21a9b5c77d6e527fa869a612d553b0a35e231ca1bfc1eff6ba4e" -> "sha256:172f709c45d2bbd6c175fcbe58bb12bde7a8c34d1224f51bda1f01a8dd7b9965" [label=""];
  "sha256:d0d7dd3e69e6c71d31e93963ee39f228f5f453fc631ef2d58b729c3f8f9cd195" -> "sha256:172f709c45d2bbd6c175fcbe58bb12bde7a8c34d1224f51bda1f01a8dd7b9965" [label=""];
  "sha256:172f709c45d2bbd6c175fcbe58bb12bde7a8c34d1224f51bda1f01a8dd7b9965" -> "sha256:ef3ecc1971218d5356b69b6da40ec1d626cce8a2a4582d93b87245e6ad4f8329" [label=""];
  "sha256:d0d7dd3e69e6c71d31e93963ee39f228f5f453fc631ef2d58b729c3f8f9cd195" -> "sha256:ef3ecc1971218d5356b69b6da40ec1d626cce8a2a4582d93b87245e6ad4f8329" [label=""];
  "sha256:ef3ecc1971218d5356b69b6da40ec1d626cce8a2a4582d93b87245e6ad4f8329" -> "sha256:6a5830a218ef163e3bd816dc322c81a8fa93c001702de15cda7119ffb62aa979" [label=""];
  "sha256:6a5830a218ef163e3bd816dc322c81a8fa93c001702de15cda7119ffb62aa979" -> "sha256:a1315e06cf29531a0262179aa30493fd01a9a80605fc4c7a322184667e4676f3" [label=""];
  "sha256:d0d7dd3e69e6c71d31e93963ee39f228f5f453fc631ef2d58b729c3f8f9cd195" -> "sha256:a1315e06cf29531a0262179aa30493fd01a9a80605fc4c7a322184667e4676f3" [label=""];
  "sha256:a1315e06cf29531a0262179aa30493fd01a9a80605fc4c7a322184667e4676f3" -> "sha256:f58943e2b521a596c4ee51298d7a65d0ea3008f378365fd30dde12830e7ec37a" [label=""];
  "sha256:d0d7dd3e69e6c71d31e93963ee39f228f5f453fc631ef2d58b729c3f8f9cd195" -> "sha256:f58943e2b521a596c4ee51298d7a65d0ea3008f378365fd30dde12830e7ec37a" [label=""];
  "sha256:f58943e2b521a596c4ee51298d7a65d0ea3008f378365fd30dde12830e7ec37a" -> "sha256:cf364e781734ac6ea9f1357eeeb98bdfe449f91748fc5e8146f00230029bcdfc" [label=""];
  "sha256:d0d7dd3e69e6c71d31e93963ee39f228f5f453fc631ef2d58b729c3f8f9cd195" -> "sha256:cf364e781734ac6ea9f1357eeeb98bdfe449f91748fc5e8146f00230029bcdfc" [label=""];
  "sha256:cf364e781734ac6ea9f1357eeeb98bdfe449f91748fc5e8146f00230029bcdfc" -> "sha256:bdc90d61f17785a8e7b9fd7396e39c89bed6cd312ef88fd358cf95e4f2e202d3" [label=""];
  "sha256:d0d7dd3e69e6c71d31e93963ee39f228f5f453fc631ef2d58b729c3f8f9cd195" -> "sha256:bdc90d61f17785a8e7b9fd7396e39c89bed6cd312ef88fd358cf95e4f2e202d3" [label=""];
  "sha256:bdc90d61f17785a8e7b9fd7396e39c89bed6cd312ef88fd358cf95e4f2e202d3" -> "sha256:98366a6ce29a0ee1bb73442c89f3b6f0a3b49475ecc36031fe0d0baa66d83567" [label=""];
  "sha256:d0d7dd3e69e6c71d31e93963ee39f228f5f453fc631ef2d58b729c3f8f9cd195" -> "sha256:98366a6ce29a0ee1bb73442c89f3b6f0a3b49475ecc36031fe0d0baa66d83567" [label=""];
  "sha256:98366a6ce29a0ee1bb73442c89f3b6f0a3b49475ecc36031fe0d0baa66d83567" -> "sha256:bc33e44450a8abe4c605af0ec30a2c7bdd0b90df64fd8f81d664be4ba31d1e8c" [label=""];
  "sha256:d0d7dd3e69e6c71d31e93963ee39f228f5f453fc631ef2d58b729c3f8f9cd195" -> "sha256:bc33e44450a8abe4c605af0ec30a2c7bdd0b90df64fd8f81d664be4ba31d1e8c" [label=""];
  "sha256:bc33e44450a8abe4c605af0ec30a2c7bdd0b90df64fd8f81d664be4ba31d1e8c" -> "sha256:545b177f0f99681d0d457f21b6e572ce77982f940d477f28f76607810760126a" [label=""];
  "sha256:d0d7dd3e69e6c71d31e93963ee39f228f5f453fc631ef2d58b729c3f8f9cd195" -> "sha256:545b177f0f99681d0d457f21b6e572ce77982f940d477f28f76607810760126a" [label=""];
  "sha256:545b177f0f99681d0d457f21b6e572ce77982f940d477f28f76607810760126a" -> "sha256:671cfebb57d0f9b4df889b7d663d4b1441d282cf101ca6a60de8b0c1f7a18772" [label=""];
  "sha256:d0d7dd3e69e6c71d31e93963ee39f228f5f453fc631ef2d58b729c3f8f9cd195" -> "sha256:671cfebb57d0f9b4df889b7d663d4b1441d282cf101ca6a60de8b0c1f7a18772" [label=""];
  "sha256:671cfebb57d0f9b4df889b7d663d4b1441d282cf101ca6a60de8b0c1f7a18772" -> "sha256:21f5351ab2da2eee531000296105d7f70b2f164c64cf04f46d2f87aca412f4f1" [label=""];
}

