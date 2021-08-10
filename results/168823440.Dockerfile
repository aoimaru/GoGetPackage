[app/sources/168823440.Dockerfile]
digraph {
  "sha256:742a2e94228d56763307c1a8d9f5891efb0ec2bbe78c9bc7d8ca184d9f6f1365" [label="docker-image://docker.io/dockerfile/ubuntu:latest" shape="ellipse"];
  "sha256:de8b67b166e12c0d7099159ef62e1473063a29d4214fc80da1f62ff93ba81ad2" [label="/bin/sh -c apt-get update && apt-get install -y ssh && mkdir /var/run/sshd" shape="box"];
  "sha256:c89691034a187fe93a14616a79e7805d28b48bcf8a1bd55ee43c985b248136f4" [label="/bin/sh -c useradd -m -s /bin/bash stanley ;     sudo -u stanley mkdir /home/stanley/.ssh ;     chmod 750 /home/stanley/.ssh ;     echo \"stanley ALL=(ALL) NOPASSWD: ALL\" > /etc/sudoers.d/st2 ;     chmod 440 /etc/sudoers.d/st2 ;     echo stanley:stanley | chpasswd" shape="box"];
  "sha256:9a66ab1fe1b6e4b7d76d3477fbd93b4b35161fbfcd961f80b13e17d3d3d5e295" [label="sha256:9a66ab1fe1b6e4b7d76d3477fbd93b4b35161fbfcd961f80b13e17d3d3d5e295" shape="plaintext"];
  "sha256:742a2e94228d56763307c1a8d9f5891efb0ec2bbe78c9bc7d8ca184d9f6f1365" -> "sha256:de8b67b166e12c0d7099159ef62e1473063a29d4214fc80da1f62ff93ba81ad2" [label=""];
  "sha256:de8b67b166e12c0d7099159ef62e1473063a29d4214fc80da1f62ff93ba81ad2" -> "sha256:c89691034a187fe93a14616a79e7805d28b48bcf8a1bd55ee43c985b248136f4" [label=""];
  "sha256:c89691034a187fe93a14616a79e7805d28b48bcf8a1bd55ee43c985b248136f4" -> "sha256:9a66ab1fe1b6e4b7d76d3477fbd93b4b35161fbfcd961f80b13e17d3d3d5e295" [label=""];
}

