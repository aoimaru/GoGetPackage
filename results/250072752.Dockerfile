[app/sources/250072752.Dockerfile]
digraph {
  "sha256:e87f635f243ea16947922e4fd7cc0ac1dbdde079188ecc588dbeed3033713cb6" [label="docker-image://docker.io/library/golang:1.11.4" shape="ellipse"];
  "sha256:cd2586a41fbffb93ece1ccae603e176060c1d87eb9e0d8a37d79cf0202fa211b" [label="mkdir{path=/usr}" shape="note"];
  "sha256:f20b7c97f31d7ce32d0185b2df4a74bff4e2c534940e13b8eeeadcfe1ecb26aa" [label="docker-image://docker.io/fission/builder:latest" shape="ellipse"];
  "sha256:4018bda10fa96e664dfb9440bf40273847be28c90c37b63fc20b0378eb7e2992" [label="copy{src=/builder, dest=/builder}" shape="note"];
  "sha256:8f37119225e8d3999fd366f03c6a35e5228d4d655fb76dfcf403a6fc6fefe973" [label="local://context" shape="ellipse"];
  "sha256:4a1d3d960a92960e8e7b5c68770fd0c760d1c2c5325c0415552484d744b09d6d" [label="copy{src=/build.sh, dest=/usr/local/bin/build}" shape="note"];
  "sha256:585cf2f97593303507a0a9eed1d9b92cb8d0c5eb62992192de1c4c4fc35fc3d5" [label="sha256:585cf2f97593303507a0a9eed1d9b92cb8d0c5eb62992192de1c4c4fc35fc3d5" shape="plaintext"];
  "sha256:e87f635f243ea16947922e4fd7cc0ac1dbdde079188ecc588dbeed3033713cb6" -> "sha256:cd2586a41fbffb93ece1ccae603e176060c1d87eb9e0d8a37d79cf0202fa211b" [label=""];
  "sha256:cd2586a41fbffb93ece1ccae603e176060c1d87eb9e0d8a37d79cf0202fa211b" -> "sha256:4018bda10fa96e664dfb9440bf40273847be28c90c37b63fc20b0378eb7e2992" [label=""];
  "sha256:f20b7c97f31d7ce32d0185b2df4a74bff4e2c534940e13b8eeeadcfe1ecb26aa" -> "sha256:4018bda10fa96e664dfb9440bf40273847be28c90c37b63fc20b0378eb7e2992" [label=""];
  "sha256:4018bda10fa96e664dfb9440bf40273847be28c90c37b63fc20b0378eb7e2992" -> "sha256:4a1d3d960a92960e8e7b5c68770fd0c760d1c2c5325c0415552484d744b09d6d" [label=""];
  "sha256:8f37119225e8d3999fd366f03c6a35e5228d4d655fb76dfcf403a6fc6fefe973" -> "sha256:4a1d3d960a92960e8e7b5c68770fd0c760d1c2c5325c0415552484d744b09d6d" [label=""];
  "sha256:4a1d3d960a92960e8e7b5c68770fd0c760d1c2c5325c0415552484d744b09d6d" -> "sha256:585cf2f97593303507a0a9eed1d9b92cb8d0c5eb62992192de1c4c4fc35fc3d5" [label=""];
}

