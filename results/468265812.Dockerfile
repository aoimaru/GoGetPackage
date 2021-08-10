[app/sources/468265812.Dockerfile]
digraph {
  "sha256:ff8a44417cb0e93205adf265a14434eb9ebd7533d34298fec6ed11def9468430" [label="docker-image://docker.io/walmartlabs/concord-base:latest" shape="ellipse"];
  "sha256:23eca2643848c5f9c6275a7ca07b2154ce61031656d50855660db3d0080b89ad" [label="/bin/sh -c yum -y install nginx && yum clean all" shape="box"];
  "sha256:7ada2e187075e4616d0813fad11143318179fac8521cf4854ee9d38b3870f9df" [label="local://context" shape="ellipse"];
  "sha256:f9aaac224ee457c75f92057e880092e4f33096ca786609ea32717cc60b95b1e1" [label="copy{src=/target/dist/console.tar.gz, dest=/opt/concord/console/dist/}" shape="note"];
  "sha256:8c538178baa00e9290cc364de39681921264029153df1ff3586761777dedbafc" [label="copy{src=/src/main/docker/start.sh, dest=/opt/concord/console/}" shape="note"];
  "sha256:c0b2c58b41f8a2c9b8d6edc00baca245fefb2802e96061f30a544fbdee5e3a87" [label="copy{src=/src/main/docker/nginx, dest=/opt/concord/console/nginx}" shape="note"];
  "sha256:fa2f38bd893692f652de4a6ecb0846ed2c4329e7f576c2b8cb5be4609d530a44" [label="/bin/sh -c mkdir -p /opt/concord/logs" shape="box"];
  "sha256:fb96806e41be2b5397059d26ca66fffde6eaf1bbdfb47613949ac312a96340be" [label="sha256:fb96806e41be2b5397059d26ca66fffde6eaf1bbdfb47613949ac312a96340be" shape="plaintext"];
  "sha256:ff8a44417cb0e93205adf265a14434eb9ebd7533d34298fec6ed11def9468430" -> "sha256:23eca2643848c5f9c6275a7ca07b2154ce61031656d50855660db3d0080b89ad" [label=""];
  "sha256:23eca2643848c5f9c6275a7ca07b2154ce61031656d50855660db3d0080b89ad" -> "sha256:f9aaac224ee457c75f92057e880092e4f33096ca786609ea32717cc60b95b1e1" [label=""];
  "sha256:7ada2e187075e4616d0813fad11143318179fac8521cf4854ee9d38b3870f9df" -> "sha256:f9aaac224ee457c75f92057e880092e4f33096ca786609ea32717cc60b95b1e1" [label=""];
  "sha256:f9aaac224ee457c75f92057e880092e4f33096ca786609ea32717cc60b95b1e1" -> "sha256:8c538178baa00e9290cc364de39681921264029153df1ff3586761777dedbafc" [label=""];
  "sha256:7ada2e187075e4616d0813fad11143318179fac8521cf4854ee9d38b3870f9df" -> "sha256:8c538178baa00e9290cc364de39681921264029153df1ff3586761777dedbafc" [label=""];
  "sha256:8c538178baa00e9290cc364de39681921264029153df1ff3586761777dedbafc" -> "sha256:c0b2c58b41f8a2c9b8d6edc00baca245fefb2802e96061f30a544fbdee5e3a87" [label=""];
  "sha256:7ada2e187075e4616d0813fad11143318179fac8521cf4854ee9d38b3870f9df" -> "sha256:c0b2c58b41f8a2c9b8d6edc00baca245fefb2802e96061f30a544fbdee5e3a87" [label=""];
  "sha256:c0b2c58b41f8a2c9b8d6edc00baca245fefb2802e96061f30a544fbdee5e3a87" -> "sha256:fa2f38bd893692f652de4a6ecb0846ed2c4329e7f576c2b8cb5be4609d530a44" [label=""];
  "sha256:fa2f38bd893692f652de4a6ecb0846ed2c4329e7f576c2b8cb5be4609d530a44" -> "sha256:fb96806e41be2b5397059d26ca66fffde6eaf1bbdfb47613949ac312a96340be" [label=""];
}

