[app/sources/252767037.Dockerfile]
digraph {
  "sha256:326a0588de29476d1bad73c39e7f9aa979af9e7d551a1f897f06f91166636846" [label="docker-image://docker.io/library/java:7" shape="ellipse"];
  "sha256:0250664b1c64ff7d42a13baff480000f18b9d9d9362a89e43a890ac3d62acd1c" [label="local://context" shape="ellipse"];
  "sha256:77d60afc498f006b7c4379531c1972ffad9dac49971b343d59cd007ed5f41b33" [label="copy{src=/src, dest=/home/root/javahelloworld/src}" shape="note"];
  "sha256:ec6376cc33d08ba7eb93a1cedf3c08d223d4438c7d3e14cb05dba659bb84e4fa" [label="mkdir{path=/home/root/javahelloworld}" shape="note"];
  "sha256:f21a7a37e69acb25f1446c1d16987002c6aba90c5ffa14ce2e60b464da7429ac" [label="/bin/sh -c mkdir bin" shape="box"];
  "sha256:30b7a8028566bd8b591289e301f0d569de9aca6db036755fa749b25d30e913bb" [label="/bin/sh -c javac -d bin src/HelloWorld.java" shape="box"];
  "sha256:0c0be29ff429602cc90418c5dd3131b06e08d3fcea2b2541f28e4ac8e69ea15a" [label="sha256:0c0be29ff429602cc90418c5dd3131b06e08d3fcea2b2541f28e4ac8e69ea15a" shape="plaintext"];
  "sha256:326a0588de29476d1bad73c39e7f9aa979af9e7d551a1f897f06f91166636846" -> "sha256:77d60afc498f006b7c4379531c1972ffad9dac49971b343d59cd007ed5f41b33" [label=""];
  "sha256:0250664b1c64ff7d42a13baff480000f18b9d9d9362a89e43a890ac3d62acd1c" -> "sha256:77d60afc498f006b7c4379531c1972ffad9dac49971b343d59cd007ed5f41b33" [label=""];
  "sha256:77d60afc498f006b7c4379531c1972ffad9dac49971b343d59cd007ed5f41b33" -> "sha256:ec6376cc33d08ba7eb93a1cedf3c08d223d4438c7d3e14cb05dba659bb84e4fa" [label=""];
  "sha256:ec6376cc33d08ba7eb93a1cedf3c08d223d4438c7d3e14cb05dba659bb84e4fa" -> "sha256:f21a7a37e69acb25f1446c1d16987002c6aba90c5ffa14ce2e60b464da7429ac" [label=""];
  "sha256:f21a7a37e69acb25f1446c1d16987002c6aba90c5ffa14ce2e60b464da7429ac" -> "sha256:30b7a8028566bd8b591289e301f0d569de9aca6db036755fa749b25d30e913bb" [label=""];
  "sha256:30b7a8028566bd8b591289e301f0d569de9aca6db036755fa749b25d30e913bb" -> "sha256:0c0be29ff429602cc90418c5dd3131b06e08d3fcea2b2541f28e4ac8e69ea15a" [label=""];
}

