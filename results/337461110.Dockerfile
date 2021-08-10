[app/sources/337461110.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:2668bba53f7cd440a09f3227d9c3703f6ccb354e7c450e17e931b8966a689fa2" [label="/bin/sh -c apk update &&     apk add make cmake clang python3 go valgrind cloc" shape="box"];
  "sha256:72f5e5142957c94238e4021841a3237346f3e9557a46374683de0b28707a32bf" [label="/bin/sh -c apk add g++  # TODO: remove" shape="box"];
  "sha256:85d182225321fdb4a2416e4693b546648e8caefe8a5e05ac99a65f4f58a9b0fe" [label="local://context" shape="ellipse"];
  "sha256:0924afbd32f3746a4518bf928bf455d0fcd797938b331a38f5fe85bd6c7d0a26" [label="copy{src=/, dest=/crystalnet}" shape="note"];
  "sha256:e3b31878371652bcc9dd6e476dcb69674af0264285334cb512daecabf7838d18" [label="mkdir{path=/crystalnet}" shape="note"];
  "sha256:6d547cb08f124529c5681be5bac24f72fca0b5d440224e2d7ea40893b85c3b30" [label="/bin/sh -c make install &&     make test &&     make go_example &&     make check &&     cloc src/crystalnet" shape="box"];
  "sha256:db20eac3371ca93d962d50e5303ff39237285ede95a11caebd84238f4f95726d" [label="sha256:db20eac3371ca93d962d50e5303ff39237285ede95a11caebd84238f4f95726d" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:2668bba53f7cd440a09f3227d9c3703f6ccb354e7c450e17e931b8966a689fa2" [label=""];
  "sha256:2668bba53f7cd440a09f3227d9c3703f6ccb354e7c450e17e931b8966a689fa2" -> "sha256:72f5e5142957c94238e4021841a3237346f3e9557a46374683de0b28707a32bf" [label=""];
  "sha256:72f5e5142957c94238e4021841a3237346f3e9557a46374683de0b28707a32bf" -> "sha256:0924afbd32f3746a4518bf928bf455d0fcd797938b331a38f5fe85bd6c7d0a26" [label=""];
  "sha256:85d182225321fdb4a2416e4693b546648e8caefe8a5e05ac99a65f4f58a9b0fe" -> "sha256:0924afbd32f3746a4518bf928bf455d0fcd797938b331a38f5fe85bd6c7d0a26" [label=""];
  "sha256:0924afbd32f3746a4518bf928bf455d0fcd797938b331a38f5fe85bd6c7d0a26" -> "sha256:e3b31878371652bcc9dd6e476dcb69674af0264285334cb512daecabf7838d18" [label=""];
  "sha256:e3b31878371652bcc9dd6e476dcb69674af0264285334cb512daecabf7838d18" -> "sha256:6d547cb08f124529c5681be5bac24f72fca0b5d440224e2d7ea40893b85c3b30" [label=""];
  "sha256:6d547cb08f124529c5681be5bac24f72fca0b5d440224e2d7ea40893b85c3b30" -> "sha256:db20eac3371ca93d962d50e5303ff39237285ede95a11caebd84238f4f95726d" [label=""];
}

