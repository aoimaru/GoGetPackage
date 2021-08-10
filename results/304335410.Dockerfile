[app/sources/304335410.Dockerfile]
digraph {
  "sha256:512887e16c73923303517adb2ae6fb2ff44c051f567c000798cb952e25b55d0f" [label="local://context" shape="ellipse"];
  "sha256:5da17fded710dba906dfcba067a0581f19f8cbd7a913d132b1eb5d0458c6dcd1" [label="docker-image://docker.io/nacyot/carbon-base:latest" shape="ellipse"];
  "sha256:821857e53170c42550422e5ad015d7e7aee3378d9d02c701820117dc3f711e5f" [label="copy{src=/config, dest=/opt/graphite/conf/}" shape="note"];
  "sha256:ec1ca780d187e82116d8a064256231be32994d2f9b153054b6afc24c583b6291" [label="copy{src=/setup_configs.sh, dest=/opt/graphite/setup_configs.sh}" shape="note"];
  "sha256:09a19d21613edf1f592555d87358c9555b2899baab4dce4e462e8bb96f7d6e91" [label="copy{src=/run.sh, dest=/opt/graphite/run.sh}" shape="note"];
  "sha256:f528b26968ed62da909c2f457eea3dce990ca0fbf4e018e1c778b215ce3696a3" [label="mkdir{path=/opt/graphite}" shape="note"];
  "sha256:ff7adb38b99abeaacc2bc6cd1beadb94cfda2de00729833317e90d4b196ba761" [label="sha256:ff7adb38b99abeaacc2bc6cd1beadb94cfda2de00729833317e90d4b196ba761" shape="plaintext"];
  "sha256:5da17fded710dba906dfcba067a0581f19f8cbd7a913d132b1eb5d0458c6dcd1" -> "sha256:821857e53170c42550422e5ad015d7e7aee3378d9d02c701820117dc3f711e5f" [label=""];
  "sha256:512887e16c73923303517adb2ae6fb2ff44c051f567c000798cb952e25b55d0f" -> "sha256:821857e53170c42550422e5ad015d7e7aee3378d9d02c701820117dc3f711e5f" [label=""];
  "sha256:821857e53170c42550422e5ad015d7e7aee3378d9d02c701820117dc3f711e5f" -> "sha256:ec1ca780d187e82116d8a064256231be32994d2f9b153054b6afc24c583b6291" [label=""];
  "sha256:512887e16c73923303517adb2ae6fb2ff44c051f567c000798cb952e25b55d0f" -> "sha256:ec1ca780d187e82116d8a064256231be32994d2f9b153054b6afc24c583b6291" [label=""];
  "sha256:ec1ca780d187e82116d8a064256231be32994d2f9b153054b6afc24c583b6291" -> "sha256:09a19d21613edf1f592555d87358c9555b2899baab4dce4e462e8bb96f7d6e91" [label=""];
  "sha256:512887e16c73923303517adb2ae6fb2ff44c051f567c000798cb952e25b55d0f" -> "sha256:09a19d21613edf1f592555d87358c9555b2899baab4dce4e462e8bb96f7d6e91" [label=""];
  "sha256:09a19d21613edf1f592555d87358c9555b2899baab4dce4e462e8bb96f7d6e91" -> "sha256:f528b26968ed62da909c2f457eea3dce990ca0fbf4e018e1c778b215ce3696a3" [label=""];
  "sha256:f528b26968ed62da909c2f457eea3dce990ca0fbf4e018e1c778b215ce3696a3" -> "sha256:ff7adb38b99abeaacc2bc6cd1beadb94cfda2de00729833317e90d4b196ba761" [label=""];
}

