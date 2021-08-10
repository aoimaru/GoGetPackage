[app/sources/178534224.Dockerfile]
digraph {
  "sha256:09d2aa2fc2fb37dddb2985331ba48a7873002eef2ab12e7be47a290a56f0fc06" [label="docker-image://docker.io/library/ubuntu:utopic" shape="ellipse"];
  "sha256:15de917a8031a753a95fc24ce6678be88ca1a0331e3d7d59cb9998fb4236af04" [label="/bin/sh -c apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399" shape="box"];
  "sha256:f8def49c7ebd83e028410679807040ca4a7b9a61405bf78a6e65b4a410da469c" [label="/bin/sh -c echo \"deb http://download.rethinkdb.com/apt utopic main\" > /etc/apt/sources.list.d/rethinkdb.list" shape="box"];
  "sha256:1ee7d2b813df96a3b474d0c08a7b8cb7334168dbc5d540fc6dba506948912e50" [label="/bin/sh -c apt-get update \t&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f2fe23b7528bf1ebff82cd9c308b2dbd2b8abf44a59e59b3c3db1bb76fc37cd5" [label="mkdir{path=/data}" shape="note"];
  "sha256:869f1b56eb8c559e8524753ced643c69a628595f8877f4d2f72e870b82de3858" [label="sha256:869f1b56eb8c559e8524753ced643c69a628595f8877f4d2f72e870b82de3858" shape="plaintext"];
  "sha256:09d2aa2fc2fb37dddb2985331ba48a7873002eef2ab12e7be47a290a56f0fc06" -> "sha256:15de917a8031a753a95fc24ce6678be88ca1a0331e3d7d59cb9998fb4236af04" [label=""];
  "sha256:15de917a8031a753a95fc24ce6678be88ca1a0331e3d7d59cb9998fb4236af04" -> "sha256:f8def49c7ebd83e028410679807040ca4a7b9a61405bf78a6e65b4a410da469c" [label=""];
  "sha256:f8def49c7ebd83e028410679807040ca4a7b9a61405bf78a6e65b4a410da469c" -> "sha256:1ee7d2b813df96a3b474d0c08a7b8cb7334168dbc5d540fc6dba506948912e50" [label=""];
  "sha256:1ee7d2b813df96a3b474d0c08a7b8cb7334168dbc5d540fc6dba506948912e50" -> "sha256:f2fe23b7528bf1ebff82cd9c308b2dbd2b8abf44a59e59b3c3db1bb76fc37cd5" [label=""];
  "sha256:f2fe23b7528bf1ebff82cd9c308b2dbd2b8abf44a59e59b3c3db1bb76fc37cd5" -> "sha256:869f1b56eb8c559e8524753ced643c69a628595f8877f4d2f72e870b82de3858" [label=""];
}

