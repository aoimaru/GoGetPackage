[app/sources/178534246.Dockerfile]
digraph {
  "sha256:09d2aa2fc2fb37dddb2985331ba48a7873002eef2ab12e7be47a290a56f0fc06" [label="docker-image://docker.io/library/ubuntu:utopic" shape="ellipse"];
  "sha256:15de917a8031a753a95fc24ce6678be88ca1a0331e3d7d59cb9998fb4236af04" [label="/bin/sh -c apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399" shape="box"];
  "sha256:f8def49c7ebd83e028410679807040ca4a7b9a61405bf78a6e65b4a410da469c" [label="/bin/sh -c echo \"deb http://download.rethinkdb.com/apt utopic main\" > /etc/apt/sources.list.d/rethinkdb.list" shape="box"];
  "sha256:8963b849ba0be22165e25e82be366d6327da0548d71b24fc2cd328581e2042e9" [label="/bin/sh -c apt-get update \t&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c85125ef7cc9548b0e7e3e534169c5140f59aa327fb1a8ddb2d0bf0e5859f9a0" [label="mkdir{path=/data}" shape="note"];
  "sha256:ca27001e79897f9c5a53d4d1f5abf741f1b3992a1d76e447653cb50c02c1d83b" [label="sha256:ca27001e79897f9c5a53d4d1f5abf741f1b3992a1d76e447653cb50c02c1d83b" shape="plaintext"];
  "sha256:09d2aa2fc2fb37dddb2985331ba48a7873002eef2ab12e7be47a290a56f0fc06" -> "sha256:15de917a8031a753a95fc24ce6678be88ca1a0331e3d7d59cb9998fb4236af04" [label=""];
  "sha256:15de917a8031a753a95fc24ce6678be88ca1a0331e3d7d59cb9998fb4236af04" -> "sha256:f8def49c7ebd83e028410679807040ca4a7b9a61405bf78a6e65b4a410da469c" [label=""];
  "sha256:f8def49c7ebd83e028410679807040ca4a7b9a61405bf78a6e65b4a410da469c" -> "sha256:8963b849ba0be22165e25e82be366d6327da0548d71b24fc2cd328581e2042e9" [label=""];
  "sha256:8963b849ba0be22165e25e82be366d6327da0548d71b24fc2cd328581e2042e9" -> "sha256:c85125ef7cc9548b0e7e3e534169c5140f59aa327fb1a8ddb2d0bf0e5859f9a0" [label=""];
  "sha256:c85125ef7cc9548b0e7e3e534169c5140f59aa327fb1a8ddb2d0bf0e5859f9a0" -> "sha256:ca27001e79897f9c5a53d4d1f5abf741f1b3992a1d76e447653cb50c02c1d83b" [label=""];
}

