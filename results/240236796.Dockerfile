[app/sources/240236796.Dockerfile]
digraph {
  "sha256:7097984e0a11e112121690350a102ed7fd0115e966fae70ce2801a9841ee6a85" [label="docker-image://docker.io/phpearth/test:7.2-cli" shape="ellipse"];
  "sha256:cb3e8ce8c92e85551c4d4787a000be223b2ab074e13a3ea7498503c66b761a09" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:bf6bff58adfb0cdc600c5097a5a55ba1d223807b347026ea6eca450a8143d035" [label="local://context" shape="ellipse"];
  "sha256:265bbb51e88450cfd3f611ebb0836496641241f210b870b1c1db353c2237611e" [label="copy{src=/argon.php, dest=/usr/src/app/argon.php}" shape="note"];
  "sha256:d01215ffdfebbf3a054bad6c1b815910c3fdc594b16b0ebb82b9dea56bbd1849" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:724e319f9ad7691e18a99886e89466010aa16c9cc15673c789c38baa1b91855b" [label="sha256:724e319f9ad7691e18a99886e89466010aa16c9cc15673c789c38baa1b91855b" shape="plaintext"];
  "sha256:7097984e0a11e112121690350a102ed7fd0115e966fae70ce2801a9841ee6a85" -> "sha256:cb3e8ce8c92e85551c4d4787a000be223b2ab074e13a3ea7498503c66b761a09" [label=""];
  "sha256:cb3e8ce8c92e85551c4d4787a000be223b2ab074e13a3ea7498503c66b761a09" -> "sha256:265bbb51e88450cfd3f611ebb0836496641241f210b870b1c1db353c2237611e" [label=""];
  "sha256:bf6bff58adfb0cdc600c5097a5a55ba1d223807b347026ea6eca450a8143d035" -> "sha256:265bbb51e88450cfd3f611ebb0836496641241f210b870b1c1db353c2237611e" [label=""];
  "sha256:265bbb51e88450cfd3f611ebb0836496641241f210b870b1c1db353c2237611e" -> "sha256:d01215ffdfebbf3a054bad6c1b815910c3fdc594b16b0ebb82b9dea56bbd1849" [label=""];
  "sha256:d01215ffdfebbf3a054bad6c1b815910c3fdc594b16b0ebb82b9dea56bbd1849" -> "sha256:724e319f9ad7691e18a99886e89466010aa16c9cc15673c789c38baa1b91855b" [label=""];
}

