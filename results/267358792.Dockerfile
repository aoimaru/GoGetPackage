[app/sources/267358792.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:72bba7f2b597faf766a214b785ba942083cf141e951fdeff234f33b71dd2f95a" [label="local://context" shape="ellipse"];
  "sha256:b4e8b83171a5c923b51725b655f0244d36cf09c652d90d19c878fd8f3c625dd1" [label="copy{src=/sampctl, dest=/bin/sampctl}" shape="note"];
  "sha256:a9d4ac1f8b5dfa32d10e0edccbfea9f628eea02f89ac36ead140222fd5f7f6bf" [label="/bin/sh -c mkdir samp &&     dpkg --add-architecture i386 &&     apt update &&     apt install -y g++-multilib git ca-certificates" shape="box"];
  "sha256:b87b165117b546edff77f3d26ae5d323c62ae28f5a5b6746c6c4a0cc53056df8" [label="mkdir{path=/samp}" shape="note"];
  "sha256:f88d8a1553d6ca66ec2a1f8cff4f1ac7eef9156a71c48ac774fe78b0658b9a1f" [label="sha256:f88d8a1553d6ca66ec2a1f8cff4f1ac7eef9156a71c48ac774fe78b0658b9a1f" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:b4e8b83171a5c923b51725b655f0244d36cf09c652d90d19c878fd8f3c625dd1" [label=""];
  "sha256:72bba7f2b597faf766a214b785ba942083cf141e951fdeff234f33b71dd2f95a" -> "sha256:b4e8b83171a5c923b51725b655f0244d36cf09c652d90d19c878fd8f3c625dd1" [label=""];
  "sha256:b4e8b83171a5c923b51725b655f0244d36cf09c652d90d19c878fd8f3c625dd1" -> "sha256:a9d4ac1f8b5dfa32d10e0edccbfea9f628eea02f89ac36ead140222fd5f7f6bf" [label=""];
  "sha256:a9d4ac1f8b5dfa32d10e0edccbfea9f628eea02f89ac36ead140222fd5f7f6bf" -> "sha256:b87b165117b546edff77f3d26ae5d323c62ae28f5a5b6746c6c4a0cc53056df8" [label=""];
  "sha256:b87b165117b546edff77f3d26ae5d323c62ae28f5a5b6746c6c4a0cc53056df8" -> "sha256:f88d8a1553d6ca66ec2a1f8cff4f1ac7eef9156a71c48ac774fe78b0658b9a1f" [label=""];
}

