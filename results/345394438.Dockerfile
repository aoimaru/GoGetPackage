[app/sources/345394438.Dockerfile]
digraph {
  "sha256:4c2818372f2700ea69df01c6dd69d0e6ea63a7630f59183d1be5bdbf10a495f4" [label="docker-image://docker.io/bitnami/oraclelinux-runtimes:7-r349@sha256:81fd1916a2145c26ba154b1357d1365b0a2c39afd89de3b04909b0527f0efdc0" shape="ellipse"];
  "sha256:91f518618c820aee936491f7a6ff6e341854da1d0bc8b0c50a8d2f37f59cf589" [label="/bin/sh -c install_packages bzip2-libs ca-certificates cyrus-sasl-lib freetds freetype glibc gmp gnutls keyutils-libs krb5-libs libcom_err libcurl libffi libgcc libgcrypt libgpg-error libicu libidn libjpeg-turbo libmemcached libpng libselinux libssh2 libstdc++ libtasn1 libtidy libxml2 libxslt ncurses-libs nettle nspr nss nss-softokn-freebl nss-util openldap openssl-libs p11-kit pcre postgresql-libs readline wget xz-libs zlib" shape="box"];
  "sha256:da94ec2757c4b19426fd531997d329feba4c5325aa58632291035b5e5cf4e77b" [label="docker-image://docker.io/bitnami/php-fpm:7.2.19-ol-7-r27@sha256:ae1a344f877868e31e7398121a886c39bd3bbc583fa0c591f152b7a8eec5b510" shape="ellipse"];
  "sha256:1ff697c1ec1bf9f831c0ecabad5ca4b9273b1f443afdc8a4fc3d0adcb4a3467f" [label="copy{src=/opt/bitnami/common, dest=/opt/bitnami/common}" shape="note"];
  "sha256:23aec6470173ffe4aabfb564844340a0c347ac3909d3a1ddf95865ed6e424941" [label="copy{src=/opt/bitnami/php, dest=/opt/bitnami/php}" shape="note"];
  "sha256:571422abf53bafe33ca962d79d222fff3eac1796f80fbc2dd24d3996c78c6f8c" [label="sha256:571422abf53bafe33ca962d79d222fff3eac1796f80fbc2dd24d3996c78c6f8c" shape="plaintext"];
  "sha256:4c2818372f2700ea69df01c6dd69d0e6ea63a7630f59183d1be5bdbf10a495f4" -> "sha256:91f518618c820aee936491f7a6ff6e341854da1d0bc8b0c50a8d2f37f59cf589" [label=""];
  "sha256:91f518618c820aee936491f7a6ff6e341854da1d0bc8b0c50a8d2f37f59cf589" -> "sha256:1ff697c1ec1bf9f831c0ecabad5ca4b9273b1f443afdc8a4fc3d0adcb4a3467f" [label=""];
  "sha256:da94ec2757c4b19426fd531997d329feba4c5325aa58632291035b5e5cf4e77b" -> "sha256:1ff697c1ec1bf9f831c0ecabad5ca4b9273b1f443afdc8a4fc3d0adcb4a3467f" [label=""];
  "sha256:1ff697c1ec1bf9f831c0ecabad5ca4b9273b1f443afdc8a4fc3d0adcb4a3467f" -> "sha256:23aec6470173ffe4aabfb564844340a0c347ac3909d3a1ddf95865ed6e424941" [label=""];
  "sha256:da94ec2757c4b19426fd531997d329feba4c5325aa58632291035b5e5cf4e77b" -> "sha256:23aec6470173ffe4aabfb564844340a0c347ac3909d3a1ddf95865ed6e424941" [label=""];
  "sha256:23aec6470173ffe4aabfb564844340a0c347ac3909d3a1ddf95865ed6e424941" -> "sha256:571422abf53bafe33ca962d79d222fff3eac1796f80fbc2dd24d3996c78c6f8c" [label=""];
}

