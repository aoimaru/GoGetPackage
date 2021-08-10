[app/sources/293049392.Dockerfile]
digraph {
  "sha256:6f34d14cb9ce0058eb9305a7c7f38e440843fa382cc95d9a79f243ea2706708d" [label="docker-image://docker.io/library/node:8.4" shape="ellipse"];
  "sha256:cc1f8c842a960a8758d92efbb740ac63980b59cc21c28e972d600461485eba4a" [label="/bin/sh -c mkdir -p /app" shape="box"];
  "sha256:6972c07e3182ec16edb0a2921a67d4e2c4a9513c10e35a0f3423aba509d4a036" [label="mkdir{path=/app}" shape="note"];
  "sha256:db246df8341f10df45b5e7737fa0be9f8bdde9e19971098245edb975fe01d8fe" [label="/bin/sh -c npm config set spin=false" shape="box"];
  "sha256:2b0d96eb394b69f6b7b125d9f5a368e3a12f7420ec81573673ef0bee116a559d" [label="/bin/sh -c npm install ember-cli@^2.14.2 -g -q --loglevel warn" shape="box"];
  "sha256:895a607809763dca00a77a68e615a8bc48ca008e9ea7fdc776d180957f5dd26d" [label="local://context" shape="ellipse"];
  "sha256:9682e615c0b630c6a76989a359aa4dddb7b8c32be95fc4035b6c802033f1561e" [label="copy{src=/package.json, dest=/app/}" shape="note"];
  "sha256:522a4aa8d731b528ac52d05d2a91351c49d86307cbb5dae7b9567723f88eea08" [label="copy{src=/package-lock.json, dest=/app/}" shape="note"];
  "sha256:388fe52b0ed875dcca3a6dbc91cd4f6ca2afe8053541c56982759b010cb7dc1b" [label="/bin/sh -c npm install" shape="box"];
  "sha256:a1ebd22abd12185f38806c5c1377e1e9a9fb3d13ec83fa25dac987ba83c57b0b" [label="/bin/sh -c mkdir ./tmp" shape="box"];
  "sha256:c68137e3960f98f4edc9f70b67c869c2b9cbc5870e0f83a16039fa254ede325a" [label="copy{src=/.git, dest=/app/.git}" shape="note"];
  "sha256:bdfd87d1e7a74cba355871a2d4d820616c0d742f54dccfca14d46c94ba320999" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:f3d4b39f5485a96e9af99ba6d58c1062cc3d5192196afea26d827ecfea0d5f32" [label="/bin/sh -c ember build -e production" shape="box"];
  "sha256:fe21cfa3db932a4cc19c81701871f6c388ab23291233b58f6cf97546adaac078" [label="sha256:fe21cfa3db932a4cc19c81701871f6c388ab23291233b58f6cf97546adaac078" shape="plaintext"];
  "sha256:6f34d14cb9ce0058eb9305a7c7f38e440843fa382cc95d9a79f243ea2706708d" -> "sha256:cc1f8c842a960a8758d92efbb740ac63980b59cc21c28e972d600461485eba4a" [label=""];
  "sha256:cc1f8c842a960a8758d92efbb740ac63980b59cc21c28e972d600461485eba4a" -> "sha256:6972c07e3182ec16edb0a2921a67d4e2c4a9513c10e35a0f3423aba509d4a036" [label=""];
  "sha256:6972c07e3182ec16edb0a2921a67d4e2c4a9513c10e35a0f3423aba509d4a036" -> "sha256:db246df8341f10df45b5e7737fa0be9f8bdde9e19971098245edb975fe01d8fe" [label=""];
  "sha256:db246df8341f10df45b5e7737fa0be9f8bdde9e19971098245edb975fe01d8fe" -> "sha256:2b0d96eb394b69f6b7b125d9f5a368e3a12f7420ec81573673ef0bee116a559d" [label=""];
  "sha256:2b0d96eb394b69f6b7b125d9f5a368e3a12f7420ec81573673ef0bee116a559d" -> "sha256:9682e615c0b630c6a76989a359aa4dddb7b8c32be95fc4035b6c802033f1561e" [label=""];
  "sha256:895a607809763dca00a77a68e615a8bc48ca008e9ea7fdc776d180957f5dd26d" -> "sha256:9682e615c0b630c6a76989a359aa4dddb7b8c32be95fc4035b6c802033f1561e" [label=""];
  "sha256:9682e615c0b630c6a76989a359aa4dddb7b8c32be95fc4035b6c802033f1561e" -> "sha256:522a4aa8d731b528ac52d05d2a91351c49d86307cbb5dae7b9567723f88eea08" [label=""];
  "sha256:895a607809763dca00a77a68e615a8bc48ca008e9ea7fdc776d180957f5dd26d" -> "sha256:522a4aa8d731b528ac52d05d2a91351c49d86307cbb5dae7b9567723f88eea08" [label=""];
  "sha256:522a4aa8d731b528ac52d05d2a91351c49d86307cbb5dae7b9567723f88eea08" -> "sha256:388fe52b0ed875dcca3a6dbc91cd4f6ca2afe8053541c56982759b010cb7dc1b" [label=""];
  "sha256:388fe52b0ed875dcca3a6dbc91cd4f6ca2afe8053541c56982759b010cb7dc1b" -> "sha256:a1ebd22abd12185f38806c5c1377e1e9a9fb3d13ec83fa25dac987ba83c57b0b" [label=""];
  "sha256:a1ebd22abd12185f38806c5c1377e1e9a9fb3d13ec83fa25dac987ba83c57b0b" -> "sha256:c68137e3960f98f4edc9f70b67c869c2b9cbc5870e0f83a16039fa254ede325a" [label=""];
  "sha256:895a607809763dca00a77a68e615a8bc48ca008e9ea7fdc776d180957f5dd26d" -> "sha256:c68137e3960f98f4edc9f70b67c869c2b9cbc5870e0f83a16039fa254ede325a" [label=""];
  "sha256:c68137e3960f98f4edc9f70b67c869c2b9cbc5870e0f83a16039fa254ede325a" -> "sha256:bdfd87d1e7a74cba355871a2d4d820616c0d742f54dccfca14d46c94ba320999" [label=""];
  "sha256:895a607809763dca00a77a68e615a8bc48ca008e9ea7fdc776d180957f5dd26d" -> "sha256:bdfd87d1e7a74cba355871a2d4d820616c0d742f54dccfca14d46c94ba320999" [label=""];
  "sha256:bdfd87d1e7a74cba355871a2d4d820616c0d742f54dccfca14d46c94ba320999" -> "sha256:f3d4b39f5485a96e9af99ba6d58c1062cc3d5192196afea26d827ecfea0d5f32" [label=""];
  "sha256:f3d4b39f5485a96e9af99ba6d58c1062cc3d5192196afea26d827ecfea0d5f32" -> "sha256:fe21cfa3db932a4cc19c81701871f6c388ab23291233b58f6cf97546adaac078" [label=""];
}

