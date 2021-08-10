[app/sources/208332630.Dockerfile]
digraph {
  "sha256:5325821945f715c4d731c031c3520d5c20fb10ef18292cee31cd68c534803051" [label="docker-image://docker.io/library/debian:9.6-slim" shape="ellipse"];
  "sha256:fb5a8972cb7d670838e691b835efb5fea2660a07a2b37039357abde5701e71fe" [label="local://context" shape="ellipse"];
  "sha256:28aac6f12261db0c656ed1eaabf02a6eee593fb3394e2181b3a0605d037af8cc" [label="copy{src=/files, dest=/files}" shape="note"];
  "sha256:0013e82601a905971f9038e5f0344297eebf803b7e756cfdfb4bc7d29dabd7e9" [label="docker-image://docker.io/klakegg/hugo:base" shape="ellipse"];
  "sha256:ee5d46b3e82e4e5fcf52c604a876c7c433584140acc925b1db6d54e7c91f519c" [label="copy{src=/bin/hugo, dest=/files/bin/hugo}" shape="note"];
  "sha256:71261559fb19f6aea5fb0a3db10b45574782f7badfa95089d3bf37eaca7b8504" [label="copy{src=/files, dest=/}" shape="note"];
  "sha256:d0dc24acf1397e83018f66234fc11da872c1d465af7a8d2ce699cf5f076d50aa" [label="/bin/sh -c apt update  && apt install -y bash-completion  && rm -rf /var/lib/apt/lists/*  && hugo gen autocomplete > /dev/null" shape="box"];
  "sha256:db9cc7894097298deb768ea735bee098460b78db0dc3ff09d1f34dc2dcc25d91" [label="mkdir{path=/src}" shape="note"];
  "sha256:8cdefea834927feefd6fce09734ca763a775cf0e8a32414483274ee7b57e30fe" [label="sha256:8cdefea834927feefd6fce09734ca763a775cf0e8a32414483274ee7b57e30fe" shape="plaintext"];
  "sha256:fb5a8972cb7d670838e691b835efb5fea2660a07a2b37039357abde5701e71fe" -> "sha256:28aac6f12261db0c656ed1eaabf02a6eee593fb3394e2181b3a0605d037af8cc" [label=""];
  "sha256:28aac6f12261db0c656ed1eaabf02a6eee593fb3394e2181b3a0605d037af8cc" -> "sha256:ee5d46b3e82e4e5fcf52c604a876c7c433584140acc925b1db6d54e7c91f519c" [label=""];
  "sha256:0013e82601a905971f9038e5f0344297eebf803b7e756cfdfb4bc7d29dabd7e9" -> "sha256:ee5d46b3e82e4e5fcf52c604a876c7c433584140acc925b1db6d54e7c91f519c" [label=""];
  "sha256:5325821945f715c4d731c031c3520d5c20fb10ef18292cee31cd68c534803051" -> "sha256:71261559fb19f6aea5fb0a3db10b45574782f7badfa95089d3bf37eaca7b8504" [label=""];
  "sha256:ee5d46b3e82e4e5fcf52c604a876c7c433584140acc925b1db6d54e7c91f519c" -> "sha256:71261559fb19f6aea5fb0a3db10b45574782f7badfa95089d3bf37eaca7b8504" [label=""];
  "sha256:71261559fb19f6aea5fb0a3db10b45574782f7badfa95089d3bf37eaca7b8504" -> "sha256:d0dc24acf1397e83018f66234fc11da872c1d465af7a8d2ce699cf5f076d50aa" [label=""];
  "sha256:d0dc24acf1397e83018f66234fc11da872c1d465af7a8d2ce699cf5f076d50aa" -> "sha256:db9cc7894097298deb768ea735bee098460b78db0dc3ff09d1f34dc2dcc25d91" [label=""];
  "sha256:db9cc7894097298deb768ea735bee098460b78db0dc3ff09d1f34dc2dcc25d91" -> "sha256:8cdefea834927feefd6fce09734ca763a775cf0e8a32414483274ee7b57e30fe" [label=""];
}

