[app/sources/134214144.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:bb57cbac80fd350cc87c8dd69ad6432643e8d78a3313d7b90b23a4ea6d0de4f0" [label="/bin/sh -c addgroup -g 886 thethings && adduser -u 886 -S -G thethings thethings" shape="box"];
  "sha256:aab6e8f496425671e26e612f350b38445e8707dc1c76a5493b7c8143aee8ed3f" [label="/bin/sh -c apk --update --no-cache add ca-certificates curl" shape="box"];
  "sha256:b49b59f6e21c1aeaafe811c5d0e1624e33c9b2c88991a5c87e961fbc6068a261" [label="local://context" shape="ellipse"];
  "sha256:d2ee447b9ef3ea8c18c706e16c8b6a94a6e89cdbb602ea5f6d40943c3a674a0b" [label="copy{src=/ttn-lw-stack, dest=/bin/ttn-lw-stack}" shape="note"];
  "sha256:6f13b84d07a04d4d8c634b571080971a09929491c922db87353088b4aec2d43d" [label="/bin/sh -c ln -s /bin/ttn-lw-stack /bin/stack" shape="box"];
  "sha256:3827e74453094afcc723609c91c207abe748edd700074700979ed0c9d6415ba7" [label="/bin/sh -c chmod 755 /bin/ttn-lw-stack" shape="box"];
  "sha256:c17310ee88aa1491da022dcf43f031d244b0def233c9aaa9044389fd69bb2a0c" [label="copy{src=/ttn-lw-cli, dest=/bin/ttn-lw-cli}" shape="note"];
  "sha256:e7d85c68b686aa4c64458549cbbd704341d06eac1ccf57532f214bf8785c5610" [label="/bin/sh -c ln -s /bin/ttn-lw-cli /bin/cli" shape="box"];
  "sha256:a1085cb0341eb2963e6ecb3270129ebc6d9ef33609baf9329de8a44cbb4a279a" [label="/bin/sh -c chmod 755 /bin/ttn-lw-cli" shape="box"];
  "sha256:984b5e5878b263f3a835579798e2e3137885cfeeefc40f7eb4f6e4e75bfcb62f" [label="copy{src=/public, dest=/srv/ttn-lorawan/public}" shape="note"];
  "sha256:7d1d4fa9974288eccf6253ab99f06cb46a7bfaa550fdbd33abfd9de450377288" [label="/bin/sh -c mkdir /srv/ttn-lorawan/public/blob" shape="box"];
  "sha256:9d00ab94489fe2e0d3d8dffd107b4ae3fa369be1bd66b2f3c73baa1f003a2ebf" [label="sha256:9d00ab94489fe2e0d3d8dffd107b4ae3fa369be1bd66b2f3c73baa1f003a2ebf" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:bb57cbac80fd350cc87c8dd69ad6432643e8d78a3313d7b90b23a4ea6d0de4f0" [label=""];
  "sha256:bb57cbac80fd350cc87c8dd69ad6432643e8d78a3313d7b90b23a4ea6d0de4f0" -> "sha256:aab6e8f496425671e26e612f350b38445e8707dc1c76a5493b7c8143aee8ed3f" [label=""];
  "sha256:aab6e8f496425671e26e612f350b38445e8707dc1c76a5493b7c8143aee8ed3f" -> "sha256:d2ee447b9ef3ea8c18c706e16c8b6a94a6e89cdbb602ea5f6d40943c3a674a0b" [label=""];
  "sha256:b49b59f6e21c1aeaafe811c5d0e1624e33c9b2c88991a5c87e961fbc6068a261" -> "sha256:d2ee447b9ef3ea8c18c706e16c8b6a94a6e89cdbb602ea5f6d40943c3a674a0b" [label=""];
  "sha256:d2ee447b9ef3ea8c18c706e16c8b6a94a6e89cdbb602ea5f6d40943c3a674a0b" -> "sha256:6f13b84d07a04d4d8c634b571080971a09929491c922db87353088b4aec2d43d" [label=""];
  "sha256:6f13b84d07a04d4d8c634b571080971a09929491c922db87353088b4aec2d43d" -> "sha256:3827e74453094afcc723609c91c207abe748edd700074700979ed0c9d6415ba7" [label=""];
  "sha256:3827e74453094afcc723609c91c207abe748edd700074700979ed0c9d6415ba7" -> "sha256:c17310ee88aa1491da022dcf43f031d244b0def233c9aaa9044389fd69bb2a0c" [label=""];
  "sha256:b49b59f6e21c1aeaafe811c5d0e1624e33c9b2c88991a5c87e961fbc6068a261" -> "sha256:c17310ee88aa1491da022dcf43f031d244b0def233c9aaa9044389fd69bb2a0c" [label=""];
  "sha256:c17310ee88aa1491da022dcf43f031d244b0def233c9aaa9044389fd69bb2a0c" -> "sha256:e7d85c68b686aa4c64458549cbbd704341d06eac1ccf57532f214bf8785c5610" [label=""];
  "sha256:e7d85c68b686aa4c64458549cbbd704341d06eac1ccf57532f214bf8785c5610" -> "sha256:a1085cb0341eb2963e6ecb3270129ebc6d9ef33609baf9329de8a44cbb4a279a" [label=""];
  "sha256:a1085cb0341eb2963e6ecb3270129ebc6d9ef33609baf9329de8a44cbb4a279a" -> "sha256:984b5e5878b263f3a835579798e2e3137885cfeeefc40f7eb4f6e4e75bfcb62f" [label=""];
  "sha256:b49b59f6e21c1aeaafe811c5d0e1624e33c9b2c88991a5c87e961fbc6068a261" -> "sha256:984b5e5878b263f3a835579798e2e3137885cfeeefc40f7eb4f6e4e75bfcb62f" [label=""];
  "sha256:984b5e5878b263f3a835579798e2e3137885cfeeefc40f7eb4f6e4e75bfcb62f" -> "sha256:7d1d4fa9974288eccf6253ab99f06cb46a7bfaa550fdbd33abfd9de450377288" [label=""];
  "sha256:7d1d4fa9974288eccf6253ab99f06cb46a7bfaa550fdbd33abfd9de450377288" -> "sha256:9d00ab94489fe2e0d3d8dffd107b4ae3fa369be1bd66b2f3c73baa1f003a2ebf" [label=""];
}

