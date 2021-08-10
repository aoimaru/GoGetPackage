[app/sources/435630205.Dockerfile]
digraph {
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" [label="docker-image://docker.io/library/node:10-alpine" shape="ellipse"];
  "sha256:99fe835a059af24469a09594a15771fac370ad0f72c684fce4a01da748e24c47" [label="mkdir{path=/opt/app}" shape="note"];
  "sha256:7c512fd3f2023d41813b58776460898c06456f549e7234849dba72b5a200ed88" [label="local://context" shape="ellipse"];
  "sha256:1db8db1759a6384bd729d062413de70b509a032c220a2fc4bdcdf4b9e4de56d8" [label="copy{src=/, dest=/opt/app}" shape="note"];
  "sha256:3005f57053309de611acae673bfa9dfaf18057b1b52eca571f8e062ee5012395" [label="/bin/sh -c touch /usr/bin/start.sh # this is the script which will run on start" shape="box"];
  "sha256:6de48dda906b6e1b196167206d37225635c413b0da0176e26664347f56c7de7e" [label="/bin/sh -c echo 'npm install --production' >> /usr/bin/start.sh" shape="box"];
  "sha256:c300a917700bedb0b331a21966e44a845e75056ad494bc7c2195cb8148f85611" [label="/bin/sh -c echo 'node /opt/app/server/server.js' >> /usr/bin/start.sh" shape="box"];
  "sha256:5510f9f0f71d69ece19115bc8d5cbc9716f8126afa0398d968202cf4183d0d8c" [label="sha256:5510f9f0f71d69ece19115bc8d5cbc9716f8126afa0398d968202cf4183d0d8c" shape="plaintext"];
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" -> "sha256:99fe835a059af24469a09594a15771fac370ad0f72c684fce4a01da748e24c47" [label=""];
  "sha256:99fe835a059af24469a09594a15771fac370ad0f72c684fce4a01da748e24c47" -> "sha256:1db8db1759a6384bd729d062413de70b509a032c220a2fc4bdcdf4b9e4de56d8" [label=""];
  "sha256:7c512fd3f2023d41813b58776460898c06456f549e7234849dba72b5a200ed88" -> "sha256:1db8db1759a6384bd729d062413de70b509a032c220a2fc4bdcdf4b9e4de56d8" [label=""];
  "sha256:1db8db1759a6384bd729d062413de70b509a032c220a2fc4bdcdf4b9e4de56d8" -> "sha256:3005f57053309de611acae673bfa9dfaf18057b1b52eca571f8e062ee5012395" [label=""];
  "sha256:3005f57053309de611acae673bfa9dfaf18057b1b52eca571f8e062ee5012395" -> "sha256:6de48dda906b6e1b196167206d37225635c413b0da0176e26664347f56c7de7e" [label=""];
  "sha256:6de48dda906b6e1b196167206d37225635c413b0da0176e26664347f56c7de7e" -> "sha256:c300a917700bedb0b331a21966e44a845e75056ad494bc7c2195cb8148f85611" [label=""];
  "sha256:c300a917700bedb0b331a21966e44a845e75056ad494bc7c2195cb8148f85611" -> "sha256:5510f9f0f71d69ece19115bc8d5cbc9716f8126afa0398d968202cf4183d0d8c" [label=""];
}

