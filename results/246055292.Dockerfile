[app/sources/246055292.Dockerfile]
digraph {
  "sha256:38ff64469a98f5d6f1abe35c795875ce23c82f11747487f3ec69a549dc3c5a9e" [label="local://context" shape="ellipse"];
  "sha256:632b91b92bc0ae3d389742e00754146d26fc75d5d4dc6838996e54456f23d5f1" [label="docker-image://docker.io/library/node:12.4.0" shape="ellipse"];
  "sha256:09c4923923be7f98fd49556864fb9cb35efaebba3ae8c4fc80601ffaf8d71418" [label="/bin/sh -c npm -g install pm2" shape="box"];
  "sha256:f8a3458cf34278b2d208e24bf75e35a4d425e856d4bce54d01b2912e89b83b26" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:d83d5c376f19f9c8651b356ce7089147dd584c2268a51968a0de04ce47bff912" [label="copy{src=/app.js, dest=/usr/src/app/},copy{src=/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:d57be0dedbf5b23b615ba882f8da2251a994223007d762284d186f7e68238267" [label="/bin/sh -c npm install" shape="box"];
  "sha256:125d03fe2e484eb924ee14016c9697ecf13d68fcd2c10cab224a67d2251a0f1e" [label="sha256:125d03fe2e484eb924ee14016c9697ecf13d68fcd2c10cab224a67d2251a0f1e" shape="plaintext"];
  "sha256:632b91b92bc0ae3d389742e00754146d26fc75d5d4dc6838996e54456f23d5f1" -> "sha256:09c4923923be7f98fd49556864fb9cb35efaebba3ae8c4fc80601ffaf8d71418" [label=""];
  "sha256:09c4923923be7f98fd49556864fb9cb35efaebba3ae8c4fc80601ffaf8d71418" -> "sha256:f8a3458cf34278b2d208e24bf75e35a4d425e856d4bce54d01b2912e89b83b26" [label=""];
  "sha256:f8a3458cf34278b2d208e24bf75e35a4d425e856d4bce54d01b2912e89b83b26" -> "sha256:d83d5c376f19f9c8651b356ce7089147dd584c2268a51968a0de04ce47bff912" [label=""];
  "sha256:38ff64469a98f5d6f1abe35c795875ce23c82f11747487f3ec69a549dc3c5a9e" -> "sha256:d83d5c376f19f9c8651b356ce7089147dd584c2268a51968a0de04ce47bff912" [label=""];
  "sha256:d83d5c376f19f9c8651b356ce7089147dd584c2268a51968a0de04ce47bff912" -> "sha256:d57be0dedbf5b23b615ba882f8da2251a994223007d762284d186f7e68238267" [label=""];
  "sha256:d57be0dedbf5b23b615ba882f8da2251a994223007d762284d186f7e68238267" -> "sha256:125d03fe2e484eb924ee14016c9697ecf13d68fcd2c10cab224a67d2251a0f1e" [label=""];
}

