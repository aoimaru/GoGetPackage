[app/sources/341901718.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:64b2e27e750e67a8b2a46f549c923331000e7d9dd7375e7c2534946573facbf9" [label="local://context" shape="ellipse"];
  "sha256:bda3bf300148f5bca77c552d1920dd7493319f71c962f4d603e8cfddab58b894" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:671d3f7909c1eb00c5cfb909980fc089ea084390b08b2d0dd0280a83ed3f557f" [label="pip install sqlalchemy" shape="box"];
  "sha256:63307937b48546e4b77fb8b0320221d3e404804727c797ba805f3b7dd7c9eb4f" [label="pip install sqlalchemy" shape="box"];
  "sha256:00359c4e0c3a5eed04b1cb771af3c92baf0a8b29417e44f452e90a3029b5ed0c" [label="pip install sqlalchemy" shape="box"];
  "sha256:1c449040b887aeddd364c23f8409f5cf802fc9b192362a7a269a788e5231b1bb" [label="pip install sqlalchemy" shape="box"];
  "sha256:d428ea395930e31cb9b5fa5b1135de49b2cd5cbd5fb20636c0a55975d0bd3aba" [label="pip install sqlalchemy" shape="box"];
  "sha256:46cf1e08a547381dacc3889714045ffb2382cdf6cd3b493516edf7aacf8c14a3" [label="sha256:46cf1e08a547381dacc3889714045ffb2382cdf6cd3b493516edf7aacf8c14a3" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:bda3bf300148f5bca77c552d1920dd7493319f71c962f4d603e8cfddab58b894" [label=""];
  "sha256:64b2e27e750e67a8b2a46f549c923331000e7d9dd7375e7c2534946573facbf9" -> "sha256:bda3bf300148f5bca77c552d1920dd7493319f71c962f4d603e8cfddab58b894" [label=""];
  "sha256:bda3bf300148f5bca77c552d1920dd7493319f71c962f4d603e8cfddab58b894" -> "sha256:671d3f7909c1eb00c5cfb909980fc089ea084390b08b2d0dd0280a83ed3f557f" [label=""];
  "sha256:671d3f7909c1eb00c5cfb909980fc089ea084390b08b2d0dd0280a83ed3f557f" -> "sha256:63307937b48546e4b77fb8b0320221d3e404804727c797ba805f3b7dd7c9eb4f" [label=""];
  "sha256:63307937b48546e4b77fb8b0320221d3e404804727c797ba805f3b7dd7c9eb4f" -> "sha256:00359c4e0c3a5eed04b1cb771af3c92baf0a8b29417e44f452e90a3029b5ed0c" [label=""];
  "sha256:00359c4e0c3a5eed04b1cb771af3c92baf0a8b29417e44f452e90a3029b5ed0c" -> "sha256:1c449040b887aeddd364c23f8409f5cf802fc9b192362a7a269a788e5231b1bb" [label=""];
  "sha256:1c449040b887aeddd364c23f8409f5cf802fc9b192362a7a269a788e5231b1bb" -> "sha256:d428ea395930e31cb9b5fa5b1135de49b2cd5cbd5fb20636c0a55975d0bd3aba" [label=""];
  "sha256:d428ea395930e31cb9b5fa5b1135de49b2cd5cbd5fb20636c0a55975d0bd3aba" -> "sha256:46cf1e08a547381dacc3889714045ffb2382cdf6cd3b493516edf7aacf8c14a3" [label=""];
}

