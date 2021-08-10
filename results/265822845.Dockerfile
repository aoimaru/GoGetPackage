[app/sources/265822845.Dockerfile]
digraph {
  "sha256:b77c557212f499d61e37ad58a89129daba5b949c76f2b3e82053b3061772c30d" [label="docker-image://docker.io/gocd/gocd-server:v17.6.0" shape="ellipse"];
  "sha256:0601b8fb6f117640f574f4d4beefd2e5d0b1bc1fab6df38f0bdf0ad0f62d7085" [label="/bin/sh -c apk add apache2-utils" shape="box"];
  "sha256:13d4de6c25e3e5ead09fc4da699fc5a3cc009820a0cd231749806618a133daac" [label="local://context" shape="ellipse"];
  "sha256:cf53a5b8159202af07274a23851c1717947a57543eed5bb65b7b93f4faedafa4" [label="copy{src=/custom-boot.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:6159af912f03704c695df30a70df98fdb5b146c4809f3c7c96c6ededc66f3cae" [label="sha256:6159af912f03704c695df30a70df98fdb5b146c4809f3c7c96c6ededc66f3cae" shape="plaintext"];
  "sha256:b77c557212f499d61e37ad58a89129daba5b949c76f2b3e82053b3061772c30d" -> "sha256:0601b8fb6f117640f574f4d4beefd2e5d0b1bc1fab6df38f0bdf0ad0f62d7085" [label=""];
  "sha256:0601b8fb6f117640f574f4d4beefd2e5d0b1bc1fab6df38f0bdf0ad0f62d7085" -> "sha256:cf53a5b8159202af07274a23851c1717947a57543eed5bb65b7b93f4faedafa4" [label=""];
  "sha256:13d4de6c25e3e5ead09fc4da699fc5a3cc009820a0cd231749806618a133daac" -> "sha256:cf53a5b8159202af07274a23851c1717947a57543eed5bb65b7b93f4faedafa4" [label=""];
  "sha256:cf53a5b8159202af07274a23851c1717947a57543eed5bb65b7b93f4faedafa4" -> "sha256:6159af912f03704c695df30a70df98fdb5b146c4809f3c7c96c6ededc66f3cae" [label=""];
}

