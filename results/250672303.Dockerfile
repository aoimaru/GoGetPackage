[app/sources/250672303.Dockerfile]
digraph {
  "sha256:35a9fd5f760d2b90d030c37766257a29fa1b6c8f91945b42dd16eb8d2fc2c867" [label="docker-image://docker.io/library/mysql:5.7" shape="ellipse"];
  "sha256:f68084d5e43c64a4785cc1d03327579fccb81280189e0a18782052de703b01c7" [label="local://context" shape="ellipse"];
  "sha256:85e75e4139b2f93390dea3cf0b4940f279bb086a9baac4c864c71ac451583be5" [label="copy{src=/db.sql, dest=/docker-entrypoint-initdb.d/}" shape="note"];
  "sha256:6b3185339a9e843727556ad1ec838dddb3bba566a60c3c273c414f00beb77a95" [label="sha256:6b3185339a9e843727556ad1ec838dddb3bba566a60c3c273c414f00beb77a95" shape="plaintext"];
  "sha256:35a9fd5f760d2b90d030c37766257a29fa1b6c8f91945b42dd16eb8d2fc2c867" -> "sha256:85e75e4139b2f93390dea3cf0b4940f279bb086a9baac4c864c71ac451583be5" [label=""];
  "sha256:f68084d5e43c64a4785cc1d03327579fccb81280189e0a18782052de703b01c7" -> "sha256:85e75e4139b2f93390dea3cf0b4940f279bb086a9baac4c864c71ac451583be5" [label=""];
  "sha256:85e75e4139b2f93390dea3cf0b4940f279bb086a9baac4c864c71ac451583be5" -> "sha256:6b3185339a9e843727556ad1ec838dddb3bba566a60c3c273c414f00beb77a95" [label=""];
}

