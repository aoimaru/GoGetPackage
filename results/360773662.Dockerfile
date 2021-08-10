[app/sources/360773662.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:ce2a3a990c6299a67366d4901f0ce3814adb1261f0a908753e88e2647981690f" [label="/bin/sh -c apt-get update &&     apt-get install -y protobuf-compiler  &&         rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:86c93a890c78bb309886a4e67e55673f53e9b7d5478fc7f5919da621735a2d01" [label="sha256:86c93a890c78bb309886a4e67e55673f53e9b7d5478fc7f5919da621735a2d01" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:ce2a3a990c6299a67366d4901f0ce3814adb1261f0a908753e88e2647981690f" [label=""];
  "sha256:ce2a3a990c6299a67366d4901f0ce3814adb1261f0a908753e88e2647981690f" -> "sha256:86c93a890c78bb309886a4e67e55673f53e9b7d5478fc7f5919da621735a2d01" [label=""];
}

