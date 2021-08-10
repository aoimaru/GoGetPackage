[app/sources/282320784.Dockerfile]
digraph {
  "sha256:b145f0ad9ae9a60f6de4b81d9ba792548eefa51430e720eb67d23392494d4db4" [label="docker-image://docker.io/library/redis:latest" shape="ellipse"];
  "sha256:a75637e1758d83b526db9bbb366b7e6f39c04d13d3a3d459e5367951cea620d8" [label="local://context" shape="ellipse"];
  "sha256:b62be81b3f9eaf783684753ad5cea282390876ef01f24777d7463808c92ad5a7" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:006832a3dcfdfebfb346107637c029c7f0de87dc1d8d9d421a3071e38a69ce9c" [label="/bin/sh -c chmod a+x /run.sh" shape="box"];
  "sha256:f5c346614e1671a5ff16e5d8febff96c8644e7a0add36bbdf0b92e70ede04406" [label="sha256:f5c346614e1671a5ff16e5d8febff96c8644e7a0add36bbdf0b92e70ede04406" shape="plaintext"];
  "sha256:b145f0ad9ae9a60f6de4b81d9ba792548eefa51430e720eb67d23392494d4db4" -> "sha256:b62be81b3f9eaf783684753ad5cea282390876ef01f24777d7463808c92ad5a7" [label=""];
  "sha256:a75637e1758d83b526db9bbb366b7e6f39c04d13d3a3d459e5367951cea620d8" -> "sha256:b62be81b3f9eaf783684753ad5cea282390876ef01f24777d7463808c92ad5a7" [label=""];
  "sha256:b62be81b3f9eaf783684753ad5cea282390876ef01f24777d7463808c92ad5a7" -> "sha256:006832a3dcfdfebfb346107637c029c7f0de87dc1d8d9d421a3071e38a69ce9c" [label=""];
  "sha256:006832a3dcfdfebfb346107637c029c7f0de87dc1d8d9d421a3071e38a69ce9c" -> "sha256:f5c346614e1671a5ff16e5d8febff96c8644e7a0add36bbdf0b92e70ede04406" [label=""];
}

