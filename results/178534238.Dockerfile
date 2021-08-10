[app/sources/178534238.Dockerfile]
digraph {
  "sha256:09d2aa2fc2fb37dddb2985331ba48a7873002eef2ab12e7be47a290a56f0fc06" [label="docker-image://docker.io/library/ubuntu:utopic" shape="ellipse"];
  "sha256:15de917a8031a753a95fc24ce6678be88ca1a0331e3d7d59cb9998fb4236af04" [label="/bin/sh -c apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399" shape="box"];
  "sha256:f8def49c7ebd83e028410679807040ca4a7b9a61405bf78a6e65b4a410da469c" [label="/bin/sh -c echo \"deb http://download.rethinkdb.com/apt utopic main\" > /etc/apt/sources.list.d/rethinkdb.list" shape="box"];
  "sha256:8a035eb73f185dca016117ea8a8f2e0594d95f5e22320ed02823241d361f2b05" [label="/bin/sh -c apt-get update \t&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:4466242b0a98e381dae81933ab2908be72c6742163b186f4140951457285aac0" [label="mkdir{path=/data}" shape="note"];
  "sha256:6aae9e16e108b2f02b64ff83cfbefa42fbd86592483a9ea122820b375ebdace9" [label="sha256:6aae9e16e108b2f02b64ff83cfbefa42fbd86592483a9ea122820b375ebdace9" shape="plaintext"];
  "sha256:09d2aa2fc2fb37dddb2985331ba48a7873002eef2ab12e7be47a290a56f0fc06" -> "sha256:15de917a8031a753a95fc24ce6678be88ca1a0331e3d7d59cb9998fb4236af04" [label=""];
  "sha256:15de917a8031a753a95fc24ce6678be88ca1a0331e3d7d59cb9998fb4236af04" -> "sha256:f8def49c7ebd83e028410679807040ca4a7b9a61405bf78a6e65b4a410da469c" [label=""];
  "sha256:f8def49c7ebd83e028410679807040ca4a7b9a61405bf78a6e65b4a410da469c" -> "sha256:8a035eb73f185dca016117ea8a8f2e0594d95f5e22320ed02823241d361f2b05" [label=""];
  "sha256:8a035eb73f185dca016117ea8a8f2e0594d95f5e22320ed02823241d361f2b05" -> "sha256:4466242b0a98e381dae81933ab2908be72c6742163b186f4140951457285aac0" [label=""];
  "sha256:4466242b0a98e381dae81933ab2908be72c6742163b186f4140951457285aac0" -> "sha256:6aae9e16e108b2f02b64ff83cfbefa42fbd86592483a9ea122820b375ebdace9" [label=""];
}

