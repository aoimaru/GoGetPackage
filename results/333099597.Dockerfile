[app/sources/333099597.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:46e489d3d7eebf6d247efb5b40cf3aa9b62e463f34307ef49f3eb7ff4cfed47a" [label="/bin/sh -c apt-get update && apt-get -y install python python-pip" shape="box"];
  "sha256:3717a55c2e7700fb69a636cc1825ed2adf88b8faafb48d2183e89a51f34b4090" [label="local://context" shape="ellipse"];
  "sha256:5b1e9d415c2be1ff27eef478fe15efd0ca6e562e75f849d80de12a02b823e22b" [label="copy{src=/, dest=/opt/lutron}" shape="note"];
  "sha256:676d7435a5af6b71ed6112d624740b081ad45200500c26c4a07f5d902b741b70" [label="mkdir{path=/opt/lutron}" shape="note"];
  "sha256:1fb70de8329321f64c41a972e993ddc795ac0e0193294c5af40fd1cfbc2b903d" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:c40a3a8d51a0411e53a0eeca52e698953606b47789797ae8b7fe10b1359758c0" [label="sha256:c40a3a8d51a0411e53a0eeca52e698953606b47789797ae8b7fe10b1359758c0" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:46e489d3d7eebf6d247efb5b40cf3aa9b62e463f34307ef49f3eb7ff4cfed47a" [label=""];
  "sha256:46e489d3d7eebf6d247efb5b40cf3aa9b62e463f34307ef49f3eb7ff4cfed47a" -> "sha256:5b1e9d415c2be1ff27eef478fe15efd0ca6e562e75f849d80de12a02b823e22b" [label=""];
  "sha256:3717a55c2e7700fb69a636cc1825ed2adf88b8faafb48d2183e89a51f34b4090" -> "sha256:5b1e9d415c2be1ff27eef478fe15efd0ca6e562e75f849d80de12a02b823e22b" [label=""];
  "sha256:5b1e9d415c2be1ff27eef478fe15efd0ca6e562e75f849d80de12a02b823e22b" -> "sha256:676d7435a5af6b71ed6112d624740b081ad45200500c26c4a07f5d902b741b70" [label=""];
  "sha256:676d7435a5af6b71ed6112d624740b081ad45200500c26c4a07f5d902b741b70" -> "sha256:1fb70de8329321f64c41a972e993ddc795ac0e0193294c5af40fd1cfbc2b903d" [label=""];
  "sha256:1fb70de8329321f64c41a972e993ddc795ac0e0193294c5af40fd1cfbc2b903d" -> "sha256:c40a3a8d51a0411e53a0eeca52e698953606b47789797ae8b7fe10b1359758c0" [label=""];
}

