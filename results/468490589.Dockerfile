[app/sources/468490589.Dockerfile]
digraph {
  "sha256:4e7a6726d116097e8c4db9f497f8239a68ba9cf2a6e7a98a8fa38824cd6fa17e" [label="docker-image://docker.io/library/ruby:2.5" shape="ellipse"];
  "sha256:1476afcc261b3dd886d199ca274896da10eb79db98c567205c13ae59e2453a9b" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:4651e2bd131f3201d97b73ad8635ff9f1ff66fe59b4eb5bd5e01abad40aa3fe4" [label="local://context" shape="ellipse"];
  "sha256:b19b8836c883f356fe7e622b458bf130fc3cc0d196ebfe9d59f526e0e36a00a2" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:3f2612a214485c108e1457ab53fb827a8b35d16eabc81272f475d58c2bba554a" [label="/bin/sh -c ls" shape="box"];
  "sha256:625c1a40d57edfa2d5f4626902f9cc64007b9b00ff427f0aa8815eafedfb423b" [label="sha256:625c1a40d57edfa2d5f4626902f9cc64007b9b00ff427f0aa8815eafedfb423b" shape="plaintext"];
  "sha256:4e7a6726d116097e8c4db9f497f8239a68ba9cf2a6e7a98a8fa38824cd6fa17e" -> "sha256:1476afcc261b3dd886d199ca274896da10eb79db98c567205c13ae59e2453a9b" [label=""];
  "sha256:1476afcc261b3dd886d199ca274896da10eb79db98c567205c13ae59e2453a9b" -> "sha256:b19b8836c883f356fe7e622b458bf130fc3cc0d196ebfe9d59f526e0e36a00a2" [label=""];
  "sha256:4651e2bd131f3201d97b73ad8635ff9f1ff66fe59b4eb5bd5e01abad40aa3fe4" -> "sha256:b19b8836c883f356fe7e622b458bf130fc3cc0d196ebfe9d59f526e0e36a00a2" [label=""];
  "sha256:b19b8836c883f356fe7e622b458bf130fc3cc0d196ebfe9d59f526e0e36a00a2" -> "sha256:3f2612a214485c108e1457ab53fb827a8b35d16eabc81272f475d58c2bba554a" [label=""];
  "sha256:3f2612a214485c108e1457ab53fb827a8b35d16eabc81272f475d58c2bba554a" -> "sha256:625c1a40d57edfa2d5f4626902f9cc64007b9b00ff427f0aa8815eafedfb423b" [label=""];
}

