[app/sources/432984716.Dockerfile]
digraph {
  "sha256:db5b055067dab7fbfa004bbfb84d28f10615d41689fa6fe7a1ab5698f9235340" [label="docker-image://docker.io/frolvlad/alpine-glibc:latest" shape="ellipse"];
  "sha256:2d3c0e8472443220e613a519188ebc48133403dbf5cf1ba9c8b4623c505aa81e" [label="docker-image://docker.io/oracle/graalvm-ce:1.0.0-rc15" shape="ellipse"];
  "sha256:36aceb4a786b8444ded9da45b3394599384d28e079feb160dd8d52a8bbebc3b7" [label="local://context" shape="ellipse"];
  "sha256:d1ebc2bd3d57f967adf8b7c021fa141b76e3aed3f6f8453431e702a9540d9d85" [label="copy{src=/, dest=/home/app/my-api-app}" shape="note"];
  "sha256:174b2f85450733cfcc75168805efae7991b1d8dc5e7a19021365d7c921286d1d" [label="mkdir{path=/home/app/my-api-app}" shape="note"];
  "sha256:28806f69a02e9329c437c1255cf874919a9ec9728298ff0710fc76e0af7c44c2" [label="/bin/sh -c native-image --no-server -cp build/libs/my-api-app-*.jar" shape="box"];
  "sha256:9b5aa6346edef99244cd53ef9b903162960291f5279345ca4811d6315469b8e5" [label="copy{src=/home/app/my-api-app, dest=/}" shape="note"];
  "sha256:425e9add5bcd467cfa4ff627a53fb92bae5b8e5811cb60d9f4aada3a55e7f453" [label="sha256:425e9add5bcd467cfa4ff627a53fb92bae5b8e5811cb60d9f4aada3a55e7f453" shape="plaintext"];
  "sha256:2d3c0e8472443220e613a519188ebc48133403dbf5cf1ba9c8b4623c505aa81e" -> "sha256:d1ebc2bd3d57f967adf8b7c021fa141b76e3aed3f6f8453431e702a9540d9d85" [label=""];
  "sha256:36aceb4a786b8444ded9da45b3394599384d28e079feb160dd8d52a8bbebc3b7" -> "sha256:d1ebc2bd3d57f967adf8b7c021fa141b76e3aed3f6f8453431e702a9540d9d85" [label=""];
  "sha256:d1ebc2bd3d57f967adf8b7c021fa141b76e3aed3f6f8453431e702a9540d9d85" -> "sha256:174b2f85450733cfcc75168805efae7991b1d8dc5e7a19021365d7c921286d1d" [label=""];
  "sha256:174b2f85450733cfcc75168805efae7991b1d8dc5e7a19021365d7c921286d1d" -> "sha256:28806f69a02e9329c437c1255cf874919a9ec9728298ff0710fc76e0af7c44c2" [label=""];
  "sha256:db5b055067dab7fbfa004bbfb84d28f10615d41689fa6fe7a1ab5698f9235340" -> "sha256:9b5aa6346edef99244cd53ef9b903162960291f5279345ca4811d6315469b8e5" [label=""];
  "sha256:28806f69a02e9329c437c1255cf874919a9ec9728298ff0710fc76e0af7c44c2" -> "sha256:9b5aa6346edef99244cd53ef9b903162960291f5279345ca4811d6315469b8e5" [label=""];
  "sha256:9b5aa6346edef99244cd53ef9b903162960291f5279345ca4811d6315469b8e5" -> "sha256:425e9add5bcd467cfa4ff627a53fb92bae5b8e5811cb60d9f4aada3a55e7f453" [label=""];
}

