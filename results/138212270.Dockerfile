[app/sources/138212270.Dockerfile]
digraph {
  "sha256:5ea5bde794c351fa2da4dc7afc93b29ba1c7e491fb36ef04d18e66d46b4441be" [label="docker-image://docker.io/dockerfile/java:latest" shape="ellipse"];
  "sha256:5a0bde2a0ca33b1571e1653e0e7a428996b5e75931bd32222d40f04a1316c30b" [label="/bin/sh -c mkdir -p /usr/local/dropship" shape="box"];
  "sha256:05bcc9b4e074545bf46747cd03bfd5df85184a368fe337dfbbee215024aec531" [label="/bin/sh -c curl -o /usr/local/dropship/dropship.jar http://repo1.maven.org/maven2/com/zulily/dropship/dropship/1.1/dropship-1.1.jar" shape="box"];
  "sha256:abda78f6d60d87e249bc6f8e62765e9f23b34061170082c172804c61a0bb6676" [label="sha256:abda78f6d60d87e249bc6f8e62765e9f23b34061170082c172804c61a0bb6676" shape="plaintext"];
  "sha256:5ea5bde794c351fa2da4dc7afc93b29ba1c7e491fb36ef04d18e66d46b4441be" -> "sha256:5a0bde2a0ca33b1571e1653e0e7a428996b5e75931bd32222d40f04a1316c30b" [label=""];
  "sha256:5a0bde2a0ca33b1571e1653e0e7a428996b5e75931bd32222d40f04a1316c30b" -> "sha256:05bcc9b4e074545bf46747cd03bfd5df85184a368fe337dfbbee215024aec531" [label=""];
  "sha256:05bcc9b4e074545bf46747cd03bfd5df85184a368fe337dfbbee215024aec531" -> "sha256:abda78f6d60d87e249bc6f8e62765e9f23b34061170082c172804c61a0bb6676" [label=""];
}

