[app/sources/224117772.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:e6bdc0933c10c49f9fc1c5b86af29a4c273f8e0bf89cd0cd313f5020875f1476" [label="local://context" shape="ellipse"];
  "sha256:2e6f08f15f276faf4d0cdd8b447645eb5828082a7757e03ac7f3bec40d468121" [label="copy{src=/web/var, dest=/var/www/web/var}" shape="note"];
  "sha256:23e9eed278d2266aab183eb41d1c56dc034fb113d403c0d70f0e378aaf8221e0" [label="mkdir{path=/var/www}" shape="note"];
  "sha256:a7e55f06a125ab55de7559d5e4e2d79e1f2d5e83c31d2dc45123cda2dc23a177" [label="/bin/sh -c chown -R www-data:www-data web/var     && find web/var -type d -print0 | xargs -0 chmod -R 775     && find web/var -type f -print0 | xargs -0 chmod -R 664" shape="box"];
  "sha256:28c7478539fa1f01f6a3d5498b03165c33d43de0f03b05d3aeefff45c8d1de9f" [label="sha256:28c7478539fa1f01f6a3d5498b03165c33d43de0f03b05d3aeefff45c8d1de9f" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:2e6f08f15f276faf4d0cdd8b447645eb5828082a7757e03ac7f3bec40d468121" [label=""];
  "sha256:e6bdc0933c10c49f9fc1c5b86af29a4c273f8e0bf89cd0cd313f5020875f1476" -> "sha256:2e6f08f15f276faf4d0cdd8b447645eb5828082a7757e03ac7f3bec40d468121" [label=""];
  "sha256:2e6f08f15f276faf4d0cdd8b447645eb5828082a7757e03ac7f3bec40d468121" -> "sha256:23e9eed278d2266aab183eb41d1c56dc034fb113d403c0d70f0e378aaf8221e0" [label=""];
  "sha256:23e9eed278d2266aab183eb41d1c56dc034fb113d403c0d70f0e378aaf8221e0" -> "sha256:a7e55f06a125ab55de7559d5e4e2d79e1f2d5e83c31d2dc45123cda2dc23a177" [label=""];
  "sha256:a7e55f06a125ab55de7559d5e4e2d79e1f2d5e83c31d2dc45123cda2dc23a177" -> "sha256:28c7478539fa1f01f6a3d5498b03165c33d43de0f03b05d3aeefff45c8d1de9f" [label=""];
}

