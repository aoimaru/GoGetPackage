[app/sources/296845068.Dockerfile]
digraph {
  "sha256:843ce30100a96d9e1a5271ad7736b75fa1b37a332c4bbd100650b89acb270d12" [label="docker-image://docker.io/matwey/opensuse-ci:BASE_IMAGE_TAG" shape="ellipse"];
  "sha256:ea77301f81f24811f7053ff3cf0202bf6f1b757e1005ca52e6d254e91e741bec" [label="mkdir{path=/tmp/build}" shape="note"];
  "sha256:44927279da024a830a69975d7243417b933da8ce741a4beaf28c6afe0f06fb77" [label="local://context" shape="ellipse"];
  "sha256:7273a4b3a4a927070b59fdafab46463a1e99ecb6d367e905154da92daec0e9e1" [label="copy{src=/, dest=/usr/src/fips3}" shape="note"];
  "sha256:aa6f108a5c6348377dd8e1652d47aa9ee9fa6d9a02f4089a5e1373645a5f5445" [label="/bin/sh -c cmake /usr/src/fips3 -DCMAKE_BUILD_TYPE=Release && make VERBOSE=1 && make VERBOSE=1 install" shape="box"];
  "sha256:784eb0b557d11ea10b4d2f41b1acea5764be3dc6bf8d013b0ed67ee04fb0084b" [label="sha256:784eb0b557d11ea10b4d2f41b1acea5764be3dc6bf8d013b0ed67ee04fb0084b" shape="plaintext"];
  "sha256:843ce30100a96d9e1a5271ad7736b75fa1b37a332c4bbd100650b89acb270d12" -> "sha256:ea77301f81f24811f7053ff3cf0202bf6f1b757e1005ca52e6d254e91e741bec" [label=""];
  "sha256:ea77301f81f24811f7053ff3cf0202bf6f1b757e1005ca52e6d254e91e741bec" -> "sha256:7273a4b3a4a927070b59fdafab46463a1e99ecb6d367e905154da92daec0e9e1" [label=""];
  "sha256:44927279da024a830a69975d7243417b933da8ce741a4beaf28c6afe0f06fb77" -> "sha256:7273a4b3a4a927070b59fdafab46463a1e99ecb6d367e905154da92daec0e9e1" [label=""];
  "sha256:7273a4b3a4a927070b59fdafab46463a1e99ecb6d367e905154da92daec0e9e1" -> "sha256:aa6f108a5c6348377dd8e1652d47aa9ee9fa6d9a02f4089a5e1373645a5f5445" [label=""];
  "sha256:aa6f108a5c6348377dd8e1652d47aa9ee9fa6d9a02f4089a5e1373645a5f5445" -> "sha256:784eb0b557d11ea10b4d2f41b1acea5764be3dc6bf8d013b0ed67ee04fb0084b" [label=""];
}

