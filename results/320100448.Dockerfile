[app/sources/320100448.Dockerfile]
digraph {
  "sha256:f9f3ff40ac3faeef5a6b44cc6617c22bb033d00673e93c1dc89cc27e303e732f" [label="docker-image://docker.io/library/python:2-alpine3.6" shape="ellipse"];
  "sha256:f3efc6e8c4c7177475df05bea51a4f20de75718620c95cafbd9461f6d1283a4f" [label="/bin/sh -c echo -e '@edgunity http://nl.alpinelinux.org/alpine/edge/community\\n@edge http://nl.alpinelinux.org/alpine/edge/main\\n@testing http://nl.alpinelinux.org/alpine/edge/testing\\n@community http://dl-cdn.alpinelinux.org/alpine/edge/community'  >> /etc/apk/repositories" shape="box"];
  "sha256:1b64b713807ad865b477739d2b11af279a32780d50107dfefce231dedf0884ed" [label="/bin/sh -c apk update && apk upgrade" shape="box"];
  "sha256:0702d3d3127c696f85c82d480372b023bb75ed9e46ae05e7f9144a72f3d0b23b" [label="/bin/sh -c apk add --update --no-cache       build-base       openblas-dev       unzip       wget       cmake       libtbb@testing        libtbb-dev@testing         libjpeg        libjpeg-turbo-dev       libpng-dev       jasper-dev       tiff-dev       libwebp-dev       clang-dev       linux-headers       && pip install numpy" shape="box"];
  "sha256:0735028c26f623a649cedc6526809c3cd9c17bc33ece31f12f92fea159ae00e7" [label="/bin/sh -c mkdir /opt && cd /opt &&   wget https://github.com/opencv/opencv/archive/3.1.0.zip &&   unzip 3.1.0.zip &&   cd /opt/opencv-3.1.0 &&   mkdir build &&   cd build &&   cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D WITH_FFMPEG=NO   -D WITH_IPP=NO -D WITH_OPENEXR=NO .. &&   make VERBOSE=1 &&   make &&   make install" shape="box"];
  "sha256:fd36a516c9648a77c06cddf881f9398c6372752590574cf42969a6b9da3f7279" [label="/bin/sh -c rm -rf /var/cache/apk/*" shape="box"];
  "sha256:1a032918619aa81895d062d92d6380f1c940d7b8fd5f51750f8515addc0c0859" [label="sha256:1a032918619aa81895d062d92d6380f1c940d7b8fd5f51750f8515addc0c0859" shape="plaintext"];
  "sha256:f9f3ff40ac3faeef5a6b44cc6617c22bb033d00673e93c1dc89cc27e303e732f" -> "sha256:f3efc6e8c4c7177475df05bea51a4f20de75718620c95cafbd9461f6d1283a4f" [label=""];
  "sha256:f3efc6e8c4c7177475df05bea51a4f20de75718620c95cafbd9461f6d1283a4f" -> "sha256:1b64b713807ad865b477739d2b11af279a32780d50107dfefce231dedf0884ed" [label=""];
  "sha256:1b64b713807ad865b477739d2b11af279a32780d50107dfefce231dedf0884ed" -> "sha256:0702d3d3127c696f85c82d480372b023bb75ed9e46ae05e7f9144a72f3d0b23b" [label=""];
  "sha256:0702d3d3127c696f85c82d480372b023bb75ed9e46ae05e7f9144a72f3d0b23b" -> "sha256:0735028c26f623a649cedc6526809c3cd9c17bc33ece31f12f92fea159ae00e7" [label=""];
  "sha256:0735028c26f623a649cedc6526809c3cd9c17bc33ece31f12f92fea159ae00e7" -> "sha256:fd36a516c9648a77c06cddf881f9398c6372752590574cf42969a6b9da3f7279" [label=""];
  "sha256:fd36a516c9648a77c06cddf881f9398c6372752590574cf42969a6b9da3f7279" -> "sha256:1a032918619aa81895d062d92d6380f1c940d7b8fd5f51750f8515addc0c0859" [label=""];
}

