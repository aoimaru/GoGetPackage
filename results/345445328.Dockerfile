[app/sources/345445328.Dockerfile]
digraph {
  "sha256:cacaf0ca00c103dbd95f1fe406b377fdac59f714e12226572cb8488745eb0a51" [label="docker-image://registry.rhc4tp.openshift.com/bitnami/rhel-extras-7:latest" shape="ellipse"];
  "sha256:3ef42465c6870092abe1ae8c1d854d724053425f8d5e8bdcb48e697dda8c5a64" [label="/bin/sh -c install_packages cyrus-sasl-lib glibc keyutils-libs krb5-libs libcom_err libevent libselinux nss-softokn-freebl pcre" shape="box"];
  "sha256:0bf2d7d36372d2ff6af967011c6cc99154007b34bc922bad25ddeabcceb7d08b" [label="/bin/sh -c bitnami-pkg unpack memcached-1.5.13-0 --checksum 6d612128bf1782101f20d3345bcbc868e66e543b391369d4ea9938c398305af7" shape="box"];
  "sha256:9b3e58aefa752b70f9822f81fc10a177d4527f74b72bf68a3a61a95f91ef491b" [label="local://context" shape="ellipse"];
  "sha256:4ee97418a3a4c7281bce1c0301df2dfb2e2550af96955c1e893171b03e051a22" [label="copy{src=/rootfs, dest=/}" shape="note"];
  "sha256:7b36e40c4f4efb3e3270ed45239e868f1d905b7300a410d2986b491d22a0dc93" [label="sha256:7b36e40c4f4efb3e3270ed45239e868f1d905b7300a410d2986b491d22a0dc93" shape="plaintext"];
  "sha256:cacaf0ca00c103dbd95f1fe406b377fdac59f714e12226572cb8488745eb0a51" -> "sha256:3ef42465c6870092abe1ae8c1d854d724053425f8d5e8bdcb48e697dda8c5a64" [label=""];
  "sha256:3ef42465c6870092abe1ae8c1d854d724053425f8d5e8bdcb48e697dda8c5a64" -> "sha256:0bf2d7d36372d2ff6af967011c6cc99154007b34bc922bad25ddeabcceb7d08b" [label=""];
  "sha256:0bf2d7d36372d2ff6af967011c6cc99154007b34bc922bad25ddeabcceb7d08b" -> "sha256:4ee97418a3a4c7281bce1c0301df2dfb2e2550af96955c1e893171b03e051a22" [label=""];
  "sha256:9b3e58aefa752b70f9822f81fc10a177d4527f74b72bf68a3a61a95f91ef491b" -> "sha256:4ee97418a3a4c7281bce1c0301df2dfb2e2550af96955c1e893171b03e051a22" [label=""];
  "sha256:4ee97418a3a4c7281bce1c0301df2dfb2e2550af96955c1e893171b03e051a22" -> "sha256:7b36e40c4f4efb3e3270ed45239e868f1d905b7300a410d2986b491d22a0dc93" [label=""];
}

