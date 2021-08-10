[app/sources/284724420.Dockerfile]
digraph {
  "sha256:1a984849bcd4d48c7c47c3daa89efa0c06366b16fb6d9cdc30534466182a59b6" [label="docker-image://docker.io/bitnami/minideb-extras:jessie-r64@sha256:30b8229c589ba2f83d775422f62e27511dd8662b734326a9d8ce0e3ddb02ace8" shape="ellipse"];
  "sha256:eaaaa4c8689cfaa8dcf094639c3b0a2fb4ad7e54c9850996e30de762803781ca" [label="/bin/sh -c install_packages libbz2-1.0 libc6 libcomerr2 libcurl3 libexpat1 libffi6 libfreetype6 libgcc1 libgcrypt20 libgmp10 libgnutls-deb0-28 libgpg-error0 libgssapi-krb5-2 libhogweed2 libicu52 libidn11 libjpeg62-turbo libk5crypto3 libkeyutils1 libkrb5-3 libkrb5support0 libldap-2.4-2 liblzma5 libmcrypt4 libncurses5 libnettle4 libp11-kit0 libpcre3 libpng12-0 libpq5 libreadline6 librtmp1 libsasl2-2 libsqlite3-0 libssh2-1 libssl1.0.0 libstdc++6 libsybdb5 libtasn1-6 libtidy-0.99-0 libtinfo5 libxml2 libxslt1.1 zlib1g" shape="box"];
  "sha256:f7935cec2276cdff84a30aca0739d180437729c9d622a887186db98f60c4d41a" [label="/bin/sh -c bitnami-pkg unpack apache-2.4.33-3 --checksum 55bc664737e2ff9d534468088424ee4b04e770e67800e317c9db5b1e58cf2ffe" shape="box"];
  "sha256:9f3958cc74c41c2b08827c70256a67a26813c792d64e6e262adaa86396bd325e" [label="/bin/sh -c bitnami-pkg unpack php-7.0.30-4 --checksum e6c48cb951db7abeb83319bf06155385a5170a833e2ebfd1ee61e137633c0c7a" shape="box"];
  "sha256:4fac9deabfe81075e9b8ecf1d5f4f15884c872f8653b880a03e7490aa716c05a" [label="/bin/sh -c bitnami-pkg unpack mysql-client-10.1.33-0 --checksum 1b1608f1c1f4e21f05037225e095c49035ad8bfdb8b580abbb904c9f2448a5c6" shape="box"];
  "sha256:1fa8a36c53902ebc199ff93a12f0f22a035153f69af8b3fc60a5b8f1fe86d2b5" [label="/bin/sh -c bitnami-pkg install libphp-7.0.30-7 --checksum ee53b007b7ba11b7202fff5c112d0b13fd78cabab8fabf13a94723475f325f2e" shape="box"];
  "sha256:cc12f3287ae626aa4332bb6b44069a102ddf546f6feda3a33efcfc37c0a72d70" [label="/bin/sh -c bitnami-pkg unpack matomo-3.5.0-0 --checksum 62a76adacaa11d2a2400b6698e2ab4b2ccb64a5a5ddd070105efb0b76f5a64a0" shape="box"];
  "sha256:c4e4d0e91069b31c909a549a04529f28a8a175f71bd4d7945557a2bb940a283b" [label="local://context" shape="ellipse"];
  "sha256:217c326cdbc6835bad75c2eb4fbdfb14c6fec8fc5b8e6c573e0fd8115d212217" [label="copy{src=/rootfs, dest=/}" shape="note"];
  "sha256:e526ac6f66cd520aa3bd7e8b59162a496f1ce77bef2370bf8bc2383ad4b04377" [label="sha256:e526ac6f66cd520aa3bd7e8b59162a496f1ce77bef2370bf8bc2383ad4b04377" shape="plaintext"];
  "sha256:1a984849bcd4d48c7c47c3daa89efa0c06366b16fb6d9cdc30534466182a59b6" -> "sha256:eaaaa4c8689cfaa8dcf094639c3b0a2fb4ad7e54c9850996e30de762803781ca" [label=""];
  "sha256:eaaaa4c8689cfaa8dcf094639c3b0a2fb4ad7e54c9850996e30de762803781ca" -> "sha256:f7935cec2276cdff84a30aca0739d180437729c9d622a887186db98f60c4d41a" [label=""];
  "sha256:f7935cec2276cdff84a30aca0739d180437729c9d622a887186db98f60c4d41a" -> "sha256:9f3958cc74c41c2b08827c70256a67a26813c792d64e6e262adaa86396bd325e" [label=""];
  "sha256:9f3958cc74c41c2b08827c70256a67a26813c792d64e6e262adaa86396bd325e" -> "sha256:4fac9deabfe81075e9b8ecf1d5f4f15884c872f8653b880a03e7490aa716c05a" [label=""];
  "sha256:4fac9deabfe81075e9b8ecf1d5f4f15884c872f8653b880a03e7490aa716c05a" -> "sha256:1fa8a36c53902ebc199ff93a12f0f22a035153f69af8b3fc60a5b8f1fe86d2b5" [label=""];
  "sha256:1fa8a36c53902ebc199ff93a12f0f22a035153f69af8b3fc60a5b8f1fe86d2b5" -> "sha256:cc12f3287ae626aa4332bb6b44069a102ddf546f6feda3a33efcfc37c0a72d70" [label=""];
  "sha256:cc12f3287ae626aa4332bb6b44069a102ddf546f6feda3a33efcfc37c0a72d70" -> "sha256:217c326cdbc6835bad75c2eb4fbdfb14c6fec8fc5b8e6c573e0fd8115d212217" [label=""];
  "sha256:c4e4d0e91069b31c909a549a04529f28a8a175f71bd4d7945557a2bb940a283b" -> "sha256:217c326cdbc6835bad75c2eb4fbdfb14c6fec8fc5b8e6c573e0fd8115d212217" [label=""];
  "sha256:217c326cdbc6835bad75c2eb4fbdfb14c6fec8fc5b8e6c573e0fd8115d212217" -> "sha256:e526ac6f66cd520aa3bd7e8b59162a496f1ce77bef2370bf8bc2383ad4b04377" [label=""];
}

