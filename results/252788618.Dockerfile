[app/sources/252788618.Dockerfile]
digraph {
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:fa64ff746b19b678209313d768a71b3ea9ab4126d2082b5900d354c5a9f72e9f" [label="/bin/sh -c yum install -y rsyslog" shape="box"];
  "sha256:08f3ce87a60101eb5c1c82d549df45a27b2b8b9820d7ddc9d37ecddeb625ddd3" [label="/bin/sh -c mkdir -p /logs" shape="box"];
  "sha256:a512dd560026af316ba27d5770a2a7e80ebacc13c187316d4c31b442a9282420" [label="/bin/sh -c echo \"$IncludeConfig /etc/rsyslog.d/\" > /etc/rsyslog.conf" shape="box"];
  "sha256:b496ad211fdc2b191d13564de638d4979c8d0cdc40d8bbc00a2890ffa177cb32" [label="/bin/sh -c rm /etc/logrotate.d/syslog" shape="box"];
  "sha256:7c0916e1ff6f416daa8770e989828b5b90a41aabeb617cd57cb6fe957058a34c" [label="sha256:7c0916e1ff6f416daa8770e989828b5b90a41aabeb617cd57cb6fe957058a34c" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:fa64ff746b19b678209313d768a71b3ea9ab4126d2082b5900d354c5a9f72e9f" [label=""];
  "sha256:fa64ff746b19b678209313d768a71b3ea9ab4126d2082b5900d354c5a9f72e9f" -> "sha256:08f3ce87a60101eb5c1c82d549df45a27b2b8b9820d7ddc9d37ecddeb625ddd3" [label=""];
  "sha256:08f3ce87a60101eb5c1c82d549df45a27b2b8b9820d7ddc9d37ecddeb625ddd3" -> "sha256:a512dd560026af316ba27d5770a2a7e80ebacc13c187316d4c31b442a9282420" [label=""];
  "sha256:a512dd560026af316ba27d5770a2a7e80ebacc13c187316d4c31b442a9282420" -> "sha256:b496ad211fdc2b191d13564de638d4979c8d0cdc40d8bbc00a2890ffa177cb32" [label=""];
  "sha256:b496ad211fdc2b191d13564de638d4979c8d0cdc40d8bbc00a2890ffa177cb32" -> "sha256:7c0916e1ff6f416daa8770e989828b5b90a41aabeb617cd57cb6fe957058a34c" [label=""];
}

