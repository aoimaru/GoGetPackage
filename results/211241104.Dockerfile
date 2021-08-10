[app/sources/211241104.Dockerfile]
digraph {
  "sha256:2c5fdb5733696bf44171e4fad0a6a4a5aa722d1f46d29aff981c5c3636624c2a" [label="docker-image://docker.io/serversideswift/swift:DEVELOPMENT-SNAPSHOT-2016-03-24-a" shape="ellipse"];
  "sha256:44df00a21917c6dda3d5902d3c948a2d9347eee9e1bd922595bbffb28a5ceda9" [label="/bin/sh -c curl -L https://github.com/mongodb/mongo-c-driver/releases/download/1.3.0/mongo-c-driver-1.3.0.tar.gz > mongo-c-driver-1.3.0.tar.gz &&     tar xzf mongo-c-driver-1.3.0.tar.gz &&     cd mongo-c-driver-1.3.0 &&     ./configure &&     make &&     make install &&     cp -lf /usr/local/lib/libbson* /usr/lib &&     sed -i 's/<bson.h>/\"bson.h\"/g' /usr/local/include/libbson-1.0/bcon.h &&     echo /usr/local/lib > /etc/ld.so.conf.d/mongoc.conf &&     ldconfig" shape="box"];
  "sha256:fe9912b1354cea9c81cbcab7d4059580f9f3d9d4f4fa3827b13da7bae86bf631" [label="/bin/sh -c apt-get update &&     apt-get install -y         inotify-tools &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:3b7d32e6ccbcc4213b29700944e184526b790b44eb0846d88f5de95b488846d6" [label="mkdir{path=/app}" shape="note"];
  "sha256:984d6bbf73645a6c247618b6417641fd4de1b7cccd4415d9e78cc909f091b5a3" [label="local://context" shape="ellipse"];
  "sha256:19ca2463b2fa0a6e0154060026b2a45f6fbca34c118b815c2d4bb2b22c1f34b7" [label="copy{src=/dockerfiles/swift/autoreload.sh, dest=/autoreload.sh}" shape="note"];
  "sha256:9ee6f649f88b422390cf8e2f9a821add01ac8764bea0f9d9ef78d9a56419ed8b" [label="sha256:9ee6f649f88b422390cf8e2f9a821add01ac8764bea0f9d9ef78d9a56419ed8b" shape="plaintext"];
  "sha256:2c5fdb5733696bf44171e4fad0a6a4a5aa722d1f46d29aff981c5c3636624c2a" -> "sha256:44df00a21917c6dda3d5902d3c948a2d9347eee9e1bd922595bbffb28a5ceda9" [label=""];
  "sha256:44df00a21917c6dda3d5902d3c948a2d9347eee9e1bd922595bbffb28a5ceda9" -> "sha256:fe9912b1354cea9c81cbcab7d4059580f9f3d9d4f4fa3827b13da7bae86bf631" [label=""];
  "sha256:fe9912b1354cea9c81cbcab7d4059580f9f3d9d4f4fa3827b13da7bae86bf631" -> "sha256:3b7d32e6ccbcc4213b29700944e184526b790b44eb0846d88f5de95b488846d6" [label=""];
  "sha256:3b7d32e6ccbcc4213b29700944e184526b790b44eb0846d88f5de95b488846d6" -> "sha256:19ca2463b2fa0a6e0154060026b2a45f6fbca34c118b815c2d4bb2b22c1f34b7" [label=""];
  "sha256:984d6bbf73645a6c247618b6417641fd4de1b7cccd4415d9e78cc909f091b5a3" -> "sha256:19ca2463b2fa0a6e0154060026b2a45f6fbca34c118b815c2d4bb2b22c1f34b7" [label=""];
  "sha256:19ca2463b2fa0a6e0154060026b2a45f6fbca34c118b815c2d4bb2b22c1f34b7" -> "sha256:9ee6f649f88b422390cf8e2f9a821add01ac8764bea0f9d9ef78d9a56419ed8b" [label=""];
}

