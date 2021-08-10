[app/sources/181056895.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:255b69c6c4422db0426ff313dee48c55fae35bccca4803c081df81d6119a9a7d" [label="/bin/sh -c apt-get update &&     apt-get install -y gcc ca-certificates git wget curl vim less file &&     rm -f /bin/sh && ln -s /bin/bash /bin/sh" shape="box"];
  "sha256:439040c092ffdae518250e60cff56f4524101cfdcbb183cb1e5e20e0a299f861" [label="/bin/sh -c wget -O - https://storage.googleapis.com/golang/go1.6.3.linux-${!GOLANG_ARCH}.tar.gz | tar -xzf - -C /usr/local &&     go get github.com/rancher/trash && go get github.com/golang/lint/golint" shape="box"];
  "sha256:27cf0a18de4c972b842e261e143336f2d6b1d341324735a0c1ce9788a203088a" [label="/bin/sh -c wget -O - ${!DOCKER_URL} > /usr/bin/docker && chmod +x /usr/bin/docker" shape="box"];
  "sha256:104e7940e587ade84e62e8dae3b29d275b78e0e6c46abb6b4c98cbb9d9c4b7ec" [label="mkdir{path=/go/src/github.com/rancher/event-subscriber}" shape="note"];
  "sha256:9e660ddb81a9f47d15ecf8f5b2696f4d266272c21db7d0a3ccabb6d0715726d8" [label="sha256:9e660ddb81a9f47d15ecf8f5b2696f4d266272c21db7d0a3ccabb6d0715726d8" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:255b69c6c4422db0426ff313dee48c55fae35bccca4803c081df81d6119a9a7d" [label=""];
  "sha256:255b69c6c4422db0426ff313dee48c55fae35bccca4803c081df81d6119a9a7d" -> "sha256:439040c092ffdae518250e60cff56f4524101cfdcbb183cb1e5e20e0a299f861" [label=""];
  "sha256:439040c092ffdae518250e60cff56f4524101cfdcbb183cb1e5e20e0a299f861" -> "sha256:27cf0a18de4c972b842e261e143336f2d6b1d341324735a0c1ce9788a203088a" [label=""];
  "sha256:27cf0a18de4c972b842e261e143336f2d6b1d341324735a0c1ce9788a203088a" -> "sha256:104e7940e587ade84e62e8dae3b29d275b78e0e6c46abb6b4c98cbb9d9c4b7ec" [label=""];
  "sha256:104e7940e587ade84e62e8dae3b29d275b78e0e6c46abb6b4c98cbb9d9c4b7ec" -> "sha256:9e660ddb81a9f47d15ecf8f5b2696f4d266272c21db7d0a3ccabb6d0715726d8" [label=""];
}

