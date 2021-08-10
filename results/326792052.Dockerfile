[app/sources/326792052.Dockerfile]
digraph {
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" [label="docker-image://docker.io/library/node:10-alpine" shape="ellipse"];
  "sha256:32158a4f1050e01a6a95063bb70e36ff4e55f25fbdb1f3854156d9ca3abae272" [label="local://context" shape="ellipse"];
  "sha256:8bbc0f816de4e655c459623e0256775252c5857e5375f203983b325977068132" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:356055a257e693bbe2a77244bda13d2633f6b10e00a7dad18078d188a440f274" [label="mkdir{path=/src}" shape="note"];
  "sha256:c48e2ae14b63b0c221ee6aef6c7daf69d26bffe6c2c59407d0032b79acb7e9b8" [label="/bin/sh -c yarn &&     yarn cache clean" shape="box"];
  "sha256:18ff732a5dca6a10593367ee60cb4524aad226d2ae4a086d19dd33c44e4acd9e" [label="copy{src=/src/tsconfig.json, dest=/opt/app/tsconfig.json}" shape="note"];
  "sha256:b79f80f66fd3c7b82e59f5d0986f6c1e98c1a1a6d4a0ca32e5937e84d9107482" [label="copy{src=/src/tslint.json, dest=/opt/app/tslint.json}" shape="note"];
  "sha256:254243c2c29d6064bbf7ad88fc6141268a67d34a32f732ee86bc68bda98e8aae" [label="copy{src=/src/config, dest=/opt/app/config}" shape="note"];
  "sha256:2bbdb2bdee12129dd0d3ff5cd7b3c64d3e02afe2bc3a540d594af0e9205d9249" [label="copy{src=/src/dist, dest=/opt/app}" shape="note"];
  "sha256:85478471d485db487bd1513cf822cb71767d06274cf83376c1a2f0249beffaa0" [label="copy{src=/src/node_modules, dest=/opt/app/node_modules}" shape="note"];
  "sha256:8599e4974cb75ccac40b5b683c81e7a544dbb449215f52e2bea47e589933e13b" [label="mkdir{path=/opt/app}" shape="note"];
  "sha256:12ccb78417692ec1f74b5e67d6f8668a8db7ff36c59f1464927d554276b6000a" [label="/bin/sh -c npm install pm2 -g" shape="box"];
  "sha256:3d232632dd11c977b69c84371122180744d2daf59d4c2449985e98194c4d7ccd" [label="sha256:3d232632dd11c977b69c84371122180744d2daf59d4c2449985e98194c4d7ccd" shape="plaintext"];
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" -> "sha256:8bbc0f816de4e655c459623e0256775252c5857e5375f203983b325977068132" [label=""];
  "sha256:32158a4f1050e01a6a95063bb70e36ff4e55f25fbdb1f3854156d9ca3abae272" -> "sha256:8bbc0f816de4e655c459623e0256775252c5857e5375f203983b325977068132" [label=""];
  "sha256:8bbc0f816de4e655c459623e0256775252c5857e5375f203983b325977068132" -> "sha256:356055a257e693bbe2a77244bda13d2633f6b10e00a7dad18078d188a440f274" [label=""];
  "sha256:356055a257e693bbe2a77244bda13d2633f6b10e00a7dad18078d188a440f274" -> "sha256:c48e2ae14b63b0c221ee6aef6c7daf69d26bffe6c2c59407d0032b79acb7e9b8" [label=""];
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" -> "sha256:18ff732a5dca6a10593367ee60cb4524aad226d2ae4a086d19dd33c44e4acd9e" [label=""];
  "sha256:c48e2ae14b63b0c221ee6aef6c7daf69d26bffe6c2c59407d0032b79acb7e9b8" -> "sha256:18ff732a5dca6a10593367ee60cb4524aad226d2ae4a086d19dd33c44e4acd9e" [label=""];
  "sha256:18ff732a5dca6a10593367ee60cb4524aad226d2ae4a086d19dd33c44e4acd9e" -> "sha256:b79f80f66fd3c7b82e59f5d0986f6c1e98c1a1a6d4a0ca32e5937e84d9107482" [label=""];
  "sha256:c48e2ae14b63b0c221ee6aef6c7daf69d26bffe6c2c59407d0032b79acb7e9b8" -> "sha256:b79f80f66fd3c7b82e59f5d0986f6c1e98c1a1a6d4a0ca32e5937e84d9107482" [label=""];
  "sha256:b79f80f66fd3c7b82e59f5d0986f6c1e98c1a1a6d4a0ca32e5937e84d9107482" -> "sha256:254243c2c29d6064bbf7ad88fc6141268a67d34a32f732ee86bc68bda98e8aae" [label=""];
  "sha256:c48e2ae14b63b0c221ee6aef6c7daf69d26bffe6c2c59407d0032b79acb7e9b8" -> "sha256:254243c2c29d6064bbf7ad88fc6141268a67d34a32f732ee86bc68bda98e8aae" [label=""];
  "sha256:254243c2c29d6064bbf7ad88fc6141268a67d34a32f732ee86bc68bda98e8aae" -> "sha256:2bbdb2bdee12129dd0d3ff5cd7b3c64d3e02afe2bc3a540d594af0e9205d9249" [label=""];
  "sha256:c48e2ae14b63b0c221ee6aef6c7daf69d26bffe6c2c59407d0032b79acb7e9b8" -> "sha256:2bbdb2bdee12129dd0d3ff5cd7b3c64d3e02afe2bc3a540d594af0e9205d9249" [label=""];
  "sha256:2bbdb2bdee12129dd0d3ff5cd7b3c64d3e02afe2bc3a540d594af0e9205d9249" -> "sha256:85478471d485db487bd1513cf822cb71767d06274cf83376c1a2f0249beffaa0" [label=""];
  "sha256:c48e2ae14b63b0c221ee6aef6c7daf69d26bffe6c2c59407d0032b79acb7e9b8" -> "sha256:85478471d485db487bd1513cf822cb71767d06274cf83376c1a2f0249beffaa0" [label=""];
  "sha256:85478471d485db487bd1513cf822cb71767d06274cf83376c1a2f0249beffaa0" -> "sha256:8599e4974cb75ccac40b5b683c81e7a544dbb449215f52e2bea47e589933e13b" [label=""];
  "sha256:8599e4974cb75ccac40b5b683c81e7a544dbb449215f52e2bea47e589933e13b" -> "sha256:12ccb78417692ec1f74b5e67d6f8668a8db7ff36c59f1464927d554276b6000a" [label=""];
  "sha256:12ccb78417692ec1f74b5e67d6f8668a8db7ff36c59f1464927d554276b6000a" -> "sha256:3d232632dd11c977b69c84371122180744d2daf59d4c2449985e98194c4d7ccd" [label=""];
}

