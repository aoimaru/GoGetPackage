[app/sources/279669831.Dockerfile]
digraph {
  "sha256:7fe2adb72ccf4cf2c68ef7bc7e3c8218cdb31e3bbe9da4592d281dc421e65df7" [label="docker-image://docker.io/plugins/base:linux-arm" shape="ellipse"];
  "sha256:a011cd5d7b9f43594a5b3592b0940aac6173a23c0badbf7becd4c0619b5c4cad" [label="local://context" shape="ellipse"];
  "sha256:0177275ca4aadc294c7d95dce651b43ce7fa5d3515afafe846dcf024c5b4d488" [label="copy{src=/release/linux/arm/ggz-server, dest=/bin/}" shape="note"];
  "sha256:1c05c1cff5c21ae168e8606b044c1df569b47d5e66002c577d727b77ecfb76bf" [label="sha256:1c05c1cff5c21ae168e8606b044c1df569b47d5e66002c577d727b77ecfb76bf" shape="plaintext"];
  "sha256:7fe2adb72ccf4cf2c68ef7bc7e3c8218cdb31e3bbe9da4592d281dc421e65df7" -> "sha256:0177275ca4aadc294c7d95dce651b43ce7fa5d3515afafe846dcf024c5b4d488" [label=""];
  "sha256:a011cd5d7b9f43594a5b3592b0940aac6173a23c0badbf7becd4c0619b5c4cad" -> "sha256:0177275ca4aadc294c7d95dce651b43ce7fa5d3515afafe846dcf024c5b4d488" [label=""];
  "sha256:0177275ca4aadc294c7d95dce651b43ce7fa5d3515afafe846dcf024c5b4d488" -> "sha256:1c05c1cff5c21ae168e8606b044c1df569b47d5e66002c577d727b77ecfb76bf" [label=""];
}

