[app/sources/252783242.Dockerfile]
digraph {
  "sha256:62812a82f0532314dbc14b192c3f47a17896ef4c9be1717e73911db2d7f645e3" [label="docker-image://docker.io/library/postgres:9.4" shape="ellipse"];
  "sha256:74eb3b4af16ac5c289aba8223550be4f28350e2d7d7f5d5db23b63aae64c7511" [label="local://context" shape="ellipse"];
  "sha256:edeb367947321b9abf2f382c71d847fa8903a065d2ac4120f9a010bc381dfddb" [label="copy{src=/docker-entrypoint-initdb.d, dest=/docker-entrypoint-initdb.d/}" shape="note"];
  "sha256:cfbbc2d31f9a90f02b696126a124aa6c211d383353887c8b46290230af8c11f1" [label="copy{src=/sql, dest=/sql/}" shape="note"];
  "sha256:deb2ee75c6e4b623741712d5af7f069c3b169bd2b766a00c765ae642b05fcaf4" [label="sha256:deb2ee75c6e4b623741712d5af7f069c3b169bd2b766a00c765ae642b05fcaf4" shape="plaintext"];
  "sha256:62812a82f0532314dbc14b192c3f47a17896ef4c9be1717e73911db2d7f645e3" -> "sha256:edeb367947321b9abf2f382c71d847fa8903a065d2ac4120f9a010bc381dfddb" [label=""];
  "sha256:74eb3b4af16ac5c289aba8223550be4f28350e2d7d7f5d5db23b63aae64c7511" -> "sha256:edeb367947321b9abf2f382c71d847fa8903a065d2ac4120f9a010bc381dfddb" [label=""];
  "sha256:edeb367947321b9abf2f382c71d847fa8903a065d2ac4120f9a010bc381dfddb" -> "sha256:cfbbc2d31f9a90f02b696126a124aa6c211d383353887c8b46290230af8c11f1" [label=""];
  "sha256:74eb3b4af16ac5c289aba8223550be4f28350e2d7d7f5d5db23b63aae64c7511" -> "sha256:cfbbc2d31f9a90f02b696126a124aa6c211d383353887c8b46290230af8c11f1" [label=""];
  "sha256:cfbbc2d31f9a90f02b696126a124aa6c211d383353887c8b46290230af8c11f1" -> "sha256:deb2ee75c6e4b623741712d5af7f069c3b169bd2b766a00c765ae642b05fcaf4" [label=""];
}

