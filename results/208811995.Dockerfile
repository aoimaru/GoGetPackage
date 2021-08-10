[app/sources/208811995.Dockerfile]
digraph {
  "sha256:f6b3222c6092a9e9791a834cacf1e7fba1de6483c8bee590b6c32929db42c37d" [label="docker-image://docker.io/library/openjdk:8-jdk" shape="ellipse"];
  "sha256:30cafb1195e5b3182067fec9f566ab639c77121bfec211b6a6a7d2b297eeba4c" [label="/bin/sh -c mkdir -p /opt/corebot /opt/corebot/config" shape="box"];
  "sha256:239d50a6dfcf0e261d8ae8363966e88a93a869499ce609fc22462038115310bc" [label="local://context" shape="ellipse"];
  "sha256:e9eac86eda18c42d71feccbda127a151173a3cbf330a42b6f8afa21458f6c6f3" [label="copy{src=/build/install/bots-slack-items, dest=/opt/corebot}" shape="note"];
  "sha256:0353a654751d86e574665dea4780733ca7d9ff42f0365312ec868a8046a358d6" [label="/bin/sh -c ln -s /opt/corebot/bin/bots-slack-items /usr/local/bin/corebot &&     chmod +x /usr/local/bin/corebot" shape="box"];
  "sha256:3ac35a17d11a16d77cdd702ae54d1d07221eee3fa2a77a85a90654653e3b0154" [label="mkdir{path=/opt/corebot}" shape="note"];
  "sha256:0d9c352a6c9c7fd4d5e7b1eeff332b9174d5e659dcad90392c4e5d6dd6dcee82" [label="sha256:0d9c352a6c9c7fd4d5e7b1eeff332b9174d5e659dcad90392c4e5d6dd6dcee82" shape="plaintext"];
  "sha256:f6b3222c6092a9e9791a834cacf1e7fba1de6483c8bee590b6c32929db42c37d" -> "sha256:30cafb1195e5b3182067fec9f566ab639c77121bfec211b6a6a7d2b297eeba4c" [label=""];
  "sha256:30cafb1195e5b3182067fec9f566ab639c77121bfec211b6a6a7d2b297eeba4c" -> "sha256:e9eac86eda18c42d71feccbda127a151173a3cbf330a42b6f8afa21458f6c6f3" [label=""];
  "sha256:239d50a6dfcf0e261d8ae8363966e88a93a869499ce609fc22462038115310bc" -> "sha256:e9eac86eda18c42d71feccbda127a151173a3cbf330a42b6f8afa21458f6c6f3" [label=""];
  "sha256:e9eac86eda18c42d71feccbda127a151173a3cbf330a42b6f8afa21458f6c6f3" -> "sha256:0353a654751d86e574665dea4780733ca7d9ff42f0365312ec868a8046a358d6" [label=""];
  "sha256:0353a654751d86e574665dea4780733ca7d9ff42f0365312ec868a8046a358d6" -> "sha256:3ac35a17d11a16d77cdd702ae54d1d07221eee3fa2a77a85a90654653e3b0154" [label=""];
  "sha256:3ac35a17d11a16d77cdd702ae54d1d07221eee3fa2a77a85a90654653e3b0154" -> "sha256:0d9c352a6c9c7fd4d5e7b1eeff332b9174d5e659dcad90392c4e5d6dd6dcee82" [label=""];
}

