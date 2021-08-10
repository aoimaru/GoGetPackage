[app/sources/252785929.Dockerfile]
digraph {
  "sha256:6a41fefa1410c1f6062716666d3abb7d0e2eb55eb9a1eb72a092b241a31ff2c6" [label="local://context" shape="ellipse"];
  "sha256:904f3469ca328e88114669d8224370f825ca6e5d478b1aed3138dec9955e2ad9" [label="docker-image://docker.io/djmattyg007/arch-runit-base:2017.10.27-1" shape="ellipse"];
  "sha256:265b5576353ee91e572ed824cf4909d287249e4f4023213e4cf4857aa61ee40c" [label="copy{src=/setup/root/*.sh, dest=/root/}" shape="note"];
  "sha256:5e96945006401940c00fee5067ccf419024b8b1a725d49ac1c4c775079655a37" [label="copy{src=/setup/init.sh, dest=/etc/service/nginx/run}" shape="note"];
  "sha256:53daf7edf697a23b6925308dc4256dff9e194cc784c93ab81948d0b069d61f51" [label="copy{src=/setup/*.ngx, dest=/etc/jsoneditor/nginx/}" shape="note"];
  "sha256:2899794df8d46aa7453b8eeff051fa4c27401103dbbdb6610fe0ff73dded04d4" [label="copy{src=/setup/nginx.custom.conf, dest=/etc/nginx/}" shape="note"];
  "sha256:7c2690c16d3c4a2eba1c30ee9ea5dc294c6112c8803c34c843f4927b7ddb36bb" [label="copy{src=/setup/index.html, dest=/data/index.html}" shape="note"];
  "sha256:8f31a7a754df59a3564ba5393c8bb5b7f6ca9efde1fc7c56251c88916a580e57" [label="/bin/sh -c /root/install.sh && rm /root/*.sh" shape="box"];
  "sha256:b9c1b038b4347e516f5f651e4c8b599f0cbc382616f05d4cbe96b0988ece104f" [label="sha256:b9c1b038b4347e516f5f651e4c8b599f0cbc382616f05d4cbe96b0988ece104f" shape="plaintext"];
  "sha256:904f3469ca328e88114669d8224370f825ca6e5d478b1aed3138dec9955e2ad9" -> "sha256:265b5576353ee91e572ed824cf4909d287249e4f4023213e4cf4857aa61ee40c" [label=""];
  "sha256:6a41fefa1410c1f6062716666d3abb7d0e2eb55eb9a1eb72a092b241a31ff2c6" -> "sha256:265b5576353ee91e572ed824cf4909d287249e4f4023213e4cf4857aa61ee40c" [label=""];
  "sha256:265b5576353ee91e572ed824cf4909d287249e4f4023213e4cf4857aa61ee40c" -> "sha256:5e96945006401940c00fee5067ccf419024b8b1a725d49ac1c4c775079655a37" [label=""];
  "sha256:6a41fefa1410c1f6062716666d3abb7d0e2eb55eb9a1eb72a092b241a31ff2c6" -> "sha256:5e96945006401940c00fee5067ccf419024b8b1a725d49ac1c4c775079655a37" [label=""];
  "sha256:5e96945006401940c00fee5067ccf419024b8b1a725d49ac1c4c775079655a37" -> "sha256:53daf7edf697a23b6925308dc4256dff9e194cc784c93ab81948d0b069d61f51" [label=""];
  "sha256:6a41fefa1410c1f6062716666d3abb7d0e2eb55eb9a1eb72a092b241a31ff2c6" -> "sha256:53daf7edf697a23b6925308dc4256dff9e194cc784c93ab81948d0b069d61f51" [label=""];
  "sha256:53daf7edf697a23b6925308dc4256dff9e194cc784c93ab81948d0b069d61f51" -> "sha256:2899794df8d46aa7453b8eeff051fa4c27401103dbbdb6610fe0ff73dded04d4" [label=""];
  "sha256:6a41fefa1410c1f6062716666d3abb7d0e2eb55eb9a1eb72a092b241a31ff2c6" -> "sha256:2899794df8d46aa7453b8eeff051fa4c27401103dbbdb6610fe0ff73dded04d4" [label=""];
  "sha256:2899794df8d46aa7453b8eeff051fa4c27401103dbbdb6610fe0ff73dded04d4" -> "sha256:7c2690c16d3c4a2eba1c30ee9ea5dc294c6112c8803c34c843f4927b7ddb36bb" [label=""];
  "sha256:6a41fefa1410c1f6062716666d3abb7d0e2eb55eb9a1eb72a092b241a31ff2c6" -> "sha256:7c2690c16d3c4a2eba1c30ee9ea5dc294c6112c8803c34c843f4927b7ddb36bb" [label=""];
  "sha256:7c2690c16d3c4a2eba1c30ee9ea5dc294c6112c8803c34c843f4927b7ddb36bb" -> "sha256:8f31a7a754df59a3564ba5393c8bb5b7f6ca9efde1fc7c56251c88916a580e57" [label=""];
  "sha256:8f31a7a754df59a3564ba5393c8bb5b7f6ca9efde1fc7c56251c88916a580e57" -> "sha256:b9c1b038b4347e516f5f651e4c8b599f0cbc382616f05d4cbe96b0988ece104f" [label=""];
}

