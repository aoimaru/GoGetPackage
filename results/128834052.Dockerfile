[app/sources/128834052.Dockerfile]
digraph {
  "sha256:7bc313a22194567d084a04b805137a1a4e2783c4e523be4a8e021e76097ba7ca" [label="docker-image://nexus.lan.tribe29.com:5010/sles-12sp2-base:latest" shape="ellipse"];
  "sha256:fa3abef8aaee0edb65115d0fa6753affb4da7685281ba32c8388621a86cbcee5" [label="/bin/bash -c zypper addrepo -G http://nexus:8081/repository/sles12sp2 sles12sp2     && zypper ref -s     && zypper -n in -y --force-resolution     apache2-devel     bind-utils     boost-devel     curl     flex     freeradius-client-devel     freetype2-devel     gcc     gcc-c++     gd-devel     git     glib2-devel     groff     krb5-devel     libXpm-devel     libbz2-devel     libcurl-devel     libevent-devel     libexpat-devel     libffi-devel     libgnutls-devel     libgsf-devel     libjpeg62-devel     libltdl7     libmysqlclient-devel     libopenssl-devel     libpcap-devel     libpng16-devel     libtiff-devel     libtool     libuuid-devel     libvpx-devel     libxml2-devel     make     mysql     openldap2-devel     openssh     pango-devel     patch     postgresql-devel     readline-devel     rpcbind     rpm-build     rpm-devel     rrdtool-devel     samba-client     sqlite3-devel     tar     texinfo     tk-devel     unzip     wget     which     && zypper clean -a" shape="box"];
  "sha256:71a7b9c35ed59d0da7ebd7f1d859a6b94349974d60d01ed41ed9102d8397db4a" [label="local://context" shape="ellipse"];
  "sha256:57f8eb9ee7186f029e4dc7918259997b947d1881e1829a1638a4532abf9677ac" [label="copy{src=/bw-build-gnu-toolchain.sh, dest=/usr/sbin}" shape="note"];
  "sha256:ef2a424f086aee1742acfdc5fb495121a026291b415b57d4205a22c0597e2aa8" [label="/bin/bash -c bw-build-gnu-toolchain.sh -b" shape="box"];
  "sha256:2a283975ce0d89e3c53fa0ba70c2aa8ef7dc7746c5ec8a043397b18c1e9b3383" [label="/bin/bash -c rm /usr/bin/gcc /usr/bin/g++     && ln -s /opt/gcc-8.2.0/bin/gcc-8 /usr/bin/gcc     && ln -s /opt/gcc-8.2.0/bin/g++-8 /usr/bin/g++" shape="box"];
  "sha256:973b2a93040984f02fe4923b4a66e6024bc2a8b0d46d78ab568de1c8cf61784c" [label="sha256:973b2a93040984f02fe4923b4a66e6024bc2a8b0d46d78ab568de1c8cf61784c" shape="plaintext"];
  "sha256:7bc313a22194567d084a04b805137a1a4e2783c4e523be4a8e021e76097ba7ca" -> "sha256:fa3abef8aaee0edb65115d0fa6753affb4da7685281ba32c8388621a86cbcee5" [label=""];
  "sha256:fa3abef8aaee0edb65115d0fa6753affb4da7685281ba32c8388621a86cbcee5" -> "sha256:57f8eb9ee7186f029e4dc7918259997b947d1881e1829a1638a4532abf9677ac" [label=""];
  "sha256:71a7b9c35ed59d0da7ebd7f1d859a6b94349974d60d01ed41ed9102d8397db4a" -> "sha256:57f8eb9ee7186f029e4dc7918259997b947d1881e1829a1638a4532abf9677ac" [label=""];
  "sha256:57f8eb9ee7186f029e4dc7918259997b947d1881e1829a1638a4532abf9677ac" -> "sha256:ef2a424f086aee1742acfdc5fb495121a026291b415b57d4205a22c0597e2aa8" [label=""];
  "sha256:ef2a424f086aee1742acfdc5fb495121a026291b415b57d4205a22c0597e2aa8" -> "sha256:2a283975ce0d89e3c53fa0ba70c2aa8ef7dc7746c5ec8a043397b18c1e9b3383" [label=""];
  "sha256:2a283975ce0d89e3c53fa0ba70c2aa8ef7dc7746c5ec8a043397b18c1e9b3383" -> "sha256:973b2a93040984f02fe4923b4a66e6024bc2a8b0d46d78ab568de1c8cf61784c" [label=""];
}

