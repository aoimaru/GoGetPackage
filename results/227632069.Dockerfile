[app/sources/227632069.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:53c0a327e6e285e5ed041d07f61cc83727714fbacf9a1b84fd31ededf066a704" [label="/bin/sh -c mkdir -p 0700 /var/lib/bespoke-directory" shape="box"];
  "sha256:0778abaa94bff72500f3049a00c211cffec8602217d982a233a35fea5aba9fda" [label="/bin/sh -c chown 1:1 /var/lib/bespoke-directory" shape="box"];
  "sha256:a205548fa243130c8eb614fbbf9ed1c6abbbfee1c2d499245ae03caa103f0ddc" [label="/bin/sh -c touch /var/lib/bespoke-directory/emptyfile" shape="box"];
  "sha256:c3a060428197bcc361edb9759e655407a1c7d7c7f144ff19c204caf744179696" [label="sha256:c3a060428197bcc361edb9759e655407a1c7d7c7f144ff19c204caf744179696" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:53c0a327e6e285e5ed041d07f61cc83727714fbacf9a1b84fd31ededf066a704" [label=""];
  "sha256:53c0a327e6e285e5ed041d07f61cc83727714fbacf9a1b84fd31ededf066a704" -> "sha256:0778abaa94bff72500f3049a00c211cffec8602217d982a233a35fea5aba9fda" [label=""];
  "sha256:0778abaa94bff72500f3049a00c211cffec8602217d982a233a35fea5aba9fda" -> "sha256:a205548fa243130c8eb614fbbf9ed1c6abbbfee1c2d499245ae03caa103f0ddc" [label=""];
  "sha256:a205548fa243130c8eb614fbbf9ed1c6abbbfee1c2d499245ae03caa103f0ddc" -> "sha256:c3a060428197bcc361edb9759e655407a1c7d7c7f144ff19c204caf744179696" [label=""];
}

