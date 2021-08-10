[app/sources/189273637.Dockerfile]
digraph {
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" [label="docker-image://docker.io/library/node:8" shape="ellipse"];
  "sha256:e6aec63d7ee448169c7f9145ed1784ec6aad80d256373a6e7981bab504d8655e" [label="mkdir{path=/src}" shape="note"];
  "sha256:fdfdaa8a165ee8bd522e7aa55ad42713e6ce66f70a064518ec16e7c28fef88f6" [label="local://context" shape="ellipse"];
  "sha256:f6a3f6d627f5e5c3da067b2859efb835cad05389f401872e7c61fb083ba86ab8" [label="copy{src=/package.json, dest=/src/}" shape="note"];
  "sha256:5f167da65ebd8429530c9e03f958634a5c06d99f8baa78b2a151eb36cb2d72c1" [label="/bin/sh -c npm install" shape="box"];
  "sha256:145761096134c9326782af561516f1e1cae7424563ef807c15e2f4bac3f4deba" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:4359848dc2d04b08a0cb4091151f3adb73d083b2aad9f7ec97c698e7f880525b" [label="sha256:4359848dc2d04b08a0cb4091151f3adb73d083b2aad9f7ec97c698e7f880525b" shape="plaintext"];
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" -> "sha256:e6aec63d7ee448169c7f9145ed1784ec6aad80d256373a6e7981bab504d8655e" [label=""];
  "sha256:e6aec63d7ee448169c7f9145ed1784ec6aad80d256373a6e7981bab504d8655e" -> "sha256:f6a3f6d627f5e5c3da067b2859efb835cad05389f401872e7c61fb083ba86ab8" [label=""];
  "sha256:fdfdaa8a165ee8bd522e7aa55ad42713e6ce66f70a064518ec16e7c28fef88f6" -> "sha256:f6a3f6d627f5e5c3da067b2859efb835cad05389f401872e7c61fb083ba86ab8" [label=""];
  "sha256:f6a3f6d627f5e5c3da067b2859efb835cad05389f401872e7c61fb083ba86ab8" -> "sha256:5f167da65ebd8429530c9e03f958634a5c06d99f8baa78b2a151eb36cb2d72c1" [label=""];
  "sha256:5f167da65ebd8429530c9e03f958634a5c06d99f8baa78b2a151eb36cb2d72c1" -> "sha256:145761096134c9326782af561516f1e1cae7424563ef807c15e2f4bac3f4deba" [label=""];
  "sha256:fdfdaa8a165ee8bd522e7aa55ad42713e6ce66f70a064518ec16e7c28fef88f6" -> "sha256:145761096134c9326782af561516f1e1cae7424563ef807c15e2f4bac3f4deba" [label=""];
  "sha256:145761096134c9326782af561516f1e1cae7424563ef807c15e2f4bac3f4deba" -> "sha256:4359848dc2d04b08a0cb4091151f3adb73d083b2aad9f7ec97c698e7f880525b" [label=""];
}

