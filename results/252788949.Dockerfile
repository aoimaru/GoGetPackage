[app/sources/252788949.Dockerfile]
digraph {
  "sha256:dbdeb078b820a2fb44f15b2fc9768bad7c44f34c7d7992537878b5ad661b2e6a" [label="local://context" shape="ellipse"];
  "sha256:ab36b3ec43f6cf621c5b782f1898ad53b3fe05bf2b8549722a4a431fd2a47499" [label="docker-image://docker.io/library/postgres:latest" shape="ellipse"];
  "sha256:490b8f623c03b1b9da399f0603f1a6b051823a1fde543fb6455ed34384c85769" [label="/bin/sh -c apt-get update && apt-get install postgis -y" shape="box"];
  "sha256:25844902d8e94561cd865f68f8701fe97f09c75c7cba746f7b7658de44cd818a" [label="/bin/sh -c mkdir -p /docker-entrypoint-initdb.d" shape="box"];
  "sha256:d2c49fd6ff5b3d8b3d86f602161ea6eb77e07aac2c6eb0e2d27d9de99ccc0c09" [label="copy{src=/initdb-postgis.sh, dest=/docker-entrypoint-initdb.d/postgis.sh}" shape="note"];
  "sha256:7379c523efb493d72e523ce7afff007b957960e99c6242976f167fb94300cb38" [label="copy{src=/create_pg_trgrm_extension.sh, dest=/docker-entrypoint-initdb.d/pg_trgrm.sh}" shape="note"];
  "sha256:7945381ea62734496cdec8b4a66e947c0fbf96e15f66dacf0c3b420bfcce6d59" [label="sha256:7945381ea62734496cdec8b4a66e947c0fbf96e15f66dacf0c3b420bfcce6d59" shape="plaintext"];
  "sha256:ab36b3ec43f6cf621c5b782f1898ad53b3fe05bf2b8549722a4a431fd2a47499" -> "sha256:490b8f623c03b1b9da399f0603f1a6b051823a1fde543fb6455ed34384c85769" [label=""];
  "sha256:490b8f623c03b1b9da399f0603f1a6b051823a1fde543fb6455ed34384c85769" -> "sha256:25844902d8e94561cd865f68f8701fe97f09c75c7cba746f7b7658de44cd818a" [label=""];
  "sha256:25844902d8e94561cd865f68f8701fe97f09c75c7cba746f7b7658de44cd818a" -> "sha256:d2c49fd6ff5b3d8b3d86f602161ea6eb77e07aac2c6eb0e2d27d9de99ccc0c09" [label=""];
  "sha256:dbdeb078b820a2fb44f15b2fc9768bad7c44f34c7d7992537878b5ad661b2e6a" -> "sha256:d2c49fd6ff5b3d8b3d86f602161ea6eb77e07aac2c6eb0e2d27d9de99ccc0c09" [label=""];
  "sha256:d2c49fd6ff5b3d8b3d86f602161ea6eb77e07aac2c6eb0e2d27d9de99ccc0c09" -> "sha256:7379c523efb493d72e523ce7afff007b957960e99c6242976f167fb94300cb38" [label=""];
  "sha256:dbdeb078b820a2fb44f15b2fc9768bad7c44f34c7d7992537878b5ad661b2e6a" -> "sha256:7379c523efb493d72e523ce7afff007b957960e99c6242976f167fb94300cb38" [label=""];
  "sha256:7379c523efb493d72e523ce7afff007b957960e99c6242976f167fb94300cb38" -> "sha256:7945381ea62734496cdec8b4a66e947c0fbf96e15f66dacf0c3b420bfcce6d59" [label=""];
}

