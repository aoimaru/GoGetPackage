[app/sources/252786523.Dockerfile]
digraph {
  "sha256:ac743cb4fb9988819b8adbb209dd694cefa0c4ee9062096b0c324c70d0987a58" [label="docker-image://docker.io/dockerizedrupal/puppet-debian-wheezy:1.1.3" shape="ellipse"];
  "sha256:4452d1d4f67e21dae60d4b8fb9bde668dab2b666422b5c5dbe1ce4ed94384f2b" [label="local://context" shape="ellipse"];
  "sha256:669eb7c945c69669ae3a565d2c47a253d1fac3a287cb323a678119ac00db3231" [label="copy{src=/src, dest=/src}" shape="note"];
  "sha256:0931003e3e93f0070bcb1dd1f8cb7cd71cc12911510495e1dee4dcbeb9c5c4cf" [label="/bin/sh -c /src/entrypoint.sh build" shape="box"];
  "sha256:64e80d74217e53313ef016ba16b85fb89bbc4348ff26a32bd28958fbe26004ac" [label="sha256:64e80d74217e53313ef016ba16b85fb89bbc4348ff26a32bd28958fbe26004ac" shape="plaintext"];
  "sha256:ac743cb4fb9988819b8adbb209dd694cefa0c4ee9062096b0c324c70d0987a58" -> "sha256:669eb7c945c69669ae3a565d2c47a253d1fac3a287cb323a678119ac00db3231" [label=""];
  "sha256:4452d1d4f67e21dae60d4b8fb9bde668dab2b666422b5c5dbe1ce4ed94384f2b" -> "sha256:669eb7c945c69669ae3a565d2c47a253d1fac3a287cb323a678119ac00db3231" [label=""];
  "sha256:669eb7c945c69669ae3a565d2c47a253d1fac3a287cb323a678119ac00db3231" -> "sha256:0931003e3e93f0070bcb1dd1f8cb7cd71cc12911510495e1dee4dcbeb9c5c4cf" [label=""];
  "sha256:0931003e3e93f0070bcb1dd1f8cb7cd71cc12911510495e1dee4dcbeb9c5c4cf" -> "sha256:64e80d74217e53313ef016ba16b85fb89bbc4348ff26a32bd28958fbe26004ac" [label=""];
}

