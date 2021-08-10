[app/sources/162437627.Dockerfile]
digraph {
  "sha256:b5a15add89def903ddcffa0874acfe1758621d587c10751a1522bf76bcd4e8fc" [label="local://context" shape="ellipse"];
  "sha256:3ad3d82d3692a4ac7e3e12dd6c0f570ee0fb5c08eb7fb4caa20d8aeeaddb0117" [label="docker-image://docker.io/library/node:5" shape="ellipse"];
  "sha256:d9276f7695202801c6c3880c9faedb3e5d12e8139086cc911afe4e75fdaba2e0" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:87c77bac1e2b2c633d1baeeebe9ab18a4cbb9e844bf3e4dfc071f4942afd6937" [label="copy{src=/start.sh, dest=/opt/start.sh}" shape="note"];
  "sha256:2f1259c8b9a5258d5b7a985bda4b9463e740c3ff564465d46e90747ca8d2b330" [label="/bin/sh -c chmod +x /opt/start.sh" shape="box"];
  "sha256:fb7c2801211492b8961db63311f1497acc41de0e8173d210dced0201adb707b0" [label="sha256:fb7c2801211492b8961db63311f1497acc41de0e8173d210dced0201adb707b0" shape="plaintext"];
  "sha256:3ad3d82d3692a4ac7e3e12dd6c0f570ee0fb5c08eb7fb4caa20d8aeeaddb0117" -> "sha256:d9276f7695202801c6c3880c9faedb3e5d12e8139086cc911afe4e75fdaba2e0" [label=""];
  "sha256:d9276f7695202801c6c3880c9faedb3e5d12e8139086cc911afe4e75fdaba2e0" -> "sha256:87c77bac1e2b2c633d1baeeebe9ab18a4cbb9e844bf3e4dfc071f4942afd6937" [label=""];
  "sha256:b5a15add89def903ddcffa0874acfe1758621d587c10751a1522bf76bcd4e8fc" -> "sha256:87c77bac1e2b2c633d1baeeebe9ab18a4cbb9e844bf3e4dfc071f4942afd6937" [label=""];
  "sha256:87c77bac1e2b2c633d1baeeebe9ab18a4cbb9e844bf3e4dfc071f4942afd6937" -> "sha256:2f1259c8b9a5258d5b7a985bda4b9463e740c3ff564465d46e90747ca8d2b330" [label=""];
  "sha256:2f1259c8b9a5258d5b7a985bda4b9463e740c3ff564465d46e90747ca8d2b330" -> "sha256:fb7c2801211492b8961db63311f1497acc41de0e8173d210dced0201adb707b0" [label=""];
}

