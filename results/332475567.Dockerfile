[app/sources/332475567.Dockerfile]
digraph {
  "sha256:85258175b91336b55d3fde9bc3f49b9429e16a7b64d1af9468b3f58b79cb781e" [label="docker-image://docker.io/kaggle/python:latest" shape="ellipse"];
  "sha256:82ecb51604cc0008791e798873ca6f0148d0425777b228b34e1949016bc9aeb3" [label="/bin/sh -c apt-get update && apt-get install -y vim" shape="box"];
  "sha256:50c7fb5276b83cc0ad97c6d6a68e64a73ab4a2baa7fadbe7a882a93d5e93b8c5" [label="/bin/sh -c pip install --upgrade pip" shape="box"];
  "sha256:70f8a8d43c81a9f548c7ff84fce15fa0a20d7e6d16be8db9c92a671afe30c647" [label="/bin/sh -c pip install kaggle" shape="box"];
  "sha256:7dd5e0ca3e043dc19e1af8f15f6c4ed7eb590ca6ed31979046cd7f8139f1109a" [label="sha256:7dd5e0ca3e043dc19e1af8f15f6c4ed7eb590ca6ed31979046cd7f8139f1109a" shape="plaintext"];
  "sha256:85258175b91336b55d3fde9bc3f49b9429e16a7b64d1af9468b3f58b79cb781e" -> "sha256:82ecb51604cc0008791e798873ca6f0148d0425777b228b34e1949016bc9aeb3" [label=""];
  "sha256:82ecb51604cc0008791e798873ca6f0148d0425777b228b34e1949016bc9aeb3" -> "sha256:50c7fb5276b83cc0ad97c6d6a68e64a73ab4a2baa7fadbe7a882a93d5e93b8c5" [label=""];
  "sha256:50c7fb5276b83cc0ad97c6d6a68e64a73ab4a2baa7fadbe7a882a93d5e93b8c5" -> "sha256:70f8a8d43c81a9f548c7ff84fce15fa0a20d7e6d16be8db9c92a671afe30c647" [label=""];
  "sha256:70f8a8d43c81a9f548c7ff84fce15fa0a20d7e6d16be8db9c92a671afe30c647" -> "sha256:7dd5e0ca3e043dc19e1af8f15f6c4ed7eb590ca6ed31979046cd7f8139f1109a" [label=""];
}

