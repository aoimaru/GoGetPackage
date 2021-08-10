[app/sources/201188361.Dockerfile]
digraph {
  "sha256:8e3d4019d8182a2b23696f3ac9f8422263e4ff4073b05b83ccee8ccbb8b66eb7" [label="docker-image://docker.io/nsqio/nsq:v1.1.0" shape="ellipse"];
  "sha256:f414b90e2cd8f0ca44327f877ced139ecd9302dbc02d86484d4c877f4cadc79d" [label="/bin/sh -c apk add --no-cache supervisor" shape="box"];
  "sha256:0c1c7a1c627fb7b2ab37984fb210be2712cd8667d23f909e15c032f63e93a5de" [label="/bin/sh -c mkdir /supervisor" shape="box"];
  "sha256:22258796de1346496d98aa618e40e9b1d269e4756a098208a83981fcd4dcc2ec" [label="local://context" shape="ellipse"];
  "sha256:05781f27292c912fcb30c374468b73ecc5f3cd0fdec15f5ca47406037b0070a5" [label="copy{src=/supervisord.conf, dest=/supervisor/supervisord.conf}" shape="note"];
  "sha256:0e72f0e1891b17ddca4de6ca3859de328b3f15b7ca12c6b06372a0106db3ff73" [label="sha256:0e72f0e1891b17ddca4de6ca3859de328b3f15b7ca12c6b06372a0106db3ff73" shape="plaintext"];
  "sha256:8e3d4019d8182a2b23696f3ac9f8422263e4ff4073b05b83ccee8ccbb8b66eb7" -> "sha256:f414b90e2cd8f0ca44327f877ced139ecd9302dbc02d86484d4c877f4cadc79d" [label=""];
  "sha256:f414b90e2cd8f0ca44327f877ced139ecd9302dbc02d86484d4c877f4cadc79d" -> "sha256:0c1c7a1c627fb7b2ab37984fb210be2712cd8667d23f909e15c032f63e93a5de" [label=""];
  "sha256:0c1c7a1c627fb7b2ab37984fb210be2712cd8667d23f909e15c032f63e93a5de" -> "sha256:05781f27292c912fcb30c374468b73ecc5f3cd0fdec15f5ca47406037b0070a5" [label=""];
  "sha256:22258796de1346496d98aa618e40e9b1d269e4756a098208a83981fcd4dcc2ec" -> "sha256:05781f27292c912fcb30c374468b73ecc5f3cd0fdec15f5ca47406037b0070a5" [label=""];
  "sha256:05781f27292c912fcb30c374468b73ecc5f3cd0fdec15f5ca47406037b0070a5" -> "sha256:0e72f0e1891b17ddca4de6ca3859de328b3f15b7ca12c6b06372a0106db3ff73" [label=""];
}

