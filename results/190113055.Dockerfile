[app/sources/190113055.Dockerfile]
digraph {
  "sha256:2d0d03105704799b3fd06586f062c46478453662942ff8bda8d1de67faa44ed9" [label="docker-image://docker.io/hilbert/nodejs:someversion" shape="ellipse"];
  "sha256:d8409cf73d160da201de1e2cb131676203ab7c54346a07e9d0164196c390c11f" [label="/bin/sh -c update.sh && install.sh unzip" shape="box"];
  "sha256:7c774b2bc4415ddf834302cea9b124b3a4434d196a39eb094ab4dc0508804d21" [label="/bin/sh -c mkdir /usr/local/src/meshcommander && cd /usr/local/src/meshcommander && wget -q \"http://info.meshcentral.com/downloads/mdtk/meshcommandersource.zip\" && unzip meshcommandersource.zip && rm meshcommandersource.zip && cd MeshCommander/NodeJS && npm install" shape="box"];
  "sha256:0c438d6255a9f00aecc271b85068285875d47c8795ffccd381987c5a6b3a96d0" [label="/bin/sh -c echo -e '#!/bin/sh\\ncd /usr/local/src/meshcommander/MeshCommander/NodeJS/ && exec node commander.js $@\\n' > /usr/local/bin/runmeshcmdr.sh && chmod +x /usr/local/bin/runmeshcmdr.sh" shape="box"];
  "sha256:97fb2de29fc26e829b3156e9075a32dc15a635ab01bb492fd98cd7e11c7a4d89" [label="sha256:97fb2de29fc26e829b3156e9075a32dc15a635ab01bb492fd98cd7e11c7a4d89" shape="plaintext"];
  "sha256:2d0d03105704799b3fd06586f062c46478453662942ff8bda8d1de67faa44ed9" -> "sha256:d8409cf73d160da201de1e2cb131676203ab7c54346a07e9d0164196c390c11f" [label=""];
  "sha256:d8409cf73d160da201de1e2cb131676203ab7c54346a07e9d0164196c390c11f" -> "sha256:7c774b2bc4415ddf834302cea9b124b3a4434d196a39eb094ab4dc0508804d21" [label=""];
  "sha256:7c774b2bc4415ddf834302cea9b124b3a4434d196a39eb094ab4dc0508804d21" -> "sha256:0c438d6255a9f00aecc271b85068285875d47c8795ffccd381987c5a6b3a96d0" [label=""];
  "sha256:0c438d6255a9f00aecc271b85068285875d47c8795ffccd381987c5a6b3a96d0" -> "sha256:97fb2de29fc26e829b3156e9075a32dc15a635ab01bb492fd98cd7e11c7a4d89" [label=""];
}

