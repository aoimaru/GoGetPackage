[app/sources/354166526.Dockerfile]
digraph {
  "sha256:e9a36960905021a410b4150af90730589fe22a913cbdbca1a2cb001c432ec1e6" [label="local://context" shape="ellipse"];
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" [label="docker-image://docker.io/library/alpine:3.3" shape="ellipse"];
  "sha256:e8fe6488af729a878f3255eb64d357007491ebb3b2305f4ee3dbe67eff6ad3c9" [label="/bin/sh -c apk update &&   apk add --update bash curl openjdk8-jre &&   rm -rf /var/cache/apk/* &&   curl -L https://github.com/kelseyhightower/confd/releases/download/v0.11.0/confd-0.11.0-linux-amd64 -o /usr/local/bin/confd &&   chmod +x /usr/local/bin/confd &&   curl -L https://github.com/cloudnautique/giddyup/releases/download/v0.10.0/giddyup -o /usr/local/bin/giddyup &&   chmod +x /usr/local/bin/giddyup &&   mkdir -p /opt &&   curl -L https://dist.apache.org/repos/dist/release/zookeeper/zookeeper-3.4.8/zookeeper-3.4.8.tar.gz | tar xzf - -C /opt &&   mv /opt/zookeeper-3.4.8 /opt/zookeeper" shape="box"];
  "sha256:6a36ba4552e56ecfb91f62fe3665a6740db460e7c8167a6809e488b8d558f65c" [label="copy{src=/conf.d, dest=/etc/confd/conf.d}" shape="note"];
  "sha256:d503f6d0e6925704956e04cbe1941efed3b0115ae60fa6ac2c2e8c62ee1bdd38" [label="copy{src=/templates, dest=/etc/confd/templates}" shape="note"];
  "sha256:d01a69c189a3c80a5b365d72b8371666fa1e26a882da168ae38fc7d2cd6c2ffe" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:a4ce2e1616ae092c341172011d520a947efa7ce4296b5e98de328acc325724ca" [label="sha256:a4ce2e1616ae092c341172011d520a947efa7ce4296b5e98de328acc325724ca" shape="plaintext"];
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" -> "sha256:e8fe6488af729a878f3255eb64d357007491ebb3b2305f4ee3dbe67eff6ad3c9" [label=""];
  "sha256:e8fe6488af729a878f3255eb64d357007491ebb3b2305f4ee3dbe67eff6ad3c9" -> "sha256:6a36ba4552e56ecfb91f62fe3665a6740db460e7c8167a6809e488b8d558f65c" [label=""];
  "sha256:e9a36960905021a410b4150af90730589fe22a913cbdbca1a2cb001c432ec1e6" -> "sha256:6a36ba4552e56ecfb91f62fe3665a6740db460e7c8167a6809e488b8d558f65c" [label=""];
  "sha256:6a36ba4552e56ecfb91f62fe3665a6740db460e7c8167a6809e488b8d558f65c" -> "sha256:d503f6d0e6925704956e04cbe1941efed3b0115ae60fa6ac2c2e8c62ee1bdd38" [label=""];
  "sha256:e9a36960905021a410b4150af90730589fe22a913cbdbca1a2cb001c432ec1e6" -> "sha256:d503f6d0e6925704956e04cbe1941efed3b0115ae60fa6ac2c2e8c62ee1bdd38" [label=""];
  "sha256:d503f6d0e6925704956e04cbe1941efed3b0115ae60fa6ac2c2e8c62ee1bdd38" -> "sha256:d01a69c189a3c80a5b365d72b8371666fa1e26a882da168ae38fc7d2cd6c2ffe" [label=""];
  "sha256:e9a36960905021a410b4150af90730589fe22a913cbdbca1a2cb001c432ec1e6" -> "sha256:d01a69c189a3c80a5b365d72b8371666fa1e26a882da168ae38fc7d2cd6c2ffe" [label=""];
  "sha256:d01a69c189a3c80a5b365d72b8371666fa1e26a882da168ae38fc7d2cd6c2ffe" -> "sha256:a4ce2e1616ae092c341172011d520a947efa7ce4296b5e98de328acc325724ca" [label=""];
}

