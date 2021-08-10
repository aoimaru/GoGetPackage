[app/sources/252800781.Dockerfile]
digraph {
  "sha256:0c736d3ba4c5b7f6a1157d1e42e06323663133228cc97a3ccc9b5dc4290a1537" [label="docker-image://docker.io/library/python:3-alpine" shape="ellipse"];
  "sha256:1a7ebfaf4d5e01ea4ad5fed35531ca36caa0ab4c21d6c1520cb4055c424d8ce3" [label="mkdir{path=/dorry-arm-market}" shape="note"];
  "sha256:e01c211ecfbf3d50f4001f4c6ea01d04dc90e0c744e06a026b969865ef8b115e" [label="local://context" shape="ellipse"];
  "sha256:e701171a66d1641758f1ba6f303d9517e39b4b9973e61ffd2dd77ff98e05cb55" [label="copy{src=/, dest=/dorry-arm-market/}" shape="note"];
  "sha256:1df8067dabc4a2cf8d1420447ad8e59dc2e6944cbe9f3552d57a75e0e93aabff" [label="/bin/sh -c pip install -r requirements" shape="box"];
  "sha256:19afe07434bb1da3cc157611bcae3bef618a12bb786832f13405edeb3b30048c" [label="sha256:19afe07434bb1da3cc157611bcae3bef618a12bb786832f13405edeb3b30048c" shape="plaintext"];
  "sha256:0c736d3ba4c5b7f6a1157d1e42e06323663133228cc97a3ccc9b5dc4290a1537" -> "sha256:1a7ebfaf4d5e01ea4ad5fed35531ca36caa0ab4c21d6c1520cb4055c424d8ce3" [label=""];
  "sha256:1a7ebfaf4d5e01ea4ad5fed35531ca36caa0ab4c21d6c1520cb4055c424d8ce3" -> "sha256:e701171a66d1641758f1ba6f303d9517e39b4b9973e61ffd2dd77ff98e05cb55" [label=""];
  "sha256:e01c211ecfbf3d50f4001f4c6ea01d04dc90e0c744e06a026b969865ef8b115e" -> "sha256:e701171a66d1641758f1ba6f303d9517e39b4b9973e61ffd2dd77ff98e05cb55" [label=""];
  "sha256:e701171a66d1641758f1ba6f303d9517e39b4b9973e61ffd2dd77ff98e05cb55" -> "sha256:1df8067dabc4a2cf8d1420447ad8e59dc2e6944cbe9f3552d57a75e0e93aabff" [label=""];
  "sha256:1df8067dabc4a2cf8d1420447ad8e59dc2e6944cbe9f3552d57a75e0e93aabff" -> "sha256:19afe07434bb1da3cc157611bcae3bef618a12bb786832f13405edeb3b30048c" [label=""];
}

