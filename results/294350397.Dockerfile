[app/sources/294350397.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:39298e2b7b2ee0b377fd64021668b575bbc86087b9d457308c2f177d092065f2" [label="/bin/sh -c apt-get -qy update && apt-get -qy install make shellcheck" shape="box"];
  "sha256:dcaa983c80b792365fe3c6f93aebdfcc85410d97e8c4b6575bf362be4144369e" [label="sha256:dcaa983c80b792365fe3c6f93aebdfcc85410d97e8c4b6575bf362be4144369e" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:39298e2b7b2ee0b377fd64021668b575bbc86087b9d457308c2f177d092065f2" [label=""];
  "sha256:39298e2b7b2ee0b377fd64021668b575bbc86087b9d457308c2f177d092065f2" -> "sha256:dcaa983c80b792365fe3c6f93aebdfcc85410d97e8c4b6575bf362be4144369e" [label=""];
}

