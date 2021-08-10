[app/sources/390287083.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:675b6286177c61ea072a9ec08f77fbcb5f3f295201046acdf1c010747e54c911" [label="/bin/sh -c apt-get update &&     apt-get install -y memcached nano-tiny nodejs nodejs-legacy npm sqlite3 supervisor" shape="box"];
  "sha256:6359abc77ebb9044b72d8e65d28134c74e3c0adb5fa71b1ed47076cdd4024328" [label="/bin/sh -c apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:7d391e3f7110e88c60ec1d430669b310a66601def4a6d06686c7ad335bd28967" [label="/bin/sh -c mkdir /opt/rendezvous" shape="box"];
  "sha256:ca2ca2ad70bf3d8b3bafa822fa4cce72472b992af575e45e608682db9fb8cf4b" [label="local://context" shape="ellipse"];
  "sha256:d96398dd3b654fee7f9a13030837c58227d264735483b37987e7438d5ec810c4" [label="copy{src=/supervisord.conf, dest=/etc/supervisor/supervisord.conf}" shape="note"];
  "sha256:f622221eab73ee7c90b2d9b82e344e2625491909ac2c244f0323aca5dbf40947" [label="copy{src=/rendezvous.js, dest=/opt/rendezvous/rendezvous.js}" shape="note"];
  "sha256:62083383e7fedde4d8c6199fc95847631f62c6e064e749cbf35efe54d71b9468" [label="copy{src=/logworker.js, dest=/opt/rendezvous/logworker.js}" shape="note"];
  "sha256:b174906a64d6d3601927ddbe90ebb6d44e561278a5ac7c992a70a9dd58a0fd1c" [label="copy{src=/package.json, dest=/opt/rendezvous/package.json}" shape="note"];
  "sha256:56a54bf0c1dbc12b3cd39b75750fb7d47c37e65f2e6d7861d1527860882ca06e" [label="/bin/sh -c (cd /opt/rendezvous;npm install .)" shape="box"];
  "sha256:bf725a75ef5c1c260082813412960688671f4f9d59ba71ee9392e1792e287801" [label="sha256:bf725a75ef5c1c260082813412960688671f4f9d59ba71ee9392e1792e287801" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:675b6286177c61ea072a9ec08f77fbcb5f3f295201046acdf1c010747e54c911" [label=""];
  "sha256:675b6286177c61ea072a9ec08f77fbcb5f3f295201046acdf1c010747e54c911" -> "sha256:6359abc77ebb9044b72d8e65d28134c74e3c0adb5fa71b1ed47076cdd4024328" [label=""];
  "sha256:6359abc77ebb9044b72d8e65d28134c74e3c0adb5fa71b1ed47076cdd4024328" -> "sha256:7d391e3f7110e88c60ec1d430669b310a66601def4a6d06686c7ad335bd28967" [label=""];
  "sha256:7d391e3f7110e88c60ec1d430669b310a66601def4a6d06686c7ad335bd28967" -> "sha256:d96398dd3b654fee7f9a13030837c58227d264735483b37987e7438d5ec810c4" [label=""];
  "sha256:ca2ca2ad70bf3d8b3bafa822fa4cce72472b992af575e45e608682db9fb8cf4b" -> "sha256:d96398dd3b654fee7f9a13030837c58227d264735483b37987e7438d5ec810c4" [label=""];
  "sha256:d96398dd3b654fee7f9a13030837c58227d264735483b37987e7438d5ec810c4" -> "sha256:f622221eab73ee7c90b2d9b82e344e2625491909ac2c244f0323aca5dbf40947" [label=""];
  "sha256:ca2ca2ad70bf3d8b3bafa822fa4cce72472b992af575e45e608682db9fb8cf4b" -> "sha256:f622221eab73ee7c90b2d9b82e344e2625491909ac2c244f0323aca5dbf40947" [label=""];
  "sha256:f622221eab73ee7c90b2d9b82e344e2625491909ac2c244f0323aca5dbf40947" -> "sha256:62083383e7fedde4d8c6199fc95847631f62c6e064e749cbf35efe54d71b9468" [label=""];
  "sha256:ca2ca2ad70bf3d8b3bafa822fa4cce72472b992af575e45e608682db9fb8cf4b" -> "sha256:62083383e7fedde4d8c6199fc95847631f62c6e064e749cbf35efe54d71b9468" [label=""];
  "sha256:62083383e7fedde4d8c6199fc95847631f62c6e064e749cbf35efe54d71b9468" -> "sha256:b174906a64d6d3601927ddbe90ebb6d44e561278a5ac7c992a70a9dd58a0fd1c" [label=""];
  "sha256:ca2ca2ad70bf3d8b3bafa822fa4cce72472b992af575e45e608682db9fb8cf4b" -> "sha256:b174906a64d6d3601927ddbe90ebb6d44e561278a5ac7c992a70a9dd58a0fd1c" [label=""];
  "sha256:b174906a64d6d3601927ddbe90ebb6d44e561278a5ac7c992a70a9dd58a0fd1c" -> "sha256:56a54bf0c1dbc12b3cd39b75750fb7d47c37e65f2e6d7861d1527860882ca06e" [label=""];
  "sha256:56a54bf0c1dbc12b3cd39b75750fb7d47c37e65f2e6d7861d1527860882ca06e" -> "sha256:bf725a75ef5c1c260082813412960688671f4f9d59ba71ee9392e1792e287801" [label=""];
}

