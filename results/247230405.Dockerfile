[app/sources/247230405.Dockerfile]
digraph {
  "sha256:da7ead4b72335fcac5b466093d61373b693af7446eea4871cf11459af66850de" [label="local://context" shape="ellipse"];
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" [label="docker-image://docker.io/library/node:8" shape="ellipse"];
  "sha256:94002f270eb2e578fcb67d4f099ecff44b90377367333fa3a8f4442db095006d" [label="/bin/sh -c apt-get update \t&& apt-get install --yes libusb-1.0-0-dev" shape="box"];
  "sha256:46168214a5a67f2cd3c6cc3ca1fffb54888a0851786912f14bb8c1284a89e9ec" [label="copy{src=/package.json, dest=/app/package.json}" shape="note"];
  "sha256:514f6643fd8ebfa28351a7da59e38635f76365cfc2b89c8764cdbae2a1cb9c7e" [label="copy{src=/package-lock.json, dest=/app/package-lock.json}" shape="note"];
  "sha256:309247a82a1e4ea185dde9ad3a55afb04ac651d6984222ed10abc0316c20970b" [label="mkdir{path=/app}" shape="note"];
  "sha256:76ce781040c6611b3c7141a40d9af529c04f5d3bca4d077bfd0895c44cca12c1" [label="/bin/sh -c npm install" shape="box"];
  "sha256:e67daf04b10e5ac70f5fa7cb6b586ea415f82c5dafa0b1445f4129cbd4c73fa8" [label="copy{src=/tsconfig.json, dest=/app/tsconfig.json}" shape="note"];
  "sha256:0e311aa9c674966e540912887d41cdcf19071a5704ee476caef3416036cc3595" [label="copy{src=/source, dest=/app/source/}" shape="note"];
  "sha256:033ee037c3b31df73f38db4231a32af6ccccf40363d8a00da21b738d0dd912d1" [label="copy{src=/tests, dest=/app/tests/}" shape="note"];
  "sha256:43e04d88e0e66ff31fc7dbabad5a835ccfef202d37526b3730f0b271ef0733d9" [label="copy{src=/typings, dest=/app/typings/}" shape="note"];
  "sha256:783286fe9f7ac8b66a09e483958a10175fabb48104a925d3b55d9552820dc193" [label="copy{src=/LICENSE, dest=/app/LICENSE}" shape="note"];
  "sha256:fb474ca63b75472d76aeecf03b22934432c02abc6340e3847def2abc10bc21d8" [label="copy{src=/README.md, dest=/app/README.md}" shape="note"];
  "sha256:45e3a38950285dba972d68a8d5ca7f7beb7d4d385cc853112ea72360b694061c" [label="/bin/sh -c npm run build" shape="box"];
  "sha256:f50d42c95f008e6e67efbcddc5acddbd28df3c809dc2ea6c3e50ee5e4638323f" [label="sha256:f50d42c95f008e6e67efbcddc5acddbd28df3c809dc2ea6c3e50ee5e4638323f" shape="plaintext"];
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" -> "sha256:94002f270eb2e578fcb67d4f099ecff44b90377367333fa3a8f4442db095006d" [label=""];
  "sha256:94002f270eb2e578fcb67d4f099ecff44b90377367333fa3a8f4442db095006d" -> "sha256:46168214a5a67f2cd3c6cc3ca1fffb54888a0851786912f14bb8c1284a89e9ec" [label=""];
  "sha256:da7ead4b72335fcac5b466093d61373b693af7446eea4871cf11459af66850de" -> "sha256:46168214a5a67f2cd3c6cc3ca1fffb54888a0851786912f14bb8c1284a89e9ec" [label=""];
  "sha256:46168214a5a67f2cd3c6cc3ca1fffb54888a0851786912f14bb8c1284a89e9ec" -> "sha256:514f6643fd8ebfa28351a7da59e38635f76365cfc2b89c8764cdbae2a1cb9c7e" [label=""];
  "sha256:da7ead4b72335fcac5b466093d61373b693af7446eea4871cf11459af66850de" -> "sha256:514f6643fd8ebfa28351a7da59e38635f76365cfc2b89c8764cdbae2a1cb9c7e" [label=""];
  "sha256:514f6643fd8ebfa28351a7da59e38635f76365cfc2b89c8764cdbae2a1cb9c7e" -> "sha256:309247a82a1e4ea185dde9ad3a55afb04ac651d6984222ed10abc0316c20970b" [label=""];
  "sha256:309247a82a1e4ea185dde9ad3a55afb04ac651d6984222ed10abc0316c20970b" -> "sha256:76ce781040c6611b3c7141a40d9af529c04f5d3bca4d077bfd0895c44cca12c1" [label=""];
  "sha256:76ce781040c6611b3c7141a40d9af529c04f5d3bca4d077bfd0895c44cca12c1" -> "sha256:e67daf04b10e5ac70f5fa7cb6b586ea415f82c5dafa0b1445f4129cbd4c73fa8" [label=""];
  "sha256:da7ead4b72335fcac5b466093d61373b693af7446eea4871cf11459af66850de" -> "sha256:e67daf04b10e5ac70f5fa7cb6b586ea415f82c5dafa0b1445f4129cbd4c73fa8" [label=""];
  "sha256:e67daf04b10e5ac70f5fa7cb6b586ea415f82c5dafa0b1445f4129cbd4c73fa8" -> "sha256:0e311aa9c674966e540912887d41cdcf19071a5704ee476caef3416036cc3595" [label=""];
  "sha256:da7ead4b72335fcac5b466093d61373b693af7446eea4871cf11459af66850de" -> "sha256:0e311aa9c674966e540912887d41cdcf19071a5704ee476caef3416036cc3595" [label=""];
  "sha256:0e311aa9c674966e540912887d41cdcf19071a5704ee476caef3416036cc3595" -> "sha256:033ee037c3b31df73f38db4231a32af6ccccf40363d8a00da21b738d0dd912d1" [label=""];
  "sha256:da7ead4b72335fcac5b466093d61373b693af7446eea4871cf11459af66850de" -> "sha256:033ee037c3b31df73f38db4231a32af6ccccf40363d8a00da21b738d0dd912d1" [label=""];
  "sha256:033ee037c3b31df73f38db4231a32af6ccccf40363d8a00da21b738d0dd912d1" -> "sha256:43e04d88e0e66ff31fc7dbabad5a835ccfef202d37526b3730f0b271ef0733d9" [label=""];
  "sha256:da7ead4b72335fcac5b466093d61373b693af7446eea4871cf11459af66850de" -> "sha256:43e04d88e0e66ff31fc7dbabad5a835ccfef202d37526b3730f0b271ef0733d9" [label=""];
  "sha256:43e04d88e0e66ff31fc7dbabad5a835ccfef202d37526b3730f0b271ef0733d9" -> "sha256:783286fe9f7ac8b66a09e483958a10175fabb48104a925d3b55d9552820dc193" [label=""];
  "sha256:da7ead4b72335fcac5b466093d61373b693af7446eea4871cf11459af66850de" -> "sha256:783286fe9f7ac8b66a09e483958a10175fabb48104a925d3b55d9552820dc193" [label=""];
  "sha256:783286fe9f7ac8b66a09e483958a10175fabb48104a925d3b55d9552820dc193" -> "sha256:fb474ca63b75472d76aeecf03b22934432c02abc6340e3847def2abc10bc21d8" [label=""];
  "sha256:da7ead4b72335fcac5b466093d61373b693af7446eea4871cf11459af66850de" -> "sha256:fb474ca63b75472d76aeecf03b22934432c02abc6340e3847def2abc10bc21d8" [label=""];
  "sha256:fb474ca63b75472d76aeecf03b22934432c02abc6340e3847def2abc10bc21d8" -> "sha256:45e3a38950285dba972d68a8d5ca7f7beb7d4d385cc853112ea72360b694061c" [label=""];
  "sha256:45e3a38950285dba972d68a8d5ca7f7beb7d4d385cc853112ea72360b694061c" -> "sha256:f50d42c95f008e6e67efbcddc5acddbd28df3c809dc2ea6c3e50ee5e4638323f" [label=""];
}

