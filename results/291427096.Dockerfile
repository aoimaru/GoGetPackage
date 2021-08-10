[app/sources/291427096.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:8bbe51509510235f06134dd1849d58bd0c4283c0a82309b4066f6f186a97c1ef" [label="/bin/sh -c apk add libcluon --no-cache --repository https://chrberger.github.io/libcluon/alpine/v3.7 --allow-untrusted" shape="box"];
  "sha256:838da82211064ecd5de2cecdc6c544167c60c6fe5ac9dbd2872157d8ec9c0b2b" [label="/bin/sh -c mkdir -p /opt/bin && wget -O /opt/bin/websocketd https://github.com/se-research/websocketd-alpine/raw/master/x86_64/websocketd && chmod 755 /opt/bin/websocketd" shape="box"];
  "sha256:1aff308f1be8a250fe555b4952d7f33b3d1495d42fa31b12f1fb901ba18ac330" [label="sha256:1aff308f1be8a250fe555b4952d7f33b3d1495d42fa31b12f1fb901ba18ac330" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:8bbe51509510235f06134dd1849d58bd0c4283c0a82309b4066f6f186a97c1ef" [label=""];
  "sha256:8bbe51509510235f06134dd1849d58bd0c4283c0a82309b4066f6f186a97c1ef" -> "sha256:838da82211064ecd5de2cecdc6c544167c60c6fe5ac9dbd2872157d8ec9c0b2b" [label=""];
  "sha256:838da82211064ecd5de2cecdc6c544167c60c6fe5ac9dbd2872157d8ec9c0b2b" -> "sha256:1aff308f1be8a250fe555b4952d7f33b3d1495d42fa31b12f1fb901ba18ac330" [label=""];
}

