[app/sources/386300976.Dockerfile]
digraph {
  "sha256:f51b7c7cef2ef65ffefa6d236274affe2a9ba29dea18f624f9a4bea95483c9ff" [label="docker-image://docker.io/library/ubuntu:14.04@sha256:43cb19408de1e0ecf3ba5b5372ec98978963d6d0be42d0ad825e77a3bd16b5f7" shape="ellipse"];
  "sha256:7322f1eff38cb36eded92d1befac313bc3be7768740c84228504e1d37dabb330" [label="local://context" shape="ellipse"];
  "sha256:418960258a177ea7a3b0886d9bbc7501f8f1ca9a371f8012c5184157c1732016" [label="copy{src=/tmp_install.sh, dest=/opt/install.sh}" shape="note"];
  "sha256:2d1119c1da5614539046c083ff2c1e85bacfc3d4781ddc35d50943228135c6c2" [label="/bin/sh -c /bin/bash /opt/install.sh" shape="box"];
  "sha256:146942da7bf1cb385525bbcd60a55f8ff2faf8b94dfb8e2c50729155668a6900" [label="sha256:146942da7bf1cb385525bbcd60a55f8ff2faf8b94dfb8e2c50729155668a6900" shape="plaintext"];
  "sha256:f51b7c7cef2ef65ffefa6d236274affe2a9ba29dea18f624f9a4bea95483c9ff" -> "sha256:418960258a177ea7a3b0886d9bbc7501f8f1ca9a371f8012c5184157c1732016" [label=""];
  "sha256:7322f1eff38cb36eded92d1befac313bc3be7768740c84228504e1d37dabb330" -> "sha256:418960258a177ea7a3b0886d9bbc7501f8f1ca9a371f8012c5184157c1732016" [label=""];
  "sha256:418960258a177ea7a3b0886d9bbc7501f8f1ca9a371f8012c5184157c1732016" -> "sha256:2d1119c1da5614539046c083ff2c1e85bacfc3d4781ddc35d50943228135c6c2" [label=""];
  "sha256:2d1119c1da5614539046c083ff2c1e85bacfc3d4781ddc35d50943228135c6c2" -> "sha256:146942da7bf1cb385525bbcd60a55f8ff2faf8b94dfb8e2c50729155668a6900" [label=""];
}

