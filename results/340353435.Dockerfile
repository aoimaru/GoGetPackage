[app/sources/340353435.Dockerfile]
digraph {
  "sha256:e4d119e8c561a9ba0a606cf4862a821da246391a429988a715010c1938a06a9b" [label="docker-image://docker.io/library/ros:melodic-ros-base-stretch" shape="ellipse"];
  "sha256:d0cd36d70ec39b87068617338fcb8efc431241300ab2576ee66e2734c240bc89" [label="/bin/sh -c apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2843d2654bb99b0939124396b879ef48b7aead1a454dc5a84a406502ba425843" [label="sha256:2843d2654bb99b0939124396b879ef48b7aead1a454dc5a84a406502ba425843" shape="plaintext"];
  "sha256:e4d119e8c561a9ba0a606cf4862a821da246391a429988a715010c1938a06a9b" -> "sha256:d0cd36d70ec39b87068617338fcb8efc431241300ab2576ee66e2734c240bc89" [label=""];
  "sha256:d0cd36d70ec39b87068617338fcb8efc431241300ab2576ee66e2734c240bc89" -> "sha256:2843d2654bb99b0939124396b879ef48b7aead1a454dc5a84a406502ba425843" [label=""];
}

