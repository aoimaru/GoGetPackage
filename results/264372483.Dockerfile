[app/sources/264372483.Dockerfile]
digraph {
  "sha256:fefefb27ab1bf62db9eff0da3ca1604e54f1359fecc545b98699489c55c1284d" [label="docker-image://docker.io/dockeronwindows/ch02-fs-1:latest" shape="ellipse"];
  "sha256:f30ef1d27602e63cbc190be8bf45e0982ba58f5974b27b35b221395f80d515b3" [label="/bin/sh -c echo 'from image 2' > c:\\data\\file2.txt" shape="box"];
  "sha256:eb3ac06f6d3f9664a71a2fe910b04b4c718de4a31bc0246b2b38e2624e8a5cd4" [label="sha256:eb3ac06f6d3f9664a71a2fe910b04b4c718de4a31bc0246b2b38e2624e8a5cd4" shape="plaintext"];
  "sha256:fefefb27ab1bf62db9eff0da3ca1604e54f1359fecc545b98699489c55c1284d" -> "sha256:f30ef1d27602e63cbc190be8bf45e0982ba58f5974b27b35b221395f80d515b3" [label=""];
  "sha256:f30ef1d27602e63cbc190be8bf45e0982ba58f5974b27b35b221395f80d515b3" -> "sha256:eb3ac06f6d3f9664a71a2fe910b04b4c718de4a31bc0246b2b38e2624e8a5cd4" [label=""];
}

