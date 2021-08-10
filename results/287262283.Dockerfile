[app/sources/287262283.Dockerfile]
digraph {
  "sha256:ac16416a8e996544f546f53d67ccedcac5be3c0bee521ff7f8d9010fa95ea876" [label="docker-image://docker.io/dockcross/linux-armv7:latest" shape="ellipse"];
  "sha256:6b756d0eedf0cb1a90f280cefc24bdea3d06c0f53fa6173d87f2f608af299e34" [label="/bin/sh -c apt-get update &&     apt-get install -y libopenblas-dev:armhf &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:42c94d10713e4c58c333c568c9499c1ac786b7b04cc389b99d357ebbd76e6e2c" [label="mkdir{path=/work}" shape="note"];
  "sha256:d5e254427927f2eb7642827963bf516753ee9a3402a675500bdc65b88d73c73e" [label="local://context" shape="ellipse"];
  "sha256:02e70e756fd3823ba6722c4177eeb816a107808b9eec20b9786f626b281a33f6" [label="copy{src=/mxnet, dest=/work/mxnet}" shape="note"];
  "sha256:6d82a9186d7d6a1556932673abaa7c42f0df206f4733fbbfbc3210da606123c8" [label="mkdir{path=/work/mxnet}" shape="note"];
  "sha256:71216d3955e6558d0ee4afabcd68bcfd9f3a969be0d41c99e92a3770065f4701" [label="copy{src=/arm.crosscompile.mk, dest=/work/mxnet/make/config.mk}" shape="note"];
  "sha256:876b52b7976fd396669808d2aa6c4634bd97ebd76f1abbf515e6b6cb70c45390" [label="/bin/sh -c make -j$(nproc) $BUILD_OPTS" shape="box"];
  "sha256:e7607208f3d1aeac2eb644ea105e800ba653635ecca5d9b01ccdda137bd9b65b" [label="mkdir{path=/work/build}" shape="note"];
  "sha256:772efb3f1055b4eb1d02ce012c4a23684cc9a496aa9ea2da382d86dee3362ec4" [label="/bin/sh -c cp /work/mxnet/lib/* ." shape="box"];
  "sha256:4e89413aa119cceb1195a8264235860e74196a0c30e05be9da8502901c8c5be9" [label="sha256:4e89413aa119cceb1195a8264235860e74196a0c30e05be9da8502901c8c5be9" shape="plaintext"];
  "sha256:ac16416a8e996544f546f53d67ccedcac5be3c0bee521ff7f8d9010fa95ea876" -> "sha256:6b756d0eedf0cb1a90f280cefc24bdea3d06c0f53fa6173d87f2f608af299e34" [label=""];
  "sha256:6b756d0eedf0cb1a90f280cefc24bdea3d06c0f53fa6173d87f2f608af299e34" -> "sha256:42c94d10713e4c58c333c568c9499c1ac786b7b04cc389b99d357ebbd76e6e2c" [label=""];
  "sha256:42c94d10713e4c58c333c568c9499c1ac786b7b04cc389b99d357ebbd76e6e2c" -> "sha256:02e70e756fd3823ba6722c4177eeb816a107808b9eec20b9786f626b281a33f6" [label=""];
  "sha256:d5e254427927f2eb7642827963bf516753ee9a3402a675500bdc65b88d73c73e" -> "sha256:02e70e756fd3823ba6722c4177eeb816a107808b9eec20b9786f626b281a33f6" [label=""];
  "sha256:02e70e756fd3823ba6722c4177eeb816a107808b9eec20b9786f626b281a33f6" -> "sha256:6d82a9186d7d6a1556932673abaa7c42f0df206f4733fbbfbc3210da606123c8" [label=""];
  "sha256:6d82a9186d7d6a1556932673abaa7c42f0df206f4733fbbfbc3210da606123c8" -> "sha256:71216d3955e6558d0ee4afabcd68bcfd9f3a969be0d41c99e92a3770065f4701" [label=""];
  "sha256:d5e254427927f2eb7642827963bf516753ee9a3402a675500bdc65b88d73c73e" -> "sha256:71216d3955e6558d0ee4afabcd68bcfd9f3a969be0d41c99e92a3770065f4701" [label=""];
  "sha256:71216d3955e6558d0ee4afabcd68bcfd9f3a969be0d41c99e92a3770065f4701" -> "sha256:876b52b7976fd396669808d2aa6c4634bd97ebd76f1abbf515e6b6cb70c45390" [label=""];
  "sha256:876b52b7976fd396669808d2aa6c4634bd97ebd76f1abbf515e6b6cb70c45390" -> "sha256:e7607208f3d1aeac2eb644ea105e800ba653635ecca5d9b01ccdda137bd9b65b" [label=""];
  "sha256:e7607208f3d1aeac2eb644ea105e800ba653635ecca5d9b01ccdda137bd9b65b" -> "sha256:772efb3f1055b4eb1d02ce012c4a23684cc9a496aa9ea2da382d86dee3362ec4" [label=""];
  "sha256:772efb3f1055b4eb1d02ce012c4a23684cc9a496aa9ea2da382d86dee3362ec4" -> "sha256:4e89413aa119cceb1195a8264235860e74196a0c30e05be9da8502901c8c5be9" [label=""];
}

