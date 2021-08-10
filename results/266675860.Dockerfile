[app/sources/266675860.Dockerfile]
digraph {
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" [label="docker-image://docker.io/library/centos:centos7" shape="ellipse"];
  "sha256:4d1604c074e2d94fe241ecf867c487eaef70e1c85bbd877f55ae6fb64a100ff0" [label="/bin/sh -c yum -y install https://yum.postgresql.org/9.4/redhat/rhel-7.3-x86_64/pgdg-centos94-9.4-3.noarch.rpm &&     yum -y update &&     yum -y install epel-release &&     yum -y update &&     yum -y install boost-devel                    cmake                    curl-devel                    expat-devel                    fftw-devel                    gcc                    gcc-c++                    gdal-devel                    geos-devel                    gsl-devel                    libgeotiff-devel                    libjpeg-turbo-devel                    libpng-devel                    libsvm-devel                    libtiff-devel                    make                    muParser-devel                    opencv-devel                    openjpeg2-devel                    openjpeg2-tools                    pcre-devel                    proj-devel                    proj-epsg                    python-devel                    qt-devel                    qt-x11                    qt5-qtbase-devel                    qt5-qtbase-postgresql                    rpm-build                    ruby-devel                    sqlite-devel                    sudo                    swig                    tinyxml-devel &&     gem install fpm" shape="box"];
  "sha256:97c62bda17c924105dc1e907eadd134fefcd0d68232415d66c4165b4e9922a90" [label="/bin/sh -c ln -s /usr/bin/opj2_decompress /usr/bin/opj_decompress &&     ln -s /usr/bin/opj2_compress /usr/bin/opj_compress &&     ln -s /usr/bin/opj2_dump /usr/bin/opj_dump" shape="box"];
  "sha256:7d2959bdbdc625243096529ecb0fa023417c7ce4d8f572411e685c113b90d4bc" [label="/bin/sh -c groupadd -g $gid $group &&     useradd -u $uid -g $gid -G wheel $user &&     echo \"%wheel        ALL=(ALL)       NOPASSWD: ALL\" > /etc/sudoers.d/wheel" shape="box"];
  "sha256:12fcb26dc7b2593f5b271a1a0454fa2deed804afc651dc2f207d7cf44d86a005" [label="local://context" shape="ellipse"];
  "sha256:bd31e98c14775cee49e9be5896c306323835ecd0fe45cfeb2d9b0e81f7c1db4f" [label="copy{src=/entry.sh, dest=/}" shape="note"];
  "sha256:5cef9884003d112f5c153342eede6cdc255b395e1243bb9073f5e749233910c2" [label="sha256:5cef9884003d112f5c153342eede6cdc255b395e1243bb9073f5e749233910c2" shape="plaintext"];
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" -> "sha256:4d1604c074e2d94fe241ecf867c487eaef70e1c85bbd877f55ae6fb64a100ff0" [label=""];
  "sha256:4d1604c074e2d94fe241ecf867c487eaef70e1c85bbd877f55ae6fb64a100ff0" -> "sha256:97c62bda17c924105dc1e907eadd134fefcd0d68232415d66c4165b4e9922a90" [label=""];
  "sha256:97c62bda17c924105dc1e907eadd134fefcd0d68232415d66c4165b4e9922a90" -> "sha256:7d2959bdbdc625243096529ecb0fa023417c7ce4d8f572411e685c113b90d4bc" [label=""];
  "sha256:7d2959bdbdc625243096529ecb0fa023417c7ce4d8f572411e685c113b90d4bc" -> "sha256:bd31e98c14775cee49e9be5896c306323835ecd0fe45cfeb2d9b0e81f7c1db4f" [label=""];
  "sha256:12fcb26dc7b2593f5b271a1a0454fa2deed804afc651dc2f207d7cf44d86a005" -> "sha256:bd31e98c14775cee49e9be5896c306323835ecd0fe45cfeb2d9b0e81f7c1db4f" [label=""];
  "sha256:bd31e98c14775cee49e9be5896c306323835ecd0fe45cfeb2d9b0e81f7c1db4f" -> "sha256:5cef9884003d112f5c153342eede6cdc255b395e1243bb9073f5e749233910c2" [label=""];
}
