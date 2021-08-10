[app/sources/438531600.Dockerfile]
digraph {
  "sha256:12fe3896525e2bace84d4f3287e0b5001d5c1903658344c436263e63ec93e48e" [label="docker-image://docker.io/library/python:2.7@sha256:cfa62318c459b1fde9e0841c619906d15ada5910d625176e24bf692cf8a2601d" shape="ellipse"];
  "sha256:6f2433db27b9d83f766dc4585a9a00a4f2e428631b3e6c41d88c67c687577aa7" [label="local://context" shape="ellipse"];
  "sha256:864b496233e6b255ad8628b85d81557196c390822599858d08f4315e00965780" [label="copy{src=/, dest=/tahoe-lafs}" shape="note"];
  "sha256:efe513527878f6a0e8f47631525f6ec3883b9eaf8e6778abc35d16660260a52e" [label="/bin/sh -c cd /tahoe-lafs &&   git pull --depth=100 &&   pip install . &&   rm -rf ~/.cache/" shape="box"];
  "sha256:ec2197675bfd698e78922940350703dd78fc54d37afea3169ea341e0457ec5c5" [label="mkdir{path=/root}" shape="note"];
  "sha256:93e5971a933c523fe710e0c26a54ab22732eb2dbcf291360956741b8aabacc98" [label="sha256:93e5971a933c523fe710e0c26a54ab22732eb2dbcf291360956741b8aabacc98" shape="plaintext"];
  "sha256:12fe3896525e2bace84d4f3287e0b5001d5c1903658344c436263e63ec93e48e" -> "sha256:864b496233e6b255ad8628b85d81557196c390822599858d08f4315e00965780" [label=""];
  "sha256:6f2433db27b9d83f766dc4585a9a00a4f2e428631b3e6c41d88c67c687577aa7" -> "sha256:864b496233e6b255ad8628b85d81557196c390822599858d08f4315e00965780" [label=""];
  "sha256:864b496233e6b255ad8628b85d81557196c390822599858d08f4315e00965780" -> "sha256:efe513527878f6a0e8f47631525f6ec3883b9eaf8e6778abc35d16660260a52e" [label=""];
  "sha256:efe513527878f6a0e8f47631525f6ec3883b9eaf8e6778abc35d16660260a52e" -> "sha256:ec2197675bfd698e78922940350703dd78fc54d37afea3169ea341e0457ec5c5" [label=""];
  "sha256:ec2197675bfd698e78922940350703dd78fc54d37afea3169ea341e0457ec5c5" -> "sha256:93e5971a933c523fe710e0c26a54ab22732eb2dbcf291360956741b8aabacc98" [label=""];
}

