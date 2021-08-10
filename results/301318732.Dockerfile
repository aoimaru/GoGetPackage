[app/sources/301318732.Dockerfile]
digraph {
  "sha256:a6e599f7ff249667003523783f1c96cc7be7735699806462f5da1fe897012158" [label="docker-image://docker.io/library/java:8-jre" shape="ellipse"];
  "sha256:98c97302ed30d56d7d05f250bf993b05ddcdd9c578d693cb4c07361c4d964805" [label="/bin/sh -c set -x &&     cd /opt &&     wget -qO logstash.tar.gz $URL?${CACHE} &&     tar xzf logstash.tar.gz" shape="box"];
  "sha256:cd72aefcb629e8d00d85dcc46eec6fa45bb7e3b5b60896288ed3ef92573e971b" [label="local://context" shape="ellipse"];
  "sha256:15307494fd0f784327a7a19b66c6753099fab66c5f16277f3eb20353e8a8c6bb" [label="copy{src=/logstash.conf.tmpl, dest=/logstash.conf.tmpl}" shape="note"];
  "sha256:abd9c0248e52a38bfa52f4bd1d51b399c8966fe530b98b40ee4381ab2ef114d3" [label="copy{src=/docker-entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:b5cc2db5dd9c7ad8bfbe6bc256886281aba80491af0ac630608af359fc4585d6" [label="copy{src=/pki, dest=/etc/pki}" shape="note"];
  "sha256:1c6e1b5df7844497124ab0cb790f930112bcd012c6958a59e173d97070a423f0" [label="sha256:1c6e1b5df7844497124ab0cb790f930112bcd012c6958a59e173d97070a423f0" shape="plaintext"];
  "sha256:a6e599f7ff249667003523783f1c96cc7be7735699806462f5da1fe897012158" -> "sha256:98c97302ed30d56d7d05f250bf993b05ddcdd9c578d693cb4c07361c4d964805" [label=""];
  "sha256:98c97302ed30d56d7d05f250bf993b05ddcdd9c578d693cb4c07361c4d964805" -> "sha256:15307494fd0f784327a7a19b66c6753099fab66c5f16277f3eb20353e8a8c6bb" [label=""];
  "sha256:cd72aefcb629e8d00d85dcc46eec6fa45bb7e3b5b60896288ed3ef92573e971b" -> "sha256:15307494fd0f784327a7a19b66c6753099fab66c5f16277f3eb20353e8a8c6bb" [label=""];
  "sha256:15307494fd0f784327a7a19b66c6753099fab66c5f16277f3eb20353e8a8c6bb" -> "sha256:abd9c0248e52a38bfa52f4bd1d51b399c8966fe530b98b40ee4381ab2ef114d3" [label=""];
  "sha256:cd72aefcb629e8d00d85dcc46eec6fa45bb7e3b5b60896288ed3ef92573e971b" -> "sha256:abd9c0248e52a38bfa52f4bd1d51b399c8966fe530b98b40ee4381ab2ef114d3" [label=""];
  "sha256:abd9c0248e52a38bfa52f4bd1d51b399c8966fe530b98b40ee4381ab2ef114d3" -> "sha256:b5cc2db5dd9c7ad8bfbe6bc256886281aba80491af0ac630608af359fc4585d6" [label=""];
  "sha256:cd72aefcb629e8d00d85dcc46eec6fa45bb7e3b5b60896288ed3ef92573e971b" -> "sha256:b5cc2db5dd9c7ad8bfbe6bc256886281aba80491af0ac630608af359fc4585d6" [label=""];
  "sha256:b5cc2db5dd9c7ad8bfbe6bc256886281aba80491af0ac630608af359fc4585d6" -> "sha256:1c6e1b5df7844497124ab0cb790f930112bcd012c6958a59e173d97070a423f0" [label=""];
}

