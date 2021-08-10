[app/sources/198551829.Dockerfile]
digraph {
  "sha256:49aabf7425b24ea7e218c9345b598a41bc9abd61044bff6c5eb84affd6faac5c" [label="local://context" shape="ellipse"];
  "sha256:35a9fd5f760d2b90d030c37766257a29fa1b6c8f91945b42dd16eb8d2fc2c867" [label="docker-image://docker.io/library/mysql:5.7" shape="ellipse"];
  "sha256:f907ca81594464d0ad83f255b87cafa19e16b3a84c3abfa4ddaafbf3780e5b51" [label="copy{src=/mysql.cnf, dest=/etc/mysql/conf.d/}" shape="note"];
  "sha256:f40dc9f5d57f0c7dbd7843b2555d53324ac29b0b5096665c5423a9757ce78c61" [label="copy{src=/inventory.sql, dest=/docker-entrypoint-initdb.d/}" shape="note"];
  "sha256:b6f97bdca6c11065684acca7f88b57c2e73af8c0e122c54257e1e99c282566cb" [label="sha256:b6f97bdca6c11065684acca7f88b57c2e73af8c0e122c54257e1e99c282566cb" shape="plaintext"];
  "sha256:35a9fd5f760d2b90d030c37766257a29fa1b6c8f91945b42dd16eb8d2fc2c867" -> "sha256:f907ca81594464d0ad83f255b87cafa19e16b3a84c3abfa4ddaafbf3780e5b51" [label=""];
  "sha256:49aabf7425b24ea7e218c9345b598a41bc9abd61044bff6c5eb84affd6faac5c" -> "sha256:f907ca81594464d0ad83f255b87cafa19e16b3a84c3abfa4ddaafbf3780e5b51" [label=""];
  "sha256:f907ca81594464d0ad83f255b87cafa19e16b3a84c3abfa4ddaafbf3780e5b51" -> "sha256:f40dc9f5d57f0c7dbd7843b2555d53324ac29b0b5096665c5423a9757ce78c61" [label=""];
  "sha256:49aabf7425b24ea7e218c9345b598a41bc9abd61044bff6c5eb84affd6faac5c" -> "sha256:f40dc9f5d57f0c7dbd7843b2555d53324ac29b0b5096665c5423a9757ce78c61" [label=""];
  "sha256:f40dc9f5d57f0c7dbd7843b2555d53324ac29b0b5096665c5423a9757ce78c61" -> "sha256:b6f97bdca6c11065684acca7f88b57c2e73af8c0e122c54257e1e99c282566cb" [label=""];
}

