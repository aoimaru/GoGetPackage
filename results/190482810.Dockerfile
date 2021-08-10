[app/sources/190482810.Dockerfile]
digraph {
  "sha256:bb4fbd52e18511470ec8d08899f0815e79005fc2cf8a31e1f19c5ff99ce7d4e7" [label="docker-image://docker.io/codenvy/jdk7_postgresql@sha256:d07f3a87b9b4ca6dd37b32f9e81c692502255fc8ef9c5d8f50a8f53dc0f4395c" shape="ellipse"];
  "sha256:e0c91dccd99fc24026fef2bfe2f77613883749ff4941da7ea060ecae69c3d433" [label="local://context" shape="ellipse"];
  "sha256:731722167c95c6841a0cab038ce276a9c67b8a313f739a7104b1a1b0da07e8e4" [label="copy{src=/$, dest=/home/user/$}" shape="note"];
  "sha256:ae3cfbeca0daf0d2a0f6a6a90fda23c3f18e1c3cafbead6724af29188ad82d24" [label="/bin/sh -c unzip -q /home/user/$app$ -d /home/user" shape="box"];
  "sha256:e811775cc58b3b9cea6a976a413ea9569547a1ce5b5a70f21e74901c071127d0" [label="sha256:e811775cc58b3b9cea6a976a413ea9569547a1ce5b5a70f21e74901c071127d0" shape="plaintext"];
  "sha256:bb4fbd52e18511470ec8d08899f0815e79005fc2cf8a31e1f19c5ff99ce7d4e7" -> "sha256:731722167c95c6841a0cab038ce276a9c67b8a313f739a7104b1a1b0da07e8e4" [label=""];
  "sha256:e0c91dccd99fc24026fef2bfe2f77613883749ff4941da7ea060ecae69c3d433" -> "sha256:731722167c95c6841a0cab038ce276a9c67b8a313f739a7104b1a1b0da07e8e4" [label=""];
  "sha256:731722167c95c6841a0cab038ce276a9c67b8a313f739a7104b1a1b0da07e8e4" -> "sha256:ae3cfbeca0daf0d2a0f6a6a90fda23c3f18e1c3cafbead6724af29188ad82d24" [label=""];
  "sha256:ae3cfbeca0daf0d2a0f6a6a90fda23c3f18e1c3cafbead6724af29188ad82d24" -> "sha256:e811775cc58b3b9cea6a976a413ea9569547a1ce5b5a70f21e74901c071127d0" [label=""];
}

