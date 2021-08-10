[app/sources/298022658.Dockerfile]
digraph {
  "sha256:865c445fade30d79b09737eae57ca3a1e0fc98b93600aac995390911adfa0eda" [label="docker-image://docker.io/ppc64le/ubuntu:16.04" shape="ellipse"];
  "sha256:c388f82cf8fba677bc486b0139f645d664d35bafa9500e71af369df8b152687b" [label="local://context" shape="ellipse"];
  "sha256:d6cd2a272e420c453dd0d436f8ddb3e115e9164020a31714712d1be806aceea6" [label="copy{src=/etcd, dest=/usr/local/bin/}" shape="note"];
  "sha256:6d159fb90955f62a99de12e1d00391b5c95d17724a528522e6fc3442617f47c7" [label="copy{src=/etcdctl, dest=/usr/local/bin/}" shape="note"];
  "sha256:2b670f8ce43d94211ab4ef29470b42703820a4a1a9c68d8fbaa03eac4b8ec89b" [label="copy{src=/var/etcd, dest=/var/etcd}" shape="note"];
  "sha256:9bd2b0ab820cecc771a6e659ebdb8ef2d9c9efccf538dc8f5debe1cd534c08cd" [label="copy{src=/var/lib/etcd, dest=/var/lib/etcd}" shape="note"];
  "sha256:52a50caf0260c8e1175fc13df97bfc77136d1fdff60b3c8dd7ac477f615f9d60" [label="sha256:52a50caf0260c8e1175fc13df97bfc77136d1fdff60b3c8dd7ac477f615f9d60" shape="plaintext"];
  "sha256:865c445fade30d79b09737eae57ca3a1e0fc98b93600aac995390911adfa0eda" -> "sha256:d6cd2a272e420c453dd0d436f8ddb3e115e9164020a31714712d1be806aceea6" [label=""];
  "sha256:c388f82cf8fba677bc486b0139f645d664d35bafa9500e71af369df8b152687b" -> "sha256:d6cd2a272e420c453dd0d436f8ddb3e115e9164020a31714712d1be806aceea6" [label=""];
  "sha256:d6cd2a272e420c453dd0d436f8ddb3e115e9164020a31714712d1be806aceea6" -> "sha256:6d159fb90955f62a99de12e1d00391b5c95d17724a528522e6fc3442617f47c7" [label=""];
  "sha256:c388f82cf8fba677bc486b0139f645d664d35bafa9500e71af369df8b152687b" -> "sha256:6d159fb90955f62a99de12e1d00391b5c95d17724a528522e6fc3442617f47c7" [label=""];
  "sha256:6d159fb90955f62a99de12e1d00391b5c95d17724a528522e6fc3442617f47c7" -> "sha256:2b670f8ce43d94211ab4ef29470b42703820a4a1a9c68d8fbaa03eac4b8ec89b" [label=""];
  "sha256:c388f82cf8fba677bc486b0139f645d664d35bafa9500e71af369df8b152687b" -> "sha256:2b670f8ce43d94211ab4ef29470b42703820a4a1a9c68d8fbaa03eac4b8ec89b" [label=""];
  "sha256:2b670f8ce43d94211ab4ef29470b42703820a4a1a9c68d8fbaa03eac4b8ec89b" -> "sha256:9bd2b0ab820cecc771a6e659ebdb8ef2d9c9efccf538dc8f5debe1cd534c08cd" [label=""];
  "sha256:c388f82cf8fba677bc486b0139f645d664d35bafa9500e71af369df8b152687b" -> "sha256:9bd2b0ab820cecc771a6e659ebdb8ef2d9c9efccf538dc8f5debe1cd534c08cd" [label=""];
  "sha256:9bd2b0ab820cecc771a6e659ebdb8ef2d9c9efccf538dc8f5debe1cd534c08cd" -> "sha256:52a50caf0260c8e1175fc13df97bfc77136d1fdff60b3c8dd7ac477f615f9d60" [label=""];
}

