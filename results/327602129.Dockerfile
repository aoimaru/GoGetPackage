[app/sources/327602129.Dockerfile]
digraph {
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" [label="docker-image://docker.io/library/node:10-alpine" shape="ellipse"];
  "sha256:7352edd287f679252054d02da15715429b342d37a9f191d9a505934c8997abf1" [label="/bin/sh -c cd /usr" shape="box"];
  "sha256:c76523a1a5a1c1e16f46d08bb68bda0461b095d9598acc96a5c863b1e2f988dc" [label="/bin/sh -c mkdir -p front" shape="box"];
  "sha256:1130dd26c659a46edcf8c32ac548a6b4b7f8530cff90259476956ad71516afe9" [label="mkdir{path=/usr/front}" shape="note"];
  "sha256:22991399b7334360815c0b60354e7b30952e8f5ec8c56eb0d3691c17a193f231" [label="local://context" shape="ellipse"];
  "sha256:15d04689b52a4f278bee3e52cb0417dc501b415d4773a4f8e1077d8176fa9553" [label="copy{src=/package.json, dest=/usr/front/}" shape="note"];
  "sha256:102e874b3ec479ccf136be934dbb3b75ab6151544dd6aa1e9df5c24ed1841543" [label="copy{src=/package-lock.json, dest=/usr/front/}" shape="note"];
  "sha256:d6f85adcae2a224dfd485b1e0b2ce7e7741f7f202b502c87a6cc3ece908d0cac" [label="/bin/sh -c npm install" shape="box"];
  "sha256:7d4003e8bfc9ee51aacf96a6611bfc22fe8769c331249bd658d1debf6e2df60d" [label="sha256:7d4003e8bfc9ee51aacf96a6611bfc22fe8769c331249bd658d1debf6e2df60d" shape="plaintext"];
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" -> "sha256:7352edd287f679252054d02da15715429b342d37a9f191d9a505934c8997abf1" [label=""];
  "sha256:7352edd287f679252054d02da15715429b342d37a9f191d9a505934c8997abf1" -> "sha256:c76523a1a5a1c1e16f46d08bb68bda0461b095d9598acc96a5c863b1e2f988dc" [label=""];
  "sha256:c76523a1a5a1c1e16f46d08bb68bda0461b095d9598acc96a5c863b1e2f988dc" -> "sha256:1130dd26c659a46edcf8c32ac548a6b4b7f8530cff90259476956ad71516afe9" [label=""];
  "sha256:1130dd26c659a46edcf8c32ac548a6b4b7f8530cff90259476956ad71516afe9" -> "sha256:15d04689b52a4f278bee3e52cb0417dc501b415d4773a4f8e1077d8176fa9553" [label=""];
  "sha256:22991399b7334360815c0b60354e7b30952e8f5ec8c56eb0d3691c17a193f231" -> "sha256:15d04689b52a4f278bee3e52cb0417dc501b415d4773a4f8e1077d8176fa9553" [label=""];
  "sha256:15d04689b52a4f278bee3e52cb0417dc501b415d4773a4f8e1077d8176fa9553" -> "sha256:102e874b3ec479ccf136be934dbb3b75ab6151544dd6aa1e9df5c24ed1841543" [label=""];
  "sha256:22991399b7334360815c0b60354e7b30952e8f5ec8c56eb0d3691c17a193f231" -> "sha256:102e874b3ec479ccf136be934dbb3b75ab6151544dd6aa1e9df5c24ed1841543" [label=""];
  "sha256:102e874b3ec479ccf136be934dbb3b75ab6151544dd6aa1e9df5c24ed1841543" -> "sha256:d6f85adcae2a224dfd485b1e0b2ce7e7741f7f202b502c87a6cc3ece908d0cac" [label=""];
  "sha256:d6f85adcae2a224dfd485b1e0b2ce7e7741f7f202b502c87a6cc3ece908d0cac" -> "sha256:7d4003e8bfc9ee51aacf96a6611bfc22fe8769c331249bd658d1debf6e2df60d" [label=""];
}

