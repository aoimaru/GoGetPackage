[app/sources/374634994.Dockerfile]
digraph {
  "sha256:54e33794d36bf0b5ee3f60bf42e845ec58745b57424e68dfe11bd58bd2fcee92" [label="docker-image://docker.io/library/bash:latest" shape="ellipse"];
  "sha256:e80f9dd1861ec0f69c4647c51767571d2d53c1ed1fce98119667c6dffc4f45a4" [label="bash -c mkdir /home/suzen     && mkdir -p /home/suzen/part1/${FLAG:0:20}     && mkdir -p /home/john/Documents/part2/${FLAG:20:20}     && mkdir -p /home/john/Desktop/part3/${FLAG:40:20}" shape="box"];
  "sha256:4c2143ec2c923f5f62da2934fc8abdad7c271eafe4c56c7909d6d350c0891cb3" [label="local://context" shape="ellipse"];
  "sha256:c4563751092620fafa08bfd9f684ee66a71c1f5864b8a77eee2822ca99bd2f72" [label="copy{src=/diary.txt, dest=/home/suzen/}" shape="note"];
  "sha256:d436289a5ee900dce626c414e47d2497c192677a3799631926c3c36f4ebe3926" [label="copy{src=/hello, dest=/bin/hello}" shape="note"];
  "sha256:284c4e91654e8152ce9e8631111251f8beb0e2d0618f2ea653a6c95660f0d415" [label="mkdir{path=/home/suzen}" shape="note"];
  "sha256:7cff9f1f68c87e318e6effdb9c74f05877d967cd2e95be9bd614781a6292b6ca" [label="sha256:7cff9f1f68c87e318e6effdb9c74f05877d967cd2e95be9bd614781a6292b6ca" shape="plaintext"];
  "sha256:54e33794d36bf0b5ee3f60bf42e845ec58745b57424e68dfe11bd58bd2fcee92" -> "sha256:e80f9dd1861ec0f69c4647c51767571d2d53c1ed1fce98119667c6dffc4f45a4" [label=""];
  "sha256:e80f9dd1861ec0f69c4647c51767571d2d53c1ed1fce98119667c6dffc4f45a4" -> "sha256:c4563751092620fafa08bfd9f684ee66a71c1f5864b8a77eee2822ca99bd2f72" [label=""];
  "sha256:4c2143ec2c923f5f62da2934fc8abdad7c271eafe4c56c7909d6d350c0891cb3" -> "sha256:c4563751092620fafa08bfd9f684ee66a71c1f5864b8a77eee2822ca99bd2f72" [label=""];
  "sha256:c4563751092620fafa08bfd9f684ee66a71c1f5864b8a77eee2822ca99bd2f72" -> "sha256:d436289a5ee900dce626c414e47d2497c192677a3799631926c3c36f4ebe3926" [label=""];
  "sha256:4c2143ec2c923f5f62da2934fc8abdad7c271eafe4c56c7909d6d350c0891cb3" -> "sha256:d436289a5ee900dce626c414e47d2497c192677a3799631926c3c36f4ebe3926" [label=""];
  "sha256:d436289a5ee900dce626c414e47d2497c192677a3799631926c3c36f4ebe3926" -> "sha256:284c4e91654e8152ce9e8631111251f8beb0e2d0618f2ea653a6c95660f0d415" [label=""];
  "sha256:284c4e91654e8152ce9e8631111251f8beb0e2d0618f2ea653a6c95660f0d415" -> "sha256:7cff9f1f68c87e318e6effdb9c74f05877d967cd2e95be9bd614781a6292b6ca" [label=""];
}

