[app/sources/181182791.Dockerfile]
digraph {
  "sha256:57f2b53a4ca62457ec38aeae2582240a037517ad7aa9557dcb895ff8139fcdfc" [label="docker-image://quay.io/pypa/manylinux1_i686@sha256:ce21b1a60278a5543dbe28d2a84af305b1f553bed12fd694bcc5f0b27db5616d" shape="ellipse"];
  "sha256:8b64b0e1072d050596388e332624eaba97043a9ee03e84b5d10b72c4cac4791b" [label="local://context" shape="ellipse"];
  "sha256:0cc0492799af59cfbbf8a32816e424867a4c9e10c37c6c5a42c1a44b6b92e6e0" [label="copy{src=/.travis, dest=/root/.travis}" shape="note"];
  "sha256:123f324a56b691288053066adce216ee2ec14d017a37dd58b7ed71d064cdacef" [label="mkdir{path=/root/.travis}" shape="note"];
  "sha256:c0a3cc6d413657af88394d018677d097f5eb699fba1484f9d9aa04b62024f6c3" [label="sha256:c0a3cc6d413657af88394d018677d097f5eb699fba1484f9d9aa04b62024f6c3" shape="plaintext"];
  "sha256:57f2b53a4ca62457ec38aeae2582240a037517ad7aa9557dcb895ff8139fcdfc" -> "sha256:0cc0492799af59cfbbf8a32816e424867a4c9e10c37c6c5a42c1a44b6b92e6e0" [label=""];
  "sha256:8b64b0e1072d050596388e332624eaba97043a9ee03e84b5d10b72c4cac4791b" -> "sha256:0cc0492799af59cfbbf8a32816e424867a4c9e10c37c6c5a42c1a44b6b92e6e0" [label=""];
  "sha256:0cc0492799af59cfbbf8a32816e424867a4c9e10c37c6c5a42c1a44b6b92e6e0" -> "sha256:123f324a56b691288053066adce216ee2ec14d017a37dd58b7ed71d064cdacef" [label=""];
  "sha256:123f324a56b691288053066adce216ee2ec14d017a37dd58b7ed71d064cdacef" -> "sha256:c0a3cc6d413657af88394d018677d097f5eb699fba1484f9d9aa04b62024f6c3" [label=""];
}

