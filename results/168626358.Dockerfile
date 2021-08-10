[app/sources/168626358.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:f914906151ac6e6f1bfdf50ab85452960f798570d016f75ba975a5ab5426aa12" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:67c1e8a0866e15173310c709716e54d27eed27a145da566f3e7b6cbe6fc1992b" [label="/bin/sh -c apt-get install -y curl wget vim supervisor" shape="box"];
  "sha256:8d5091e68c476714a5b9d59e57e8bce094b3f7194ea23f95f6da942d55760625" [label="/bin/sh -c wget https://github.com/kelseyhightower/confd/releases/download/v0.6.3/confd-0.6.3-linux-amd64 -O /usr/bin/confd && chmod +x /usr/bin/confd" shape="box"];
  "sha256:d90900426bf055a6e496b93e4c9277fa08471cc6068c5b7f26c1e90a10d8939a" [label="/bin/sh -c mkdir -p   /dockerbase   /etc/confd/conf.d   /etc/confd/templates   /etc/supervisor/conf.d" shape="box"];
  "sha256:18e06b271d250aa3ac778be212dd35837aabc55e75c9d7eb5547c1b4f6066926" [label="/bin/sh -c rm -f /etc/cron.daily/standard" shape="box"];
  "sha256:3ad689f886291279e5b50be8afbab1621f30699fe4c0af77a47eab8c6f3b77f7" [label="local://context" shape="ellipse"];
  "sha256:38078c5057dc52cbc756e63343a17da702d527ec16828297b67135a53d8f9354" [label="copy{src=/cleanup.sh, dest=/dockerbase/cleanup.sh}" shape="note"];
  "sha256:eabc9fc79204e8fc45d021f91cff30127596c77bff840bf5efd72cef0fff4bfd" [label="copy{src=/config/supervisor/supervisord.conf, dest=/etc/supervisor/supervisord.conf}" shape="note"];
  "sha256:ae2b92b1320e2c9d04eedf107af151ba9072337d1d80492b1e58dc3d7d766578" [label="copy{src=/config/confd/confd.conf, dest=/etc/confd/confd.conf}" shape="note"];
  "sha256:b940853289ffa845b9c4b9c77e43bd7799a29f12e7151d1fdc050b35a399fb60" [label="/bin/sh -c bash /dockerbase/cleanup.sh" shape="box"];
  "sha256:5c851025eefd494a3ab0a2ff4243a923a598dab9b2a2418115e604d7ec1eb2a0" [label="sha256:5c851025eefd494a3ab0a2ff4243a923a598dab9b2a2418115e604d7ec1eb2a0" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:f914906151ac6e6f1bfdf50ab85452960f798570d016f75ba975a5ab5426aa12" [label=""];
  "sha256:f914906151ac6e6f1bfdf50ab85452960f798570d016f75ba975a5ab5426aa12" -> "sha256:67c1e8a0866e15173310c709716e54d27eed27a145da566f3e7b6cbe6fc1992b" [label=""];
  "sha256:67c1e8a0866e15173310c709716e54d27eed27a145da566f3e7b6cbe6fc1992b" -> "sha256:8d5091e68c476714a5b9d59e57e8bce094b3f7194ea23f95f6da942d55760625" [label=""];
  "sha256:8d5091e68c476714a5b9d59e57e8bce094b3f7194ea23f95f6da942d55760625" -> "sha256:d90900426bf055a6e496b93e4c9277fa08471cc6068c5b7f26c1e90a10d8939a" [label=""];
  "sha256:d90900426bf055a6e496b93e4c9277fa08471cc6068c5b7f26c1e90a10d8939a" -> "sha256:18e06b271d250aa3ac778be212dd35837aabc55e75c9d7eb5547c1b4f6066926" [label=""];
  "sha256:18e06b271d250aa3ac778be212dd35837aabc55e75c9d7eb5547c1b4f6066926" -> "sha256:38078c5057dc52cbc756e63343a17da702d527ec16828297b67135a53d8f9354" [label=""];
  "sha256:3ad689f886291279e5b50be8afbab1621f30699fe4c0af77a47eab8c6f3b77f7" -> "sha256:38078c5057dc52cbc756e63343a17da702d527ec16828297b67135a53d8f9354" [label=""];
  "sha256:38078c5057dc52cbc756e63343a17da702d527ec16828297b67135a53d8f9354" -> "sha256:eabc9fc79204e8fc45d021f91cff30127596c77bff840bf5efd72cef0fff4bfd" [label=""];
  "sha256:3ad689f886291279e5b50be8afbab1621f30699fe4c0af77a47eab8c6f3b77f7" -> "sha256:eabc9fc79204e8fc45d021f91cff30127596c77bff840bf5efd72cef0fff4bfd" [label=""];
  "sha256:eabc9fc79204e8fc45d021f91cff30127596c77bff840bf5efd72cef0fff4bfd" -> "sha256:ae2b92b1320e2c9d04eedf107af151ba9072337d1d80492b1e58dc3d7d766578" [label=""];
  "sha256:3ad689f886291279e5b50be8afbab1621f30699fe4c0af77a47eab8c6f3b77f7" -> "sha256:ae2b92b1320e2c9d04eedf107af151ba9072337d1d80492b1e58dc3d7d766578" [label=""];
  "sha256:ae2b92b1320e2c9d04eedf107af151ba9072337d1d80492b1e58dc3d7d766578" -> "sha256:b940853289ffa845b9c4b9c77e43bd7799a29f12e7151d1fdc050b35a399fb60" [label=""];
  "sha256:b940853289ffa845b9c4b9c77e43bd7799a29f12e7151d1fdc050b35a399fb60" -> "sha256:5c851025eefd494a3ab0a2ff4243a923a598dab9b2a2418115e604d7ec1eb2a0" [label=""];
}

