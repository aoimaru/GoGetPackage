[app/sources/254028934.Dockerfile]
digraph {
  "sha256:e5e52f6d51371a41d3e37cfb17dd0e218b16c9cf8f360407c12792aca1556b5e" [label="docker-image://docker.io/library/telegraf:latest" shape="ellipse"];
  "sha256:a526613ac877ed1ccdd0da43b47ac4a842344c3c932668305da90f6aec895bf2" [label="local://context" shape="ellipse"];
  "sha256:75b1457e9eae0b97f2ce52b9bf1a7e6e76643d5351fc0b51cc888804276bee37" [label="copy{src=/telegraf.template.conf, dest=/telegraf.template.conf}" shape="note"];
  "sha256:1cf4b18e3919584e6b3b102e94ffff931a2f1173d9c6d609b948b0a50fc6f84d" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:003e82b3d6c94f7e368cca18e82d94d0aeb773d942bb3e9221ecaafd06dfc11a" [label="/bin/sh -c chmod +x /*.sh" shape="box"];
  "sha256:f8df27a736b4581a3739fb459f1694c5b73eb698746151124ff3b990f2f9b2aa" [label="sha256:f8df27a736b4581a3739fb459f1694c5b73eb698746151124ff3b990f2f9b2aa" shape="plaintext"];
  "sha256:e5e52f6d51371a41d3e37cfb17dd0e218b16c9cf8f360407c12792aca1556b5e" -> "sha256:75b1457e9eae0b97f2ce52b9bf1a7e6e76643d5351fc0b51cc888804276bee37" [label=""];
  "sha256:a526613ac877ed1ccdd0da43b47ac4a842344c3c932668305da90f6aec895bf2" -> "sha256:75b1457e9eae0b97f2ce52b9bf1a7e6e76643d5351fc0b51cc888804276bee37" [label=""];
  "sha256:75b1457e9eae0b97f2ce52b9bf1a7e6e76643d5351fc0b51cc888804276bee37" -> "sha256:1cf4b18e3919584e6b3b102e94ffff931a2f1173d9c6d609b948b0a50fc6f84d" [label=""];
  "sha256:a526613ac877ed1ccdd0da43b47ac4a842344c3c932668305da90f6aec895bf2" -> "sha256:1cf4b18e3919584e6b3b102e94ffff931a2f1173d9c6d609b948b0a50fc6f84d" [label=""];
  "sha256:1cf4b18e3919584e6b3b102e94ffff931a2f1173d9c6d609b948b0a50fc6f84d" -> "sha256:003e82b3d6c94f7e368cca18e82d94d0aeb773d942bb3e9221ecaafd06dfc11a" [label=""];
  "sha256:003e82b3d6c94f7e368cca18e82d94d0aeb773d942bb3e9221ecaafd06dfc11a" -> "sha256:f8df27a736b4581a3739fb459f1694c5b73eb698746151124ff3b990f2f9b2aa" [label=""];
}

