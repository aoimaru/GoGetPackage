[app/sources/252783456.Dockerfile]
digraph {
  "sha256:c3c83b84f7cda0c48a40f054ab53319059cf7d13ca6fc656c34a8e19b8c2012e" [label="docker-image://docker.io/debezium/postgres:9.6" shape="ellipse"];
  "sha256:bc8c2adf9b4ba010f01ce7ee5ee40f5e0b1e4cbae4827c82914d2712853d35a5" [label="local://context" shape="ellipse"];
  "sha256:388137465829e1968177996cb51bd56307ce95a78ad294efcc7745a587b0d04b" [label="copy{src=/inventory.sql, dest=/docker-entrypoint-initdb.d/}" shape="note"];
  "sha256:cca3e73a879314ad3fe9174cc8ebbdfc34043fb81c021ea7ebaed10f0c6332c3" [label="sha256:cca3e73a879314ad3fe9174cc8ebbdfc34043fb81c021ea7ebaed10f0c6332c3" shape="plaintext"];
  "sha256:c3c83b84f7cda0c48a40f054ab53319059cf7d13ca6fc656c34a8e19b8c2012e" -> "sha256:388137465829e1968177996cb51bd56307ce95a78ad294efcc7745a587b0d04b" [label=""];
  "sha256:bc8c2adf9b4ba010f01ce7ee5ee40f5e0b1e4cbae4827c82914d2712853d35a5" -> "sha256:388137465829e1968177996cb51bd56307ce95a78ad294efcc7745a587b0d04b" [label=""];
  "sha256:388137465829e1968177996cb51bd56307ce95a78ad294efcc7745a587b0d04b" -> "sha256:cca3e73a879314ad3fe9174cc8ebbdfc34043fb81c021ea7ebaed10f0c6332c3" [label=""];
}

