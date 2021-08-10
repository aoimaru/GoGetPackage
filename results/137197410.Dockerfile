[app/sources/137197410.Dockerfile]
digraph {
  "sha256:b331f7b223014c46ef984454cdad83a41655cc8b145a766a675c6fce95ab35a2" [label="https://curl.haxx.se/ca/cacert.pem" shape="ellipse"];
  "sha256:e9f37619cd92da7b7b1dffe337e0db1ac30052fe2fae6b22fa132495cff6cb86" [label="copy{src=/cacert.pem, dest=/etc/ssl/certs/ca-certificates.crt}" shape="note"];
  "sha256:c22a1e2cbca71a5548ab43876918ea1adfdd572353a6f6a475a106747b963613" [label="local://context" shape="ellipse"];
  "sha256:61ebdc8ab8a6bdaa75269d0c3d45d744fcd3a27ba59253241cddc436f22a4056" [label="copy{src=/pkg/linux_amd64/consul-template, dest=/}" shape="note"];
  "sha256:05433237fc06f599712ee7d1f2369ad8fcec65505b285628081120648361cfdb" [label="sha256:05433237fc06f599712ee7d1f2369ad8fcec65505b285628081120648361cfdb" shape="plaintext"];
  "sha256:b331f7b223014c46ef984454cdad83a41655cc8b145a766a675c6fce95ab35a2" -> "sha256:e9f37619cd92da7b7b1dffe337e0db1ac30052fe2fae6b22fa132495cff6cb86" [label=""];
  "sha256:e9f37619cd92da7b7b1dffe337e0db1ac30052fe2fae6b22fa132495cff6cb86" -> "sha256:61ebdc8ab8a6bdaa75269d0c3d45d744fcd3a27ba59253241cddc436f22a4056" [label=""];
  "sha256:c22a1e2cbca71a5548ab43876918ea1adfdd572353a6f6a475a106747b963613" -> "sha256:61ebdc8ab8a6bdaa75269d0c3d45d744fcd3a27ba59253241cddc436f22a4056" [label=""];
  "sha256:61ebdc8ab8a6bdaa75269d0c3d45d744fcd3a27ba59253241cddc436f22a4056" -> "sha256:05433237fc06f599712ee7d1f2369ad8fcec65505b285628081120648361cfdb" [label=""];
}

