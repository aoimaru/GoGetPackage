[app/sources/482722927.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:e5c97077f85c82a32dc01ef47fbbe28fc1299baec13244236e6d3e49763a1387" [label="/bin/sh -c apt-get update && apt-get install -y znc" shape="box"];
  "sha256:62f6f9730ff0406cb297db4a9be790fa0d442f88ab45194de58411b28b7bd2cb" [label="/bin/sh -c useradd znc" shape="box"];
  "sha256:b30296c428479466a4e8f27981de9c7882e0b120f6b2ee18c8fc313637a759fb" [label="sha256:b30296c428479466a4e8f27981de9c7882e0b120f6b2ee18c8fc313637a759fb" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:e5c97077f85c82a32dc01ef47fbbe28fc1299baec13244236e6d3e49763a1387" [label=""];
  "sha256:e5c97077f85c82a32dc01ef47fbbe28fc1299baec13244236e6d3e49763a1387" -> "sha256:62f6f9730ff0406cb297db4a9be790fa0d442f88ab45194de58411b28b7bd2cb" [label=""];
  "sha256:62f6f9730ff0406cb297db4a9be790fa0d442f88ab45194de58411b28b7bd2cb" -> "sha256:b30296c428479466a4e8f27981de9c7882e0b120f6b2ee18c8fc313637a759fb" [label=""];
}

