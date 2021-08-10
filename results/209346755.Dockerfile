[app/sources/209346755.Dockerfile]
digraph {
  "sha256:5af872bef34c7f8bef192bf45950a0a51bf03dea84641965c82bbbf598fc6e89" [label="docker-image://daocloud.io/library/java:8@sha256:c1ff613e8ba25833d2e1940da0940c3824f03f802c449f3d1815a66b7f8c0e9d" shape="ellipse"];
  "sha256:9a55542214681c97fb2434d9739f28ea1a4ac627561fdd693d45ecc6b022e478" [label="local://context" shape="ellipse"];
  "sha256:1afffa1c3f5c36a6179dbf449e1f3f8cfe6ebec687fd846cbfa243b1e0c7192e" [label="copy{src=/discovery-1.0.0-SNAPSHOT.jar, dest=/app.jar}" shape="note"];
  "sha256:f0e0f561d0a177f43f6683fa8bc3ac22603ca5f60f5f24f0e39c8d560ba9bfc1" [label="/bin/sh -c bash -c \"touch app.jar\"" shape="box"];
  "sha256:4571a0ac45819c601566ee2ab4af44cb749380e97671c74d810b24508d1edb64" [label="sha256:4571a0ac45819c601566ee2ab4af44cb749380e97671c74d810b24508d1edb64" shape="plaintext"];
  "sha256:5af872bef34c7f8bef192bf45950a0a51bf03dea84641965c82bbbf598fc6e89" -> "sha256:1afffa1c3f5c36a6179dbf449e1f3f8cfe6ebec687fd846cbfa243b1e0c7192e" [label=""];
  "sha256:9a55542214681c97fb2434d9739f28ea1a4ac627561fdd693d45ecc6b022e478" -> "sha256:1afffa1c3f5c36a6179dbf449e1f3f8cfe6ebec687fd846cbfa243b1e0c7192e" [label=""];
  "sha256:1afffa1c3f5c36a6179dbf449e1f3f8cfe6ebec687fd846cbfa243b1e0c7192e" -> "sha256:f0e0f561d0a177f43f6683fa8bc3ac22603ca5f60f5f24f0e39c8d560ba9bfc1" [label=""];
  "sha256:f0e0f561d0a177f43f6683fa8bc3ac22603ca5f60f5f24f0e39c8d560ba9bfc1" -> "sha256:4571a0ac45819c601566ee2ab4af44cb749380e97671c74d810b24508d1edb64" [label=""];
}

