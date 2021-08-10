[app/sources/252802006.Dockerfile]
digraph {
  "sha256:6a9f23d503b76dc93fca5d38e8dd698878ff2add8d6adb29c934fc316378e697" [label="docker-image://docker.io/jenkins/jenkins:2.107.2@sha256:8fac6a4ef151ecaa83648a9d88f0b7d79b502cf7e8746fa569211ebded0fd6df" shape="ellipse"];
  "sha256:3fb11b1ea7c1f6a525c874e4fd49a9d372c05ef3f58d1c80eeca85a4c992d250" [label="local://context" shape="ellipse"];
  "sha256:a2513474bc1296da48903d18cdcda2a0768d325ecb77b5ecb6370e45bbba4eaa" [label="copy{src=/plugins.txt, dest=/usr/share/jenkins/ref/plugins.txt}" shape="note"];
  "sha256:65ecb006795e808c13268323aab50a3d4fc6748b4ca6be51d14fb9bd48c3a8d6" [label="/bin/sh -c /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt" shape="box"];
  "sha256:35a2cc92ad0dd6253ded0b6cc3c324e36925f2d1818a79b534633cae9fc6b901" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_8.x | bash - && apt-get update && apt-get install -y --no-install-recommends graphviz nodejs && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:618685e8a026dba5d192887705f5da38f835eddef8e14373748a491497515204" [label="sha256:618685e8a026dba5d192887705f5da38f835eddef8e14373748a491497515204" shape="plaintext"];
  "sha256:6a9f23d503b76dc93fca5d38e8dd698878ff2add8d6adb29c934fc316378e697" -> "sha256:a2513474bc1296da48903d18cdcda2a0768d325ecb77b5ecb6370e45bbba4eaa" [label=""];
  "sha256:3fb11b1ea7c1f6a525c874e4fd49a9d372c05ef3f58d1c80eeca85a4c992d250" -> "sha256:a2513474bc1296da48903d18cdcda2a0768d325ecb77b5ecb6370e45bbba4eaa" [label=""];
  "sha256:a2513474bc1296da48903d18cdcda2a0768d325ecb77b5ecb6370e45bbba4eaa" -> "sha256:65ecb006795e808c13268323aab50a3d4fc6748b4ca6be51d14fb9bd48c3a8d6" [label=""];
  "sha256:65ecb006795e808c13268323aab50a3d4fc6748b4ca6be51d14fb9bd48c3a8d6" -> "sha256:35a2cc92ad0dd6253ded0b6cc3c324e36925f2d1818a79b534633cae9fc6b901" [label=""];
  "sha256:35a2cc92ad0dd6253ded0b6cc3c324e36925f2d1818a79b534633cae9fc6b901" -> "sha256:618685e8a026dba5d192887705f5da38f835eddef8e14373748a491497515204" [label=""];
}

