[app/sources/252776326.Dockerfile]
digraph {
  "sha256:28646eba2fcbe2ebd828fda09951697955fccb99441576ae2f3ac2093f7fb37b" [label="docker-image://docker.io/library/mysql:5.5" shape="ellipse"];
  "sha256:bde8e24cb4693df1d3d865a1d2194c3c99b0e75fdb67c92a9760686fee1e0b51" [label="/bin/sh -c echo \"max_allowed_packet=16M\" >> /etc/mysql/conf.d/docker.cnf" shape="box"];
  "sha256:a796e4b30fce147c90a796799b4e02a1461318718e2ab4df4ea08944ded610d3" [label="sha256:a796e4b30fce147c90a796799b4e02a1461318718e2ab4df4ea08944ded610d3" shape="plaintext"];
  "sha256:28646eba2fcbe2ebd828fda09951697955fccb99441576ae2f3ac2093f7fb37b" -> "sha256:bde8e24cb4693df1d3d865a1d2194c3c99b0e75fdb67c92a9760686fee1e0b51" [label=""];
  "sha256:bde8e24cb4693df1d3d865a1d2194c3c99b0e75fdb67c92a9760686fee1e0b51" -> "sha256:a796e4b30fce147c90a796799b4e02a1461318718e2ab4df4ea08944ded610d3" [label=""];
}

