[app/sources/311916154.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:a8afffbc1e5563c979c4754c3380e342fab800a227eb5d2aa8ff04a7af21999f" [label="/bin/sh -c yum -y install   deltarpm   epel-release   && yum -y install   which   wget   munge   munge-libs   munge-devel   rpm-build   gcc   openssl   openssl-devel   libssh2-devel   pam-devel   numactl   numactl-devel   hwloc   hwloc-devel   lua   lua-devel   readline-devel   rrdtool-devel   ncurses-devel   gtk2-devel   man2html   libibmad   libibumad   perl-Switch   perl-ExtUtils-MakeMaker   mariadb-server   mariadb-devel   && yum -y group install \"Development Tools\"" shape="box"];
  "sha256:f6d5a30aa489f3bcc6b6142fc844fd1765fbc7511fa45dbb375f6d7be6aa9e27" [label="local://context" shape="ellipse"];
  "sha256:7bf3521f54172e81e69b33ea8e499eddaeeac6febd90e3433416fe5fc6004f14" [label="copy{src=/docker-entrypoint.sh, dest=/docker-entrypoint.sh}" shape="note"];
  "sha256:9709967a27c010844fbcc7f1ab7116b1d4ff26158b755af7300c262e9ffcbbe9" [label="sha256:9709967a27c010844fbcc7f1ab7116b1d4ff26158b755af7300c262e9ffcbbe9" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:a8afffbc1e5563c979c4754c3380e342fab800a227eb5d2aa8ff04a7af21999f" [label=""];
  "sha256:a8afffbc1e5563c979c4754c3380e342fab800a227eb5d2aa8ff04a7af21999f" -> "sha256:7bf3521f54172e81e69b33ea8e499eddaeeac6febd90e3433416fe5fc6004f14" [label=""];
  "sha256:f6d5a30aa489f3bcc6b6142fc844fd1765fbc7511fa45dbb375f6d7be6aa9e27" -> "sha256:7bf3521f54172e81e69b33ea8e499eddaeeac6febd90e3433416fe5fc6004f14" [label=""];
  "sha256:7bf3521f54172e81e69b33ea8e499eddaeeac6febd90e3433416fe5fc6004f14" -> "sha256:9709967a27c010844fbcc7f1ab7116b1d4ff26158b755af7300c262e9ffcbbe9" [label=""];
}

