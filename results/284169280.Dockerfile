[app/sources/284169280.Dockerfile]
digraph {
  "sha256:ced18a299030830edd019691d2bb19733e239e934d5a7c06363a93d0f639471d" [label="docker-image://docker.io/uber/web-base-image:10.15.2" shape="ellipse"];
  "sha256:d3a367a4a5cf2a7d7397fba96c32f54eb7a3f05e0e2d71f667e8aee236cac396" [label="/bin/sh -c mkdir /monorepo" shape="box"];
  "sha256:fd52c912011d8f3f80e589607da359e64d57fa9c336be2b552077724633560ef" [label="mkdir{path=/monorepo}" shape="note"];
  "sha256:ed5d3345fa4a716eedfc1984d2b123b08a3787de19b8e98cecbeebf4b965c15f" [label="local://context" shape="ellipse"];
  "sha256:ecf234f23800e028aab2bdd2536eaa07b2a070e154f92c856399e8af855e1cbc" [label="copy{src=/, dest=/monorepo/}" shape="note"];
  "sha256:dfbbf724999a58e153f2ec6addb2a6795618164b01417b3774096c1859185b8a" [label="/bin/sh -c node common/scripts/install-run-rush install &&   node common/scripts/install-run-rush build" shape="box"];
  "sha256:4bbeff7d392c89d02e9a69a593ed6a75fc0a973b363e76b3213fe5adb5577ef3" [label="sha256:4bbeff7d392c89d02e9a69a593ed6a75fc0a973b363e76b3213fe5adb5577ef3" shape="plaintext"];
  "sha256:ced18a299030830edd019691d2bb19733e239e934d5a7c06363a93d0f639471d" -> "sha256:d3a367a4a5cf2a7d7397fba96c32f54eb7a3f05e0e2d71f667e8aee236cac396" [label=""];
  "sha256:d3a367a4a5cf2a7d7397fba96c32f54eb7a3f05e0e2d71f667e8aee236cac396" -> "sha256:fd52c912011d8f3f80e589607da359e64d57fa9c336be2b552077724633560ef" [label=""];
  "sha256:fd52c912011d8f3f80e589607da359e64d57fa9c336be2b552077724633560ef" -> "sha256:ecf234f23800e028aab2bdd2536eaa07b2a070e154f92c856399e8af855e1cbc" [label=""];
  "sha256:ed5d3345fa4a716eedfc1984d2b123b08a3787de19b8e98cecbeebf4b965c15f" -> "sha256:ecf234f23800e028aab2bdd2536eaa07b2a070e154f92c856399e8af855e1cbc" [label=""];
  "sha256:ecf234f23800e028aab2bdd2536eaa07b2a070e154f92c856399e8af855e1cbc" -> "sha256:dfbbf724999a58e153f2ec6addb2a6795618164b01417b3774096c1859185b8a" [label=""];
  "sha256:dfbbf724999a58e153f2ec6addb2a6795618164b01417b3774096c1859185b8a" -> "sha256:4bbeff7d392c89d02e9a69a593ed6a75fc0a973b363e76b3213fe5adb5577ef3" [label=""];
}

