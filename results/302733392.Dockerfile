[app/sources/302733392.Dockerfile]
digraph {
  "sha256:9c4d21a419da60f9fcc52a5e827cbd976adfa9a6afc84927a8790862376b75c2" [label="docker-image://docker.io/library/node:carbon" shape="ellipse"];
  "sha256:c9cc5df41bf98d0665ce24e41a7b889ce254285a996158e67140aea303560fba" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:6a12e1f4e1838b2ca2d3c103c10175b12fc73ce23f4479b6e5ad2852ebd5f635" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:af85a4e4dc9b6cc3bce46bc3bb972dad7a0fa6aa30c5ba6d4a3d660814a9e25c" [label="local://context" shape="ellipse"];
  "sha256:c75368e564622b575d26863244eb2bfb63ae94f3929071aacd7be3d83a297331" [label="copy{src=/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:c9160c23f615c1893d0405cd9b5f73888e325cb0448b5d303a362b67ff58b6f1" [label="/bin/sh -c yarn install && yarn cache clean" shape="box"];
  "sha256:a94bfacc1afebb04009ba3a877991473ab5f497e9e89ca4654891b5eb1d073ec" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:53ae136fd2e267b89c8159c364d741f8e4c5728e78f350ac37f5cf5f21096d65" [label="sha256:53ae136fd2e267b89c8159c364d741f8e4c5728e78f350ac37f5cf5f21096d65" shape="plaintext"];
  "sha256:9c4d21a419da60f9fcc52a5e827cbd976adfa9a6afc84927a8790862376b75c2" -> "sha256:c9cc5df41bf98d0665ce24e41a7b889ce254285a996158e67140aea303560fba" [label=""];
  "sha256:c9cc5df41bf98d0665ce24e41a7b889ce254285a996158e67140aea303560fba" -> "sha256:6a12e1f4e1838b2ca2d3c103c10175b12fc73ce23f4479b6e5ad2852ebd5f635" [label=""];
  "sha256:6a12e1f4e1838b2ca2d3c103c10175b12fc73ce23f4479b6e5ad2852ebd5f635" -> "sha256:c75368e564622b575d26863244eb2bfb63ae94f3929071aacd7be3d83a297331" [label=""];
  "sha256:af85a4e4dc9b6cc3bce46bc3bb972dad7a0fa6aa30c5ba6d4a3d660814a9e25c" -> "sha256:c75368e564622b575d26863244eb2bfb63ae94f3929071aacd7be3d83a297331" [label=""];
  "sha256:c75368e564622b575d26863244eb2bfb63ae94f3929071aacd7be3d83a297331" -> "sha256:c9160c23f615c1893d0405cd9b5f73888e325cb0448b5d303a362b67ff58b6f1" [label=""];
  "sha256:c9160c23f615c1893d0405cd9b5f73888e325cb0448b5d303a362b67ff58b6f1" -> "sha256:a94bfacc1afebb04009ba3a877991473ab5f497e9e89ca4654891b5eb1d073ec" [label=""];
  "sha256:af85a4e4dc9b6cc3bce46bc3bb972dad7a0fa6aa30c5ba6d4a3d660814a9e25c" -> "sha256:a94bfacc1afebb04009ba3a877991473ab5f497e9e89ca4654891b5eb1d073ec" [label=""];
  "sha256:a94bfacc1afebb04009ba3a877991473ab5f497e9e89ca4654891b5eb1d073ec" -> "sha256:53ae136fd2e267b89c8159c364d741f8e4c5728e78f350ac37f5cf5f21096d65" [label=""];
}

