[app/sources/322368727.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:dc5fc36a28c283f92c753fc85cfb6b1855d4eb5b01ac501f187341f9753e5e84" [label="local://context" shape="ellipse"];
  "sha256:9d9e88fa6e28a66d1fdaef6127fcd1d7301f92a863fed74d7ccf8e1d1fd09df6" [label="copy{src=/kubemark, dest=/kubemark}" shape="note"];
  "sha256:79a600145060977f8bde93eba162f1669428d8ba2601cb80141e90f1ce0e44b3" [label="sha256:79a600145060977f8bde93eba162f1669428d8ba2601cb80141e90f1ce0e44b3" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:9d9e88fa6e28a66d1fdaef6127fcd1d7301f92a863fed74d7ccf8e1d1fd09df6" [label=""];
  "sha256:dc5fc36a28c283f92c753fc85cfb6b1855d4eb5b01ac501f187341f9753e5e84" -> "sha256:9d9e88fa6e28a66d1fdaef6127fcd1d7301f92a863fed74d7ccf8e1d1fd09df6" [label=""];
  "sha256:9d9e88fa6e28a66d1fdaef6127fcd1d7301f92a863fed74d7ccf8e1d1fd09df6" -> "sha256:79a600145060977f8bde93eba162f1669428d8ba2601cb80141e90f1ce0e44b3" [label=""];
}

