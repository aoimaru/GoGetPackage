[app/sources/291755374.Dockerfile]
digraph {
  "sha256:ac16416a8e996544f546f53d67ccedcac5be3c0bee521ff7f8d9010fa95ea876" [label="docker-image://docker.io/dockcross/linux-armv7:latest" shape="ellipse"];
  "sha256:6b756d0eedf0cb1a90f280cefc24bdea3d06c0f53fa6173d87f2f608af299e34" [label="/bin/sh -c apt-get update &&     apt-get install -y libopenblas-dev:armhf &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:42c94d10713e4c58c333c568c9499c1ac786b7b04cc389b99d357ebbd76e6e2c" [label="mkdir{path=/work}" shape="note"];
  "sha256:8f5ae74f46f7c3ac02684fddb1e090446b9ae6184303555d424861c4831e0d47" [label="local://context" shape="ellipse"];
  "sha256:f0d1188153bb103dfbefdc77bf0e331037581a36401e84e3995ba349c197d314" [label="copy{src=/mxnet, dest=/work/mxnet}" shape="note"];
  "sha256:10d513120cc9af30b8809f6b59853aa3c5f7523e39ef77a408dd0bd311feaaae" [label="mkdir{path=/work/mxnet}" shape="note"];
  "sha256:501f4758d89ae21f5f2fd95515c6d1338a7e609740947f4788809a1575b9a358" [label="copy{src=/arm.crosscompile.mk, dest=/work/mxnet/make/config.mk}" shape="note"];
  "sha256:b17ebba71312d4fb449503569b1f1bfb2c7091586242b9cc325c620e658ae20a" [label="/bin/sh -c make -j$(nproc) $BUILD_OPTS" shape="box"];
  "sha256:43e3cda3d1103f0da5814ca560cb64136673e7e31aa112056bc1e0577f1b4307" [label="mkdir{path=/work/build}" shape="note"];
  "sha256:c8ebd4380c63ec410715c80e5d0eef6b3da1eddeac9ba147e7a63ee579fbcb2e" [label="/bin/sh -c cp /work/mxnet/lib/* ." shape="box"];
  "sha256:42bf0472949c7756225d5b3f911e0f7a74fdaac64ae51df7e539834483181096" [label="sha256:42bf0472949c7756225d5b3f911e0f7a74fdaac64ae51df7e539834483181096" shape="plaintext"];
  "sha256:ac16416a8e996544f546f53d67ccedcac5be3c0bee521ff7f8d9010fa95ea876" -> "sha256:6b756d0eedf0cb1a90f280cefc24bdea3d06c0f53fa6173d87f2f608af299e34" [label=""];
  "sha256:6b756d0eedf0cb1a90f280cefc24bdea3d06c0f53fa6173d87f2f608af299e34" -> "sha256:42c94d10713e4c58c333c568c9499c1ac786b7b04cc389b99d357ebbd76e6e2c" [label=""];
  "sha256:42c94d10713e4c58c333c568c9499c1ac786b7b04cc389b99d357ebbd76e6e2c" -> "sha256:f0d1188153bb103dfbefdc77bf0e331037581a36401e84e3995ba349c197d314" [label=""];
  "sha256:8f5ae74f46f7c3ac02684fddb1e090446b9ae6184303555d424861c4831e0d47" -> "sha256:f0d1188153bb103dfbefdc77bf0e331037581a36401e84e3995ba349c197d314" [label=""];
  "sha256:f0d1188153bb103dfbefdc77bf0e331037581a36401e84e3995ba349c197d314" -> "sha256:10d513120cc9af30b8809f6b59853aa3c5f7523e39ef77a408dd0bd311feaaae" [label=""];
  "sha256:10d513120cc9af30b8809f6b59853aa3c5f7523e39ef77a408dd0bd311feaaae" -> "sha256:501f4758d89ae21f5f2fd95515c6d1338a7e609740947f4788809a1575b9a358" [label=""];
  "sha256:8f5ae74f46f7c3ac02684fddb1e090446b9ae6184303555d424861c4831e0d47" -> "sha256:501f4758d89ae21f5f2fd95515c6d1338a7e609740947f4788809a1575b9a358" [label=""];
  "sha256:501f4758d89ae21f5f2fd95515c6d1338a7e609740947f4788809a1575b9a358" -> "sha256:b17ebba71312d4fb449503569b1f1bfb2c7091586242b9cc325c620e658ae20a" [label=""];
  "sha256:b17ebba71312d4fb449503569b1f1bfb2c7091586242b9cc325c620e658ae20a" -> "sha256:43e3cda3d1103f0da5814ca560cb64136673e7e31aa112056bc1e0577f1b4307" [label=""];
  "sha256:43e3cda3d1103f0da5814ca560cb64136673e7e31aa112056bc1e0577f1b4307" -> "sha256:c8ebd4380c63ec410715c80e5d0eef6b3da1eddeac9ba147e7a63ee579fbcb2e" [label=""];
  "sha256:c8ebd4380c63ec410715c80e5d0eef6b3da1eddeac9ba147e7a63ee579fbcb2e" -> "sha256:42bf0472949c7756225d5b3f911e0f7a74fdaac64ae51df7e539834483181096" [label=""];
}

