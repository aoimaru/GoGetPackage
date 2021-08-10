[app/sources/196374585.Dockerfile]
digraph {
  "sha256:c72b6c855e5a9c758366321a715e67894a23c79c878d2a457f9bf15c55cf0c5a" [label="docker-image://docker.io/library/golang:1.4" shape="ellipse"];
  "sha256:fac87d50861b2c6acb70f9148a39ef0d28ada562c1dd44297a7a4712aa3ceea1" [label="/bin/sh -c cd /usr/src/go/src && for platform in ${KUBE_CROSSPLATFORMS}; do GOOS=${platform%/*} GOARCH=${platform##*/} ./make.bash --no-clean; done" shape="box"];
  "sha256:17c0d98bfc3e10ff4efbebfb0c20cf107d699f270c7a2eed636c5f0e54c7ad72" [label="sha256:17c0d98bfc3e10ff4efbebfb0c20cf107d699f270c7a2eed636c5f0e54c7ad72" shape="plaintext"];
  "sha256:c72b6c855e5a9c758366321a715e67894a23c79c878d2a457f9bf15c55cf0c5a" -> "sha256:fac87d50861b2c6acb70f9148a39ef0d28ada562c1dd44297a7a4712aa3ceea1" [label=""];
  "sha256:fac87d50861b2c6acb70f9148a39ef0d28ada562c1dd44297a7a4712aa3ceea1" -> "sha256:17c0d98bfc3e10ff4efbebfb0c20cf107d699f270c7a2eed636c5f0e54c7ad72" [label=""];
}

