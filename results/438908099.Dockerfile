[app/sources/438908099.Dockerfile]
digraph {
  "sha256:de70870266a533aaf20a3cdfebd4fdfa07be3397329c07da206eae617654ee45" [label="docker-image://docker.io/metacpan/metacpan-base:latest" shape="ellipse"];
  "sha256:efb538095d7757a0170bb694a49c9b8993aa4b4cd1b61cffb1500c34a927414c" [label="local://context" shape="ellipse"];
  "sha256:2de87387505a7b3dcdf48435bcec3621ccdc1fb84f346bcb8f2d1200b2fcf8fa" [label="copy{src=/, dest=/code}" shape="note"];
  "sha256:423a1ed2d763b5870493bfb8a91966667ce48e6c647d04c5d42a768d2a376e3d" [label="mkdir{path=/code}" shape="note"];
  "sha256:e79fb3eae11ddb37fb75c9dffff6533a27ba605a9adb15d526cb83a77404ad8c" [label="/bin/sh -c cpm install --without-test -g --cpanfile cpanfile" shape="box"];
  "sha256:50955573b13d5f7e3af783679d2a97d97d984ad0a5728abd2ca5f4f9b63f0028" [label="sha256:50955573b13d5f7e3af783679d2a97d97d984ad0a5728abd2ca5f4f9b63f0028" shape="plaintext"];
  "sha256:de70870266a533aaf20a3cdfebd4fdfa07be3397329c07da206eae617654ee45" -> "sha256:2de87387505a7b3dcdf48435bcec3621ccdc1fb84f346bcb8f2d1200b2fcf8fa" [label=""];
  "sha256:efb538095d7757a0170bb694a49c9b8993aa4b4cd1b61cffb1500c34a927414c" -> "sha256:2de87387505a7b3dcdf48435bcec3621ccdc1fb84f346bcb8f2d1200b2fcf8fa" [label=""];
  "sha256:2de87387505a7b3dcdf48435bcec3621ccdc1fb84f346bcb8f2d1200b2fcf8fa" -> "sha256:423a1ed2d763b5870493bfb8a91966667ce48e6c647d04c5d42a768d2a376e3d" [label=""];
  "sha256:423a1ed2d763b5870493bfb8a91966667ce48e6c647d04c5d42a768d2a376e3d" -> "sha256:e79fb3eae11ddb37fb75c9dffff6533a27ba605a9adb15d526cb83a77404ad8c" [label=""];
  "sha256:e79fb3eae11ddb37fb75c9dffff6533a27ba605a9adb15d526cb83a77404ad8c" -> "sha256:50955573b13d5f7e3af783679d2a97d97d984ad0a5728abd2ca5f4f9b63f0028" [label=""];
}

