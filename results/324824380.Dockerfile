[app/sources/324824380.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:2bf713459cd933df13a0c4f62a43ac4cb37db345776afe059c016fd99711f5bb" [label="http://mirrors.tuna.tsinghua.edu.cn/apache/skywalking/6.1.0/apache-skywalking-apm-6.1.0.tar.gz" shape="ellipse"];
  "sha256:57f14e6875a9c92e724d159c14f0f0527dc26b651cea266bb98caa58143f06f4" [label="copy{src=/apache-skywalking-apm-6.1.0.tar.gz, dest=/}" shape="note"];
  "sha256:1160ebd24ce68905e8563c10277a39b0cbaf7f8c25229cd88cbdc985eb990ccd" [label="/bin/sh -c apk add --no-cache     bash" shape="box"];
  "sha256:fc7d76bc654ee18484c64d568c7378a816ef13ea4407dc8c570cfb825c644abe" [label="/bin/sh -c set -ex;     ln -sf /usr/share/zoneinfo/$TZ  /etc/localtime;     echo $TZ > /etc/timezone;     tar -zxvf /${PACKAGE_NAME}-${SKYWALKING_VERSION}.tar.gz;     rm -rf \"${PACKAGE_NAME}-${SKYWALKING_VERSION}.tar.gz\"; rm -rf \"$DIST_NAME/config\";     rm -rf \"$DIST_NAME/bin\"; rm -rf \"$DIST_NAME/oap-libs\"; rm -rf \"$DIST_NAME/agent\";" shape="box"];
  "sha256:97edeb5c240be29f399e5bc0e2368060cc21f32c4c85a1544d701fd628387b67" [label="mkdir{path=/apache-skywalking-apm-bin}" shape="note"];
  "sha256:12d8e18e9ec98d56d864c7f123b1896dcb9731781291f70d2c12c0f09450c944" [label="local://context" shape="ellipse"];
  "sha256:540905195fd2187b49d73a511109a4bb3b4d0725d3ba8f5527afd88ed901d3ad" [label="copy{src=/docker-entrypoint.sh, dest=/apache-skywalking-apm-bin/}" shape="note"];
  "sha256:0ab5ab7a3cf3701879eb07461af8928936ef9b5278ea29079e89aa44a4346f82" [label="copy{src=/logback.xml, dest=/apache-skywalking-apm-bin/webapp/}" shape="note"];
  "sha256:7da6f86b6bf7cef9239a873bdf2c73453ef551593cab0579f4979e5fba42e5f0" [label="sha256:7da6f86b6bf7cef9239a873bdf2c73453ef551593cab0579f4979e5fba42e5f0" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:57f14e6875a9c92e724d159c14f0f0527dc26b651cea266bb98caa58143f06f4" [label=""];
  "sha256:2bf713459cd933df13a0c4f62a43ac4cb37db345776afe059c016fd99711f5bb" -> "sha256:57f14e6875a9c92e724d159c14f0f0527dc26b651cea266bb98caa58143f06f4" [label=""];
  "sha256:57f14e6875a9c92e724d159c14f0f0527dc26b651cea266bb98caa58143f06f4" -> "sha256:1160ebd24ce68905e8563c10277a39b0cbaf7f8c25229cd88cbdc985eb990ccd" [label=""];
  "sha256:1160ebd24ce68905e8563c10277a39b0cbaf7f8c25229cd88cbdc985eb990ccd" -> "sha256:fc7d76bc654ee18484c64d568c7378a816ef13ea4407dc8c570cfb825c644abe" [label=""];
  "sha256:fc7d76bc654ee18484c64d568c7378a816ef13ea4407dc8c570cfb825c644abe" -> "sha256:97edeb5c240be29f399e5bc0e2368060cc21f32c4c85a1544d701fd628387b67" [label=""];
  "sha256:97edeb5c240be29f399e5bc0e2368060cc21f32c4c85a1544d701fd628387b67" -> "sha256:540905195fd2187b49d73a511109a4bb3b4d0725d3ba8f5527afd88ed901d3ad" [label=""];
  "sha256:12d8e18e9ec98d56d864c7f123b1896dcb9731781291f70d2c12c0f09450c944" -> "sha256:540905195fd2187b49d73a511109a4bb3b4d0725d3ba8f5527afd88ed901d3ad" [label=""];
  "sha256:540905195fd2187b49d73a511109a4bb3b4d0725d3ba8f5527afd88ed901d3ad" -> "sha256:0ab5ab7a3cf3701879eb07461af8928936ef9b5278ea29079e89aa44a4346f82" [label=""];
  "sha256:12d8e18e9ec98d56d864c7f123b1896dcb9731781291f70d2c12c0f09450c944" -> "sha256:0ab5ab7a3cf3701879eb07461af8928936ef9b5278ea29079e89aa44a4346f82" [label=""];
  "sha256:0ab5ab7a3cf3701879eb07461af8928936ef9b5278ea29079e89aa44a4346f82" -> "sha256:7da6f86b6bf7cef9239a873bdf2c73453ef551593cab0579f4979e5fba42e5f0" [label=""];
}

