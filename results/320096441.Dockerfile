[app/sources/320096441.Dockerfile]
digraph {
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:3d3cbedf779d6935d4f627d99cd2f969d85cb4f24bff5fb49063c4bc55dfe7e9" [label="/bin/sh -c echo -e '@edgunity http://nl.alpinelinux.org/alpine/edge/community\\n@edge http://nl.alpinelinux.org/alpine/edge/main\\n@testing http://nl.alpinelinux.org/alpine/edge/testing\\n@community http://dl-cdn.alpinelinux.org/alpine/edge/community'  >> /etc/apk/repositories" shape="box"];
  "sha256:3f5044bf3ed41c9874be199f0eeb2c97a4e46233777ad1be67b8934ce2a12f13" [label="/bin/sh -c apk update && apk upgrade" shape="box"];
  "sha256:111468d31d3183df93c469b4beec4cda453869e68997b6d78f6592cf72e5beeb" [label="/bin/sh -c apk add --update --no-cache build-base openblas-dev       unzip wget cmake libtbb@testing  libtbb-dev@testing         libjpeg  libjpeg-turbo-dev libpng-dev       jasper-dev tiff-dev libwebp-dev clang-dev linux-headers       ffmpeg ffmpeg-dev bash git" shape="box"];
  "sha256:873c120ba120a108f15eb8a4a46f8a1c0f1ae232157f6e77ae35777070c88402" [label="/bin/sh -c mkdir /tmp/opencv &&   cd /tmp/opencv &&   wget -O opencv.zip https://github.com/opencv/opencv/archive/3.4.1.zip &&   unzip opencv.zip &&   wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/3.4.1.zip &&   unzip opencv_contrib.zip" shape="box"];
  "sha256:031c348019789740ec395da0526d0e81359e9b41162c791c8d129a90bd3052b6" [label="/bin/sh -c mkdir -p /tmp/opencv/opencv-3.4.1/build" shape="box"];
  "sha256:a6c6cb8f2365a9c2f86c9c8ca5fa9ffc7bee5fbe1efb3bfab8953a33f1e37cd5" [label="mkdir{path=/tmp/opencv/opencv-3.4.1/build}" shape="note"];
  "sha256:02e52015c16f674cf4af5221ac6205485d5f18193e153d5a8f48c78fcc14d261" [label="/bin/sh -c cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D OPENCV_EXTRA_MODULES_PATH=/tmp/opencv/opencv_contrib-3.4.1/modules -D BUILD_DOCS=OFF BUILD_EXAMPLES=OFF -D BUILD_TESTS=OFF -D BUILD_PERF_TESTS=OFF -D BUILD_opencv_java=OFF -D BUILD_opencv_python=OFF -D WITH_FFMPEG=ON -D BUILD_opencv_python2=OFF -D BUILD_opencv_python3=OFF .." shape="box"];
  "sha256:dc18bc5a77a22c6de57a9a5eb174bee1bbb7e7433f0734bf460cc8fdc1da480d" [label="/bin/sh -c make -j4" shape="box"];
  "sha256:67c39a00309fbe086127bfc9b5d7d64be4062aa408ce5242f8aa9032778201a3" [label="/bin/sh -c make install" shape="box"];
  "sha256:2e0cd8681311c687a667679e0389146deb49669bab5e641b8af6b9732104e5cf" [label="/bin/sh -c ldconfig ." shape="box"];
  "sha256:fd2472f23b98b04aa7203d382867737cd78104c340bbad097b6cea385fed36c0" [label="mkdir{path=/tmp/opencv/opencv-3.4.1/build/~}" shape="note"];
  "sha256:7d6ffbd0f9c10a31111ea346e4339e917cd958f030c42b385e57a08ac8c10733" [label="/bin/sh -c rm -rf /tmp/opencv" shape="box"];
  "sha256:f48e9de73f8186aee220bcfc9f22e31794f9d3e43e62a1ba9555d9397ba71ae3" [label="sha256:f48e9de73f8186aee220bcfc9f22e31794f9d3e43e62a1ba9555d9397ba71ae3" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:3d3cbedf779d6935d4f627d99cd2f969d85cb4f24bff5fb49063c4bc55dfe7e9" [label=""];
  "sha256:3d3cbedf779d6935d4f627d99cd2f969d85cb4f24bff5fb49063c4bc55dfe7e9" -> "sha256:3f5044bf3ed41c9874be199f0eeb2c97a4e46233777ad1be67b8934ce2a12f13" [label=""];
  "sha256:3f5044bf3ed41c9874be199f0eeb2c97a4e46233777ad1be67b8934ce2a12f13" -> "sha256:111468d31d3183df93c469b4beec4cda453869e68997b6d78f6592cf72e5beeb" [label=""];
  "sha256:111468d31d3183df93c469b4beec4cda453869e68997b6d78f6592cf72e5beeb" -> "sha256:873c120ba120a108f15eb8a4a46f8a1c0f1ae232157f6e77ae35777070c88402" [label=""];
  "sha256:873c120ba120a108f15eb8a4a46f8a1c0f1ae232157f6e77ae35777070c88402" -> "sha256:031c348019789740ec395da0526d0e81359e9b41162c791c8d129a90bd3052b6" [label=""];
  "sha256:031c348019789740ec395da0526d0e81359e9b41162c791c8d129a90bd3052b6" -> "sha256:a6c6cb8f2365a9c2f86c9c8ca5fa9ffc7bee5fbe1efb3bfab8953a33f1e37cd5" [label=""];
  "sha256:a6c6cb8f2365a9c2f86c9c8ca5fa9ffc7bee5fbe1efb3bfab8953a33f1e37cd5" -> "sha256:02e52015c16f674cf4af5221ac6205485d5f18193e153d5a8f48c78fcc14d261" [label=""];
  "sha256:02e52015c16f674cf4af5221ac6205485d5f18193e153d5a8f48c78fcc14d261" -> "sha256:dc18bc5a77a22c6de57a9a5eb174bee1bbb7e7433f0734bf460cc8fdc1da480d" [label=""];
  "sha256:dc18bc5a77a22c6de57a9a5eb174bee1bbb7e7433f0734bf460cc8fdc1da480d" -> "sha256:67c39a00309fbe086127bfc9b5d7d64be4062aa408ce5242f8aa9032778201a3" [label=""];
  "sha256:67c39a00309fbe086127bfc9b5d7d64be4062aa408ce5242f8aa9032778201a3" -> "sha256:2e0cd8681311c687a667679e0389146deb49669bab5e641b8af6b9732104e5cf" [label=""];
  "sha256:2e0cd8681311c687a667679e0389146deb49669bab5e641b8af6b9732104e5cf" -> "sha256:fd2472f23b98b04aa7203d382867737cd78104c340bbad097b6cea385fed36c0" [label=""];
  "sha256:fd2472f23b98b04aa7203d382867737cd78104c340bbad097b6cea385fed36c0" -> "sha256:7d6ffbd0f9c10a31111ea346e4339e917cd958f030c42b385e57a08ac8c10733" [label=""];
  "sha256:7d6ffbd0f9c10a31111ea346e4339e917cd958f030c42b385e57a08ac8c10733" -> "sha256:f48e9de73f8186aee220bcfc9f22e31794f9d3e43e62a1ba9555d9397ba71ae3" [label=""];
}

