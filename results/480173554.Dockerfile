[app/sources/480173554.Dockerfile]
digraph {
  "sha256:35a9fd5f760d2b90d030c37766257a29fa1b6c8f91945b42dd16eb8d2fc2c867" [label="docker-image://docker.io/library/mysql:5.7" shape="ellipse"];
  "sha256:2ee71dba02698e780def6dd617ffc294ee67bdcc8edce9a849dc425568a45991" [label="local://context" shape="ellipse"];
  "sha256:5fcfc70d0c4a2d21f8b446a48fa87c745d03c8984df47ba5a7b2ee4e9cebf9b0" [label="copy{src=/bitrix.cnf, dest=/etc/mysql/conf.d/bitrix.cnf}" shape="note"];
  "sha256:ea534a09ac17ee9658b39511f4c4dcb697709717721de81134915089fadeda76" [label="sha256:ea534a09ac17ee9658b39511f4c4dcb697709717721de81134915089fadeda76" shape="plaintext"];
  "sha256:35a9fd5f760d2b90d030c37766257a29fa1b6c8f91945b42dd16eb8d2fc2c867" -> "sha256:5fcfc70d0c4a2d21f8b446a48fa87c745d03c8984df47ba5a7b2ee4e9cebf9b0" [label=""];
  "sha256:2ee71dba02698e780def6dd617ffc294ee67bdcc8edce9a849dc425568a45991" -> "sha256:5fcfc70d0c4a2d21f8b446a48fa87c745d03c8984df47ba5a7b2ee4e9cebf9b0" [label=""];
  "sha256:5fcfc70d0c4a2d21f8b446a48fa87c745d03c8984df47ba5a7b2ee4e9cebf9b0" -> "sha256:ea534a09ac17ee9658b39511f4c4dcb697709717721de81134915089fadeda76" [label=""];
}

