[app/sources/278534709.Dockerfile]
digraph {
  "sha256:0f85c81d05d14a95cdc43adb8744bfe3f9a65f11568b091593bee2f1ef5beb9d" [label="docker-image://docker.io/library/openjdk:8-alpine" shape="ellipse"];
  "sha256:f40367b997ff0e16d9081887ad462f19e03d50d461e3dc830510c30070e20f49" [label="/bin/sh -c apk add --no-cache --virtual=.dependencies tar wget bash rsync" shape="box"];
  "sha256:aa57ba264ceefe48899b1405ebc58af98239a2aedae24166cfe29256e70107dc" [label="/bin/sh -c wget -qO- \"https://cocl.us/sbt-$SBT_VERSION.tgz\"     | tar xzf - -C /usr/local --strip-components=1     && sbt exit" shape="box"];
  "sha256:e6362c0bc56566bdd1e9384d1daed3568cbbacfd062d369e7a47d622ead452a8" [label="local://context" shape="ellipse"];
  "sha256:4ae8ed4f7646052d147e4c5914722900bcd6e24d659ec6d1653366ecfa34a9b0" [label="copy{src=/, dest=/app/spark-nlp}" shape="note"];
  "sha256:36f7c71d805dba0468b2e712806f5753b4cab485cc666183e59bdcaee2f6adde" [label="mkdir{path=/app/spark-nlp}" shape="note"];
  "sha256:33a5a0b46a8764b6f196e7d29742b4004df1ebf8c6304e5ad7518c4a53f78e95" [label="/bin/sh -c sbt publish-local" shape="box"];
  "sha256:4f966c6ce013b0a1221d625191a9f20f16cd144881c2541f55ed93bc03afb5a5" [label="sha256:4f966c6ce013b0a1221d625191a9f20f16cd144881c2541f55ed93bc03afb5a5" shape="plaintext"];
  "sha256:0f85c81d05d14a95cdc43adb8744bfe3f9a65f11568b091593bee2f1ef5beb9d" -> "sha256:f40367b997ff0e16d9081887ad462f19e03d50d461e3dc830510c30070e20f49" [label=""];
  "sha256:f40367b997ff0e16d9081887ad462f19e03d50d461e3dc830510c30070e20f49" -> "sha256:aa57ba264ceefe48899b1405ebc58af98239a2aedae24166cfe29256e70107dc" [label=""];
  "sha256:aa57ba264ceefe48899b1405ebc58af98239a2aedae24166cfe29256e70107dc" -> "sha256:4ae8ed4f7646052d147e4c5914722900bcd6e24d659ec6d1653366ecfa34a9b0" [label=""];
  "sha256:e6362c0bc56566bdd1e9384d1daed3568cbbacfd062d369e7a47d622ead452a8" -> "sha256:4ae8ed4f7646052d147e4c5914722900bcd6e24d659ec6d1653366ecfa34a9b0" [label=""];
  "sha256:4ae8ed4f7646052d147e4c5914722900bcd6e24d659ec6d1653366ecfa34a9b0" -> "sha256:36f7c71d805dba0468b2e712806f5753b4cab485cc666183e59bdcaee2f6adde" [label=""];
  "sha256:36f7c71d805dba0468b2e712806f5753b4cab485cc666183e59bdcaee2f6adde" -> "sha256:33a5a0b46a8764b6f196e7d29742b4004df1ebf8c6304e5ad7518c4a53f78e95" [label=""];
  "sha256:33a5a0b46a8764b6f196e7d29742b4004df1ebf8c6304e5ad7518c4a53f78e95" -> "sha256:4f966c6ce013b0a1221d625191a9f20f16cd144881c2541f55ed93bc03afb5a5" [label=""];
}

