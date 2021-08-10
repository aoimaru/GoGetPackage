[app/sources/147229651.Dockerfile]
digraph {
  "sha256:aa8c6d466deae7796ca5acc9ee07db5f1691ec651f8a5cef6452ac9e82cb2f83" [label="docker-image://docker.io/library/alpine:3.2" shape="ellipse"];
  "sha256:22ee1439fa93765782cda104cb720f9522404cdd85a2d7a6d4a91e35b1998317" [label="local://context" shape="ellipse"];
  "sha256:51c4a2f4ad97e21e3fd4360e1be33d5869e497cd13a8c6480e67ba283e356827" [label="copy{src=/html, dest=/html}" shape="note"];
  "sha256:011565c38bae29d31c64c43688a76259b05a9ff807c774887e39dc2b1a5d2192" [label="copy{src=/template-web, dest=/template-web}" shape="note"];
  "sha256:064f3cb91ba87b58f6d8548075806afa714257e62bf8e484f9d788998d6e885e" [label="sha256:064f3cb91ba87b58f6d8548075806afa714257e62bf8e484f9d788998d6e885e" shape="plaintext"];
  "sha256:aa8c6d466deae7796ca5acc9ee07db5f1691ec651f8a5cef6452ac9e82cb2f83" -> "sha256:51c4a2f4ad97e21e3fd4360e1be33d5869e497cd13a8c6480e67ba283e356827" [label=""];
  "sha256:22ee1439fa93765782cda104cb720f9522404cdd85a2d7a6d4a91e35b1998317" -> "sha256:51c4a2f4ad97e21e3fd4360e1be33d5869e497cd13a8c6480e67ba283e356827" [label=""];
  "sha256:51c4a2f4ad97e21e3fd4360e1be33d5869e497cd13a8c6480e67ba283e356827" -> "sha256:011565c38bae29d31c64c43688a76259b05a9ff807c774887e39dc2b1a5d2192" [label=""];
  "sha256:22ee1439fa93765782cda104cb720f9522404cdd85a2d7a6d4a91e35b1998317" -> "sha256:011565c38bae29d31c64c43688a76259b05a9ff807c774887e39dc2b1a5d2192" [label=""];
  "sha256:011565c38bae29d31c64c43688a76259b05a9ff807c774887e39dc2b1a5d2192" -> "sha256:064f3cb91ba87b58f6d8548075806afa714257e62bf8e484f9d788998d6e885e" [label=""];
}

