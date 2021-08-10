[app/sources/444566764.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:e0f2d2df60cefd7fea3bdff9f7a70c399371adb4a281de47253a7a1316f8fffa" [label="/bin/sh -c cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime" shape="box"];
  "sha256:c1a9b1e40ecc3b442eb69822576a9847fdb3385563d09f6d8243def1d15c7368" [label="mkdir{path=/demo-frontend}" shape="note"];
  "sha256:638805a940037f2f238e72bbf09a610636e0152ceca4e7ee5d9e6f8042098fb9" [label="sha256:638805a940037f2f238e72bbf09a610636e0152ceca4e7ee5d9e6f8042098fb9" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:e0f2d2df60cefd7fea3bdff9f7a70c399371adb4a281de47253a7a1316f8fffa" [label=""];
  "sha256:e0f2d2df60cefd7fea3bdff9f7a70c399371adb4a281de47253a7a1316f8fffa" -> "sha256:c1a9b1e40ecc3b442eb69822576a9847fdb3385563d09f6d8243def1d15c7368" [label=""];
  "sha256:c1a9b1e40ecc3b442eb69822576a9847fdb3385563d09f6d8243def1d15c7368" -> "sha256:638805a940037f2f238e72bbf09a610636e0152ceca4e7ee5d9e6f8042098fb9" [label=""];
}

