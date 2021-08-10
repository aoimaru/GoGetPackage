[app/sources/188556952.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:6fd8ca4342e2d4e7c28c19959ec9d6b8c38e4a89334cfeabae6d7c811274ed3e" [label="local://context" shape="ellipse"];
  "sha256:d6f37adda9b28eef5e11e03f58162201be8b369ed252fe80e1241f2aa9ef32fa" [label="copy{src=/*.sh, dest=/build/}" shape="note"];
  "sha256:bfccf397aeecc73b8ecb2bd625f734325af18df2d73d62518571260e523ea51c" [label="/bin/sh -c /build/prepare-nghttp2.sh &&     cd /build/nghttp2 && make install &&     cd / && /build/cleanup-nghttp2.sh && rm -rf /build" shape="box"];
  "sha256:602bc7ccf92f0a4df414fb6516e62504aef3f23eea267dc3d392f381739aa987" [label="copy{src=/nghttpx.conf, dest=/etc/nghttpx.conf}" shape="note"];
  "sha256:2abc9f5b0c98c3194d85fb19d3a29dd33872ee64c249bcff4624aa7359c75c7d" [label="copy{src=/start-nghttpx, dest=/usr/bin/start-nghttpx}" shape="note"];
  "sha256:bb29f42520bc431a174aabbe58d4f9920dccaf7ca54cea4da69f64d9eaeab8e8" [label="sha256:bb29f42520bc431a174aabbe58d4f9920dccaf7ca54cea4da69f64d9eaeab8e8" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:d6f37adda9b28eef5e11e03f58162201be8b369ed252fe80e1241f2aa9ef32fa" [label=""];
  "sha256:6fd8ca4342e2d4e7c28c19959ec9d6b8c38e4a89334cfeabae6d7c811274ed3e" -> "sha256:d6f37adda9b28eef5e11e03f58162201be8b369ed252fe80e1241f2aa9ef32fa" [label=""];
  "sha256:d6f37adda9b28eef5e11e03f58162201be8b369ed252fe80e1241f2aa9ef32fa" -> "sha256:bfccf397aeecc73b8ecb2bd625f734325af18df2d73d62518571260e523ea51c" [label=""];
  "sha256:bfccf397aeecc73b8ecb2bd625f734325af18df2d73d62518571260e523ea51c" -> "sha256:602bc7ccf92f0a4df414fb6516e62504aef3f23eea267dc3d392f381739aa987" [label=""];
  "sha256:6fd8ca4342e2d4e7c28c19959ec9d6b8c38e4a89334cfeabae6d7c811274ed3e" -> "sha256:602bc7ccf92f0a4df414fb6516e62504aef3f23eea267dc3d392f381739aa987" [label=""];
  "sha256:602bc7ccf92f0a4df414fb6516e62504aef3f23eea267dc3d392f381739aa987" -> "sha256:2abc9f5b0c98c3194d85fb19d3a29dd33872ee64c249bcff4624aa7359c75c7d" [label=""];
  "sha256:6fd8ca4342e2d4e7c28c19959ec9d6b8c38e4a89334cfeabae6d7c811274ed3e" -> "sha256:2abc9f5b0c98c3194d85fb19d3a29dd33872ee64c249bcff4624aa7359c75c7d" [label=""];
  "sha256:2abc9f5b0c98c3194d85fb19d3a29dd33872ee64c249bcff4624aa7359c75c7d" -> "sha256:bb29f42520bc431a174aabbe58d4f9920dccaf7ca54cea4da69f64d9eaeab8e8" [label=""];
}

