[app/sources/254995353.Dockerfile]
digraph {
  "sha256:7fe2adb72ccf4cf2c68ef7bc7e3c8218cdb31e3bbe9da4592d281dc421e65df7" [label="docker-image://docker.io/plugins/base:linux-arm" shape="ellipse"];
  "sha256:9c6ac60fa880c2dfa29176850a9d79457917fd1143af6acb4e4c9b709c4a3d11" [label="local://context" shape="ellipse"];
  "sha256:b5a3ba3a9a2b4dbb88f4860f85205175c3d1bdfb42e6164c2a24b4e1b9a382c1" [label="copy{src=/release/linux/arm/drone-facebook, dest=/bin/}" shape="note"];
  "sha256:455e1e6ef4ca8660f5c308e972aa9ac9c535d9fb408875396ce9ec2bb8a7493e" [label="sha256:455e1e6ef4ca8660f5c308e972aa9ac9c535d9fb408875396ce9ec2bb8a7493e" shape="plaintext"];
  "sha256:7fe2adb72ccf4cf2c68ef7bc7e3c8218cdb31e3bbe9da4592d281dc421e65df7" -> "sha256:b5a3ba3a9a2b4dbb88f4860f85205175c3d1bdfb42e6164c2a24b4e1b9a382c1" [label=""];
  "sha256:9c6ac60fa880c2dfa29176850a9d79457917fd1143af6acb4e4c9b709c4a3d11" -> "sha256:b5a3ba3a9a2b4dbb88f4860f85205175c3d1bdfb42e6164c2a24b4e1b9a382c1" [label=""];
  "sha256:b5a3ba3a9a2b4dbb88f4860f85205175c3d1bdfb42e6164c2a24b4e1b9a382c1" -> "sha256:455e1e6ef4ca8660f5c308e972aa9ac9c535d9fb408875396ce9ec2bb8a7493e" [label=""];
}

