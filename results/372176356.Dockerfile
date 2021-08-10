[app/sources/372176356.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:17b7556c0e3f5c9734c289b2ca283d371aa0b7f031c3075db037a8921e6046ac" [label="/bin/sh -c yum -y update  && yum -y install epel-release  && yum -y install         autoconf         automake         bison         expect         flex         gcc         git         hiredis-devel         java-devel         java-1.7.0-openjdk-devel         libcurl-devel         libgcrypt-devel         libtool         libtool-ltdl-devel         make         mysql-devel         openssl-devel         perl-devel         perl-ExtUtils-Embed         pkgconfig         postgresql-devel         python-devel         rpm-build         rpm-sign         varnish-libs-devel         which         yajl-devel  && yum -y clean all" shape="box"];
  "sha256:21f79836e73e40ea763169c5077c222da7279939f32f00947103824976ce043f" [label="sha256:21f79836e73e40ea763169c5077c222da7279939f32f00947103824976ce043f" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:17b7556c0e3f5c9734c289b2ca283d371aa0b7f031c3075db037a8921e6046ac" [label=""];
  "sha256:17b7556c0e3f5c9734c289b2ca283d371aa0b7f031c3075db037a8921e6046ac" -> "sha256:21f79836e73e40ea763169c5077c222da7279939f32f00947103824976ce043f" [label=""];
}

