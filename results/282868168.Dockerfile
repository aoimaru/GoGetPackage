[app/sources/282868168.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:01ecea358ed069d1ed7bf580a6eb7b2d8571fc42441efebb83eff6fb02d9e670" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends   g++-multilib   make   file   curl   ca-certificates   python2.7   git   cmake   sudo   gdb   xz-utils" shape="box"];
  "sha256:0a5ec3893f9183f31e68af63526af989d30183d0b370b5f697f32aa3ba7b2041" [label="local://context" shape="ellipse"];
  "sha256:a15c3ddede6658ce93608d29d8997caa046ea0dff5138ca619eeb90887d6ef8a" [label="copy{src=/scripts/sccache.sh, dest=/scripts/}" shape="note"];
  "sha256:bac914469d0701ed8f292e18672570b1600e8679cb1cd0ab05c021f09a80b9c1" [label="/bin/sh -c sh /scripts/sccache.sh" shape="box"];
  "sha256:c11d8231dc1dea9282a2e1bfe24fbf511c762ab220fb716633c9653529c93710" [label="sha256:c11d8231dc1dea9282a2e1bfe24fbf511c762ab220fb716633c9653529c93710" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:01ecea358ed069d1ed7bf580a6eb7b2d8571fc42441efebb83eff6fb02d9e670" [label=""];
  "sha256:01ecea358ed069d1ed7bf580a6eb7b2d8571fc42441efebb83eff6fb02d9e670" -> "sha256:a15c3ddede6658ce93608d29d8997caa046ea0dff5138ca619eeb90887d6ef8a" [label=""];
  "sha256:0a5ec3893f9183f31e68af63526af989d30183d0b370b5f697f32aa3ba7b2041" -> "sha256:a15c3ddede6658ce93608d29d8997caa046ea0dff5138ca619eeb90887d6ef8a" [label=""];
  "sha256:a15c3ddede6658ce93608d29d8997caa046ea0dff5138ca619eeb90887d6ef8a" -> "sha256:bac914469d0701ed8f292e18672570b1600e8679cb1cd0ab05c021f09a80b9c1" [label=""];
  "sha256:bac914469d0701ed8f292e18672570b1600e8679cb1cd0ab05c021f09a80b9c1" -> "sha256:c11d8231dc1dea9282a2e1bfe24fbf511c762ab220fb716633c9653529c93710" [label=""];
}

