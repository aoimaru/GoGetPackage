[app/sources/355974445.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:c9c6888f4e12d20ce63c6f4588c9cccfb5a45a626dc1db6a6c74b954547b5325" [label="/bin/sh -c apt-get update && apt-get install -y firefox" shape="box"];
  "sha256:451226d284a04ebf0b27a478d397855aa093366f361ed4dc004cbaf7c37f2459" [label="/bin/sh -c export uid=1000 gid=1000 &&     mkdir -p /home/hitch &&     echo \"hitch:x:${uid}:${gid}:Developer,,,:/home/hitch:/bin/bash\" >> /etc/passwd &&     echo \"hitch:x:${uid}:\" >> /etc/group &&     echo \"hitch ALL=(ALL) NOPASSWD: ALL\" > /etc/sudoers.d/hitch &&     chmod 0440 /etc/sudoers.d/hitch &&     chown ${uid}:${gid} -R /home/hitch" shape="box"];
  "sha256:e000c0ba0dc2003ee50225ce119f6496da5ab05f24fe887c6ca6cc4adec642f9" [label="sha256:e000c0ba0dc2003ee50225ce119f6496da5ab05f24fe887c6ca6cc4adec642f9" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:c9c6888f4e12d20ce63c6f4588c9cccfb5a45a626dc1db6a6c74b954547b5325" [label=""];
  "sha256:c9c6888f4e12d20ce63c6f4588c9cccfb5a45a626dc1db6a6c74b954547b5325" -> "sha256:451226d284a04ebf0b27a478d397855aa093366f361ed4dc004cbaf7c37f2459" [label=""];
  "sha256:451226d284a04ebf0b27a478d397855aa093366f361ed4dc004cbaf7c37f2459" -> "sha256:e000c0ba0dc2003ee50225ce119f6496da5ab05f24fe887c6ca6cc4adec642f9" [label=""];
}

