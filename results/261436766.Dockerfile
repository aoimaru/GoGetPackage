[app/sources/261436766.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:ff86d2c749abab42003bd4541a4f259e007cdeb284612ae8a6d70b7dc05ba0cd" [label="/bin/sh -c apt-get update && apt-get install znc -y" shape="box"];
  "sha256:b14b90ea34bfc7a2f9bfcd48c90edc9efc2250e60550b7e55349e69daf2439ed" [label="local://context" shape="ellipse"];
  "sha256:e0658c64accc8595e8841ef3f0c40cea88637c8da23a2c342776ee25c13fc8e9" [label="copy{src=/conf, dest=/.znc}" shape="note"];
  "sha256:0d952c1dcf25c7ffbc1003285e160ac5f516579a3c61029e66669814fa994b10" [label="sha256:0d952c1dcf25c7ffbc1003285e160ac5f516579a3c61029e66669814fa994b10" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:ff86d2c749abab42003bd4541a4f259e007cdeb284612ae8a6d70b7dc05ba0cd" [label=""];
  "sha256:ff86d2c749abab42003bd4541a4f259e007cdeb284612ae8a6d70b7dc05ba0cd" -> "sha256:e0658c64accc8595e8841ef3f0c40cea88637c8da23a2c342776ee25c13fc8e9" [label=""];
  "sha256:b14b90ea34bfc7a2f9bfcd48c90edc9efc2250e60550b7e55349e69daf2439ed" -> "sha256:e0658c64accc8595e8841ef3f0c40cea88637c8da23a2c342776ee25c13fc8e9" [label=""];
  "sha256:e0658c64accc8595e8841ef3f0c40cea88637c8da23a2c342776ee25c13fc8e9" -> "sha256:0d952c1dcf25c7ffbc1003285e160ac5f516579a3c61029e66669814fa994b10" [label=""];
}

