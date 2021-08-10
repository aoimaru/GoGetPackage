[app/sources/252779143.Dockerfile]
digraph {
  "sha256:3b2f6affa8503d93b3e68eb2a1cb7bdf70936cc10d24c9886d46fbd958029939" [label="local://context" shape="ellipse"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:daf780b7a9a2a8d9a12864c8ef8dc500dbfd6cc8a24a73845d6e92c29850827b" [label="copy{src=/entrypoint.sh, dest=/}" shape="note"];
  "sha256:fd34b4ce4bd411fa6bf6556d60a4a3bde8559680c242c9f0a176b5c4c7ae1d5e" [label="/bin/sh -c apk add --no-cache apache2-utils" shape="box"];
  "sha256:29e5fed5700a9fd0f06ce3d8aa17c7f0db75a6dd4826d73164809affdf571df9" [label="sha256:29e5fed5700a9fd0f06ce3d8aa17c7f0db75a6dd4826d73164809affdf571df9" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:daf780b7a9a2a8d9a12864c8ef8dc500dbfd6cc8a24a73845d6e92c29850827b" [label=""];
  "sha256:3b2f6affa8503d93b3e68eb2a1cb7bdf70936cc10d24c9886d46fbd958029939" -> "sha256:daf780b7a9a2a8d9a12864c8ef8dc500dbfd6cc8a24a73845d6e92c29850827b" [label=""];
  "sha256:daf780b7a9a2a8d9a12864c8ef8dc500dbfd6cc8a24a73845d6e92c29850827b" -> "sha256:fd34b4ce4bd411fa6bf6556d60a4a3bde8559680c242c9f0a176b5c4c7ae1d5e" [label=""];
  "sha256:fd34b4ce4bd411fa6bf6556d60a4a3bde8559680c242c9f0a176b5c4c7ae1d5e" -> "sha256:29e5fed5700a9fd0f06ce3d8aa17c7f0db75a6dd4826d73164809affdf571df9" [label=""];
}

