[app/sources/238913501.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:c77b1144254b5721dc3a6a1150c8f56e7458648804962767d63e90d8333d2071" [label="local://context" shape="ellipse"];
  "sha256:2547e73c4a653daf7d73d05465f757ff3ca9223c4e19387c4f9187e630eab4e6" [label="copy{src=/install/*.sh, dest=/install/}" shape="note"];
  "sha256:8bdea95312ab7432a85a8e13384d5183dafc176dfe3b1fca4ae3a3ec1d411ae6" [label="/bin/sh -c /install/install_bootstrap_deb_packages.sh" shape="box"];
  "sha256:46cf46b62c0f7e58ed780bc1ec4b804b31bc3f5e94c7de333be75812adfb25c8" [label="/bin/sh -c add-apt-repository -y ppa:openjdk-r/ppa &&     add-apt-repository -y ppa:george-edison55/cmake-3.x" shape="box"];
  "sha256:68b71ce55d255eb21739a98fecb732823eca43fd530b8c2155992ace7db6b48d" [label="/bin/sh -c /install/install_deb_packages.sh" shape="box"];
  "sha256:d3dcf82cda8ce00d48a6f4038a20d143dbdf7684943469dd911c4c35a297e9b5" [label="/bin/sh -c /install/install_pip_packages.sh" shape="box"];
  "sha256:ed3ff68d85a2f7e88c0d7f07244da8e48f750d2bc86ecb8c094dd138f5ad1e99" [label="/bin/sh -c /install/install_bazel.sh" shape="box"];
  "sha256:7b556c9b35bfd6c04189a926599f25fea42c939d2110a3373615e138b256c6d4" [label="/bin/sh -c /install/install_proto3.sh" shape="box"];
  "sha256:f0e9b1c57fc8495038ff20145feac1417b2c20140c3dcc2c3dad02c2f40cdb78" [label="/bin/sh -c /install/install_buildifier.sh" shape="box"];
  "sha256:24630b4a2a27b32622dc1b627bd82aa50190e7f3316ff1021295a5b31e9809ef" [label="/bin/sh -c /install/install_auditwheel.sh" shape="box"];
  "sha256:c9be9471f3d197fac9733e4c23ac05db2ec69d444da8777908cc3a4c534d3721" [label="/bin/sh -c /install/install_golang.sh" shape="box"];
  "sha256:a65eb17b95445f957b26a38bf2595dc006040b8f604044a4e25a7316de9d1ed3" [label="/bin/sh -c /install/install_pi_toolchain.sh" shape="box"];
  "sha256:082e28c63396519f0e2ed766d5149a72e13c1d5ec3bd0a10141ddc25a623816b" [label="copy{src=/install/.bazelrc, dest=/etc/bazel.bazelrc}" shape="note"];
  "sha256:9d0b386b160793e70acb0243f8d5963e09a3546285f703b2cbcd359131c0ab27" [label="sha256:9d0b386b160793e70acb0243f8d5963e09a3546285f703b2cbcd359131c0ab27" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:2547e73c4a653daf7d73d05465f757ff3ca9223c4e19387c4f9187e630eab4e6" [label=""];
  "sha256:c77b1144254b5721dc3a6a1150c8f56e7458648804962767d63e90d8333d2071" -> "sha256:2547e73c4a653daf7d73d05465f757ff3ca9223c4e19387c4f9187e630eab4e6" [label=""];
  "sha256:2547e73c4a653daf7d73d05465f757ff3ca9223c4e19387c4f9187e630eab4e6" -> "sha256:8bdea95312ab7432a85a8e13384d5183dafc176dfe3b1fca4ae3a3ec1d411ae6" [label=""];
  "sha256:8bdea95312ab7432a85a8e13384d5183dafc176dfe3b1fca4ae3a3ec1d411ae6" -> "sha256:46cf46b62c0f7e58ed780bc1ec4b804b31bc3f5e94c7de333be75812adfb25c8" [label=""];
  "sha256:46cf46b62c0f7e58ed780bc1ec4b804b31bc3f5e94c7de333be75812adfb25c8" -> "sha256:68b71ce55d255eb21739a98fecb732823eca43fd530b8c2155992ace7db6b48d" [label=""];
  "sha256:68b71ce55d255eb21739a98fecb732823eca43fd530b8c2155992ace7db6b48d" -> "sha256:d3dcf82cda8ce00d48a6f4038a20d143dbdf7684943469dd911c4c35a297e9b5" [label=""];
  "sha256:d3dcf82cda8ce00d48a6f4038a20d143dbdf7684943469dd911c4c35a297e9b5" -> "sha256:ed3ff68d85a2f7e88c0d7f07244da8e48f750d2bc86ecb8c094dd138f5ad1e99" [label=""];
  "sha256:ed3ff68d85a2f7e88c0d7f07244da8e48f750d2bc86ecb8c094dd138f5ad1e99" -> "sha256:7b556c9b35bfd6c04189a926599f25fea42c939d2110a3373615e138b256c6d4" [label=""];
  "sha256:7b556c9b35bfd6c04189a926599f25fea42c939d2110a3373615e138b256c6d4" -> "sha256:f0e9b1c57fc8495038ff20145feac1417b2c20140c3dcc2c3dad02c2f40cdb78" [label=""];
  "sha256:f0e9b1c57fc8495038ff20145feac1417b2c20140c3dcc2c3dad02c2f40cdb78" -> "sha256:24630b4a2a27b32622dc1b627bd82aa50190e7f3316ff1021295a5b31e9809ef" [label=""];
  "sha256:24630b4a2a27b32622dc1b627bd82aa50190e7f3316ff1021295a5b31e9809ef" -> "sha256:c9be9471f3d197fac9733e4c23ac05db2ec69d444da8777908cc3a4c534d3721" [label=""];
  "sha256:c9be9471f3d197fac9733e4c23ac05db2ec69d444da8777908cc3a4c534d3721" -> "sha256:a65eb17b95445f957b26a38bf2595dc006040b8f604044a4e25a7316de9d1ed3" [label=""];
  "sha256:a65eb17b95445f957b26a38bf2595dc006040b8f604044a4e25a7316de9d1ed3" -> "sha256:082e28c63396519f0e2ed766d5149a72e13c1d5ec3bd0a10141ddc25a623816b" [label=""];
  "sha256:c77b1144254b5721dc3a6a1150c8f56e7458648804962767d63e90d8333d2071" -> "sha256:082e28c63396519f0e2ed766d5149a72e13c1d5ec3bd0a10141ddc25a623816b" [label=""];
  "sha256:082e28c63396519f0e2ed766d5149a72e13c1d5ec3bd0a10141ddc25a623816b" -> "sha256:9d0b386b160793e70acb0243f8d5963e09a3546285f703b2cbcd359131c0ab27" [label=""];
}

