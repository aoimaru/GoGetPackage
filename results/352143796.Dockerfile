[app/sources/352143796.Dockerfile]
digraph {
  "sha256:65a210a6517929b3764434d251aee638d74357e8612ff2d03a748ffaa024c2cd" [label="docker-image://docker.io/library/debian:7" shape="ellipse"];
  "sha256:d169ba26ec3ac592ee3f2a41ef8977f52b4e7fe2d50ac407bc6f03839d88d7b6" [label="/bin/sh -c [ -n $SHA1SUM ] && echo $SHA1SUM > /sha1sum.txt" shape="box"];
  "sha256:3023455a7a81a8cc0fed94ae68df610a74924163562871220a687e2fc546cab5" [label="local://context" shape="ellipse"];
  "sha256:b5541fba53e8edef5dece24c868286f199b0d3f4759f1ef1fb2d1ed92ecaf03b" [label="copy{src=/*.sh, dest=/tmp/}" shape="note"];
  "sha256:8505f22dbecaca1b9e9dd53503394ea9475be675e20626535131e0f2fdb8ccb4" [label="/bin/sh -c /tmp/bootstrap.sh && /tmp/locale.sh" shape="box"];
  "sha256:5a70cafedfe8abc141235efae07f47c6726658effb71795844b9ae5a40b7aa25" [label="/bin/sh -c set -x; LD=$(which ld); LD_GOLD=$(which ld.gold); test -x $LD_GOLD && ln -sf $LD_GOLD $LD && test -x $LD && echo \"$LD is now $LD_GOLD\"" shape="box"];
  "sha256:4fd9641050236bd570e7c8aa24f6dd6ba69946feadc3059d95903e195d5a3746" [label="/bin/sh -c useradd -m -U -s /bin/bash samba &&     mkdir -p /etc/sudoers.d &&     echo \"samba ALL=(ALL) NOPASSWD:ALL\" > /etc/sudoers.d/samba" shape="box"];
  "sha256:bf6c17b11ec5484acabec03296bbb0e2e21588834df76702827950ab1c0e0fc6" [label="mkdir{path=/home/samba}" shape="note"];
  "sha256:dd713773a558593105ef482439e73e92d1308cf47c127de395911b74ce2fdb63" [label="sha256:dd713773a558593105ef482439e73e92d1308cf47c127de395911b74ce2fdb63" shape="plaintext"];
  "sha256:65a210a6517929b3764434d251aee638d74357e8612ff2d03a748ffaa024c2cd" -> "sha256:d169ba26ec3ac592ee3f2a41ef8977f52b4e7fe2d50ac407bc6f03839d88d7b6" [label=""];
  "sha256:d169ba26ec3ac592ee3f2a41ef8977f52b4e7fe2d50ac407bc6f03839d88d7b6" -> "sha256:b5541fba53e8edef5dece24c868286f199b0d3f4759f1ef1fb2d1ed92ecaf03b" [label=""];
  "sha256:3023455a7a81a8cc0fed94ae68df610a74924163562871220a687e2fc546cab5" -> "sha256:b5541fba53e8edef5dece24c868286f199b0d3f4759f1ef1fb2d1ed92ecaf03b" [label=""];
  "sha256:b5541fba53e8edef5dece24c868286f199b0d3f4759f1ef1fb2d1ed92ecaf03b" -> "sha256:8505f22dbecaca1b9e9dd53503394ea9475be675e20626535131e0f2fdb8ccb4" [label=""];
  "sha256:8505f22dbecaca1b9e9dd53503394ea9475be675e20626535131e0f2fdb8ccb4" -> "sha256:5a70cafedfe8abc141235efae07f47c6726658effb71795844b9ae5a40b7aa25" [label=""];
  "sha256:5a70cafedfe8abc141235efae07f47c6726658effb71795844b9ae5a40b7aa25" -> "sha256:4fd9641050236bd570e7c8aa24f6dd6ba69946feadc3059d95903e195d5a3746" [label=""];
  "sha256:4fd9641050236bd570e7c8aa24f6dd6ba69946feadc3059d95903e195d5a3746" -> "sha256:bf6c17b11ec5484acabec03296bbb0e2e21588834df76702827950ab1c0e0fc6" [label=""];
  "sha256:bf6c17b11ec5484acabec03296bbb0e2e21588834df76702827950ab1c0e0fc6" -> "sha256:dd713773a558593105ef482439e73e92d1308cf47c127de395911b74ce2fdb63" [label=""];
}

