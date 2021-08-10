[app/sources/471071915.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:edf12bdb783bae98194c68e5630551adfe65d0d58426431bc63031b4b2da632d" [label="/bin/sh -c apt-get update &&     apt-get install -y dnsutils net-tools iproute2 inetutils-ping curl dnsmasq &&     apt-get clean" shape="box"];
  "sha256:8f3153b7bbc99cf62eea52bad70d8fe089f24e6c6cea26e5123eb02f7fe7cf78" [label="local://context" shape="ellipse"];
  "sha256:1c6d25064328d064d68b599e404bea3c1ae7227822853bf5011c13b9c7131eaa" [label="copy{src=/dnsmasq.conf, dest=/etc/dnsmasq.conf}" shape="note"];
  "sha256:9739ad3502df1d028110c0a41bdf4a29fd6af7a5c9eaa081522184a52f1154b4" [label="copy{src=/resolv.conf.dnsmasq, dest=/etc/resolv.conf.dnsmasq}" shape="note"];
  "sha256:19d8123a72b0a7a5827bdea5dc194dbff03e86ee46ac359e8ad2e9717af3a563" [label="sha256:19d8123a72b0a7a5827bdea5dc194dbff03e86ee46ac359e8ad2e9717af3a563" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:edf12bdb783bae98194c68e5630551adfe65d0d58426431bc63031b4b2da632d" [label=""];
  "sha256:edf12bdb783bae98194c68e5630551adfe65d0d58426431bc63031b4b2da632d" -> "sha256:1c6d25064328d064d68b599e404bea3c1ae7227822853bf5011c13b9c7131eaa" [label=""];
  "sha256:8f3153b7bbc99cf62eea52bad70d8fe089f24e6c6cea26e5123eb02f7fe7cf78" -> "sha256:1c6d25064328d064d68b599e404bea3c1ae7227822853bf5011c13b9c7131eaa" [label=""];
  "sha256:1c6d25064328d064d68b599e404bea3c1ae7227822853bf5011c13b9c7131eaa" -> "sha256:9739ad3502df1d028110c0a41bdf4a29fd6af7a5c9eaa081522184a52f1154b4" [label=""];
  "sha256:8f3153b7bbc99cf62eea52bad70d8fe089f24e6c6cea26e5123eb02f7fe7cf78" -> "sha256:9739ad3502df1d028110c0a41bdf4a29fd6af7a5c9eaa081522184a52f1154b4" [label=""];
  "sha256:9739ad3502df1d028110c0a41bdf4a29fd6af7a5c9eaa081522184a52f1154b4" -> "sha256:19d8123a72b0a7a5827bdea5dc194dbff03e86ee46ac359e8ad2e9717af3a563" [label=""];
}

