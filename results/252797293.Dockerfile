[app/sources/252797293.Dockerfile]
digraph {
  "sha256:2aae676c3e3040130189933e241ab5d2c214c4906dc00093bedb5d1b47cc3dd0" [label="docker-image://docker.io/clover/common:latest" shape="ellipse"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:7c7a82ec279bd7043bfbd606ab153ec44de47ba82bf69f0369b6dcff68613856" [label="/bin/sh -c export DEBIAN_FRONTEND=noninteractive && apt-get update && apt-get install -y software-properties-common apt-utils" shape="box"];
  "sha256:ebaa84c19ff6a7507a38fd8f7dff809b588a73b8be5bc1fa496f61f1a6926605" [label="/bin/sh -c mkdir -p /build /rootfs" shape="box"];
  "sha256:211d4443d4ebca548f3b9824d83f2f55305a891dbdcc7e16df191fd8d5a67000" [label="mkdir{path=/build}" shape="note"];
  "sha256:f2304ad429b0db07cf595d44280fa0508b325ae8c78dae5579a432db34b92b2b" [label="/bin/sh -c apt-get download liblzma5 libmpdec2 libexpat1 libffi6 libsqlite3-0 python3 python3.6 python3-minimal python3.6-minimal libpython3.6-minimal libpython3-stdlib libpython3.6-stdlib" shape="box"];
  "sha256:80640ec6fab27b8691c9aca8101a37d0aa3c3efe960680e1fb8feac2f4b677a9" [label="/bin/sh -c find *.deb | xargs -I % dpkg-deb -x % /rootfs" shape="box"];
  "sha256:73963536b4c857ef875ea4e777930b4e46cdb6e8805db5111a514137bbd8a92d" [label="mkdir{path=/rootfs}" shape="note"];
  "sha256:97b6a7ca354cf6f5d82c61d190e5d7d721c3fbf9cf672c007441bd4c2b1441b1" [label="/bin/sh -c rm -rf etc usr/lib/valgrind usr/lib/python3/dist-packages/* usr/share/doc usr/share/man usr/share/applications usr/share/apps usr/share/binfmts usr/share/debhelper usr/share/lintian usr/share/perl5 usr/share/pixmaps usr/bin/python3.6m && ln -s python3.6 usr/bin/python3.6m" shape="box"];
  "sha256:a8dc7eb89b76cd642b1a5fc9beb592ef0d167dc565050aebef064cdefd3530a6" [label="copy{src=/rootfs, dest=/}" shape="note"];
  "sha256:1b40182aa669a397eea253be308fa655c74809045d820a64914ff1a7e63e88d4" [label="sha256:1b40182aa669a397eea253be308fa655c74809045d820a64914ff1a7e63e88d4" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:7c7a82ec279bd7043bfbd606ab153ec44de47ba82bf69f0369b6dcff68613856" [label=""];
  "sha256:7c7a82ec279bd7043bfbd606ab153ec44de47ba82bf69f0369b6dcff68613856" -> "sha256:ebaa84c19ff6a7507a38fd8f7dff809b588a73b8be5bc1fa496f61f1a6926605" [label=""];
  "sha256:ebaa84c19ff6a7507a38fd8f7dff809b588a73b8be5bc1fa496f61f1a6926605" -> "sha256:211d4443d4ebca548f3b9824d83f2f55305a891dbdcc7e16df191fd8d5a67000" [label=""];
  "sha256:211d4443d4ebca548f3b9824d83f2f55305a891dbdcc7e16df191fd8d5a67000" -> "sha256:f2304ad429b0db07cf595d44280fa0508b325ae8c78dae5579a432db34b92b2b" [label=""];
  "sha256:f2304ad429b0db07cf595d44280fa0508b325ae8c78dae5579a432db34b92b2b" -> "sha256:80640ec6fab27b8691c9aca8101a37d0aa3c3efe960680e1fb8feac2f4b677a9" [label=""];
  "sha256:80640ec6fab27b8691c9aca8101a37d0aa3c3efe960680e1fb8feac2f4b677a9" -> "sha256:73963536b4c857ef875ea4e777930b4e46cdb6e8805db5111a514137bbd8a92d" [label=""];
  "sha256:73963536b4c857ef875ea4e777930b4e46cdb6e8805db5111a514137bbd8a92d" -> "sha256:97b6a7ca354cf6f5d82c61d190e5d7d721c3fbf9cf672c007441bd4c2b1441b1" [label=""];
  "sha256:2aae676c3e3040130189933e241ab5d2c214c4906dc00093bedb5d1b47cc3dd0" -> "sha256:a8dc7eb89b76cd642b1a5fc9beb592ef0d167dc565050aebef064cdefd3530a6" [label=""];
  "sha256:97b6a7ca354cf6f5d82c61d190e5d7d721c3fbf9cf672c007441bd4c2b1441b1" -> "sha256:a8dc7eb89b76cd642b1a5fc9beb592ef0d167dc565050aebef064cdefd3530a6" [label=""];
  "sha256:a8dc7eb89b76cd642b1a5fc9beb592ef0d167dc565050aebef064cdefd3530a6" -> "sha256:1b40182aa669a397eea253be308fa655c74809045d820a64914ff1a7e63e88d4" [label=""];
}

