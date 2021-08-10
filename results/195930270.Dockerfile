[app/sources/195930270.Dockerfile]
digraph {
  "sha256:b3ad7f78eb5344674aa86c5f248cc19b26f9e11f297398bf7ba8c97ee4383278" [label="docker-image://docker.io/library/python:alpine" shape="ellipse"];
  "sha256:60797c9c282ad3f39e5704faf1b9a2843b013e9e23e6b6e0ba62fd37bcdb5ee1" [label="/bin/sh -c pip install waybackpack" shape="box"];
  "sha256:18ffe1b6542375103bcfd80117f02082301fdda3e38dd54d15629943012a85c6" [label="sha256:18ffe1b6542375103bcfd80117f02082301fdda3e38dd54d15629943012a85c6" shape="plaintext"];
  "sha256:b3ad7f78eb5344674aa86c5f248cc19b26f9e11f297398bf7ba8c97ee4383278" -> "sha256:60797c9c282ad3f39e5704faf1b9a2843b013e9e23e6b6e0ba62fd37bcdb5ee1" [label=""];
  "sha256:60797c9c282ad3f39e5704faf1b9a2843b013e9e23e6b6e0ba62fd37bcdb5ee1" -> "sha256:18ffe1b6542375103bcfd80117f02082301fdda3e38dd54d15629943012a85c6" [label=""];
}

