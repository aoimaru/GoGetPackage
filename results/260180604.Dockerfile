[app/sources/260180604.Dockerfile]
digraph {
  "sha256:38cd957ff8ba102a68c2e50ad9410d5921b7835976517484f45993d0b5e773d2" [label="docker-image://docker.io/library/mysql:5.7.16" shape="ellipse"];
  "sha256:7c90e99c55ae9221e33e8f8722565b94ca3094c14fbefcd4582045ba21f9cea6" [label="local://context" shape="ellipse"];
  "sha256:8998571cf6d8ad217913b8ad8bcb3b00e26d5564d4cab6961f101cf4a8b43c65" [label="copy{src=/sql/*.sql, dest=/docker-entrypoint-initdb.d/}" shape="note"];
  "sha256:85e9e1dc6b58f109cd218811093ab3520f95b5a102233672646dc12860018754" [label="sha256:85e9e1dc6b58f109cd218811093ab3520f95b5a102233672646dc12860018754" shape="plaintext"];
  "sha256:38cd957ff8ba102a68c2e50ad9410d5921b7835976517484f45993d0b5e773d2" -> "sha256:8998571cf6d8ad217913b8ad8bcb3b00e26d5564d4cab6961f101cf4a8b43c65" [label=""];
  "sha256:7c90e99c55ae9221e33e8f8722565b94ca3094c14fbefcd4582045ba21f9cea6" -> "sha256:8998571cf6d8ad217913b8ad8bcb3b00e26d5564d4cab6961f101cf4a8b43c65" [label=""];
  "sha256:8998571cf6d8ad217913b8ad8bcb3b00e26d5564d4cab6961f101cf4a8b43c65" -> "sha256:85e9e1dc6b58f109cd218811093ab3520f95b5a102233672646dc12860018754" [label=""];
}

