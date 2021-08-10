[app/sources/334758913.Dockerfile]
digraph {
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" [label="docker-image://docker.io/library/python:3.6" shape="ellipse"];
  "sha256:7b9f311cc19b6fadf43d11c3de235efc8f57444e921897aa87c2d7271befa264" [label="/bin/sh -c apt-get update; apt-get install -y openjdk-8-jre" shape="box"];
  "sha256:f37f205f1fb1625c202112e014634d8ab9827315545b3986d42665610bda53fd" [label="mkdir{path=/app}" shape="note"];
  "sha256:e1c5c4ee24984e53496dc684509487eeb7bea6c028138ede59ea4b3fa7460a4c" [label="local://context" shape="ellipse"];
  "sha256:3d722b1ac8e9fc1faccb76b7dbda4759057520ab071b54138fbbba76fbdec6d8" [label="copy{src=/setup.py, dest=/app}" shape="note"];
  "sha256:97ee9fed2394575e408f80cee940cdb5372bd470a1a3a5422e335e2a30d126c5" [label="copy{src=/delphi, dest=/app/delphi}" shape="note"];
  "sha256:b25ece3f01ae942090d4f759e646262f6fed7cc1b09eaa7d789077dacf346a3f" [label="/bin/sh -c pip install -e ." shape="box"];
  "sha256:63d99ab70ce9a3dc980d4bdf8d62a1afaa9f0aafd97a495e1b5a69b610a7eafc" [label="sha256:63d99ab70ce9a3dc980d4bdf8d62a1afaa9f0aafd97a495e1b5a69b610a7eafc" shape="plaintext"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" -> "sha256:7b9f311cc19b6fadf43d11c3de235efc8f57444e921897aa87c2d7271befa264" [label=""];
  "sha256:7b9f311cc19b6fadf43d11c3de235efc8f57444e921897aa87c2d7271befa264" -> "sha256:f37f205f1fb1625c202112e014634d8ab9827315545b3986d42665610bda53fd" [label=""];
  "sha256:f37f205f1fb1625c202112e014634d8ab9827315545b3986d42665610bda53fd" -> "sha256:3d722b1ac8e9fc1faccb76b7dbda4759057520ab071b54138fbbba76fbdec6d8" [label=""];
  "sha256:e1c5c4ee24984e53496dc684509487eeb7bea6c028138ede59ea4b3fa7460a4c" -> "sha256:3d722b1ac8e9fc1faccb76b7dbda4759057520ab071b54138fbbba76fbdec6d8" [label=""];
  "sha256:3d722b1ac8e9fc1faccb76b7dbda4759057520ab071b54138fbbba76fbdec6d8" -> "sha256:97ee9fed2394575e408f80cee940cdb5372bd470a1a3a5422e335e2a30d126c5" [label=""];
  "sha256:e1c5c4ee24984e53496dc684509487eeb7bea6c028138ede59ea4b3fa7460a4c" -> "sha256:97ee9fed2394575e408f80cee940cdb5372bd470a1a3a5422e335e2a30d126c5" [label=""];
  "sha256:97ee9fed2394575e408f80cee940cdb5372bd470a1a3a5422e335e2a30d126c5" -> "sha256:b25ece3f01ae942090d4f759e646262f6fed7cc1b09eaa7d789077dacf346a3f" [label=""];
  "sha256:b25ece3f01ae942090d4f759e646262f6fed7cc1b09eaa7d789077dacf346a3f" -> "sha256:63d99ab70ce9a3dc980d4bdf8d62a1afaa9f0aafd97a495e1b5a69b610a7eafc" [label=""];
}

