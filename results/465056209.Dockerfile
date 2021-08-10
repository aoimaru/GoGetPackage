[app/sources/465056209.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:2d6be5f2c20ada2d7a90ea16af27916c3592ef9a0cf4b7a29b27a228e93524f3" [label="/bin/sh -c apt-get update &&     apt-get install -y gcc ca-certificates git wget curl vim less file python-tox python-dev &&     rm -f /bin/sh && ln -s /bin/bash /bin/sh" shape="box"];
  "sha256:b04dd8eeccb8c2e09b49b9ac1ee91af6e91696f698875e00148bef61c991c683" [label="/bin/sh -c wget -O - ${!DOCKER_URL} > /usr/bin/docker && chmod +x /usr/bin/docker" shape="box"];
  "sha256:b7418ddb7890f30a0b8b0db726c38edec75c68485c4cc7ac148627c2539520c6" [label="/bin/sh -c wget -O - https://storage.googleapis.com/golang/go1.12.linux-${!GOLANG_ARCH}.tar.gz | tar -xzf - -C /usr/local" shape="box"];
  "sha256:2719ea3c7c5073e85c600abad374d3ca95aaf1dfd46100f732b66d551655ea9f" [label="/bin/sh -c go get github.com/rancher/trash && go get golang.org/x/lint/golint" shape="box"];
  "sha256:2ebc430021ac8bf5f9e91827a89b832eb353592503866b85dcd105833e39b583" [label="mkdir{path=/go/src/github.com/rancher/local-path-provisioner}" shape="note"];
  "sha256:b424bdb91cd0a1065e422fda631a30befd9707f296e35c9d8e10d54889045586" [label="sha256:b424bdb91cd0a1065e422fda631a30befd9707f296e35c9d8e10d54889045586" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:2d6be5f2c20ada2d7a90ea16af27916c3592ef9a0cf4b7a29b27a228e93524f3" [label=""];
  "sha256:2d6be5f2c20ada2d7a90ea16af27916c3592ef9a0cf4b7a29b27a228e93524f3" -> "sha256:b04dd8eeccb8c2e09b49b9ac1ee91af6e91696f698875e00148bef61c991c683" [label=""];
  "sha256:b04dd8eeccb8c2e09b49b9ac1ee91af6e91696f698875e00148bef61c991c683" -> "sha256:b7418ddb7890f30a0b8b0db726c38edec75c68485c4cc7ac148627c2539520c6" [label=""];
  "sha256:b7418ddb7890f30a0b8b0db726c38edec75c68485c4cc7ac148627c2539520c6" -> "sha256:2719ea3c7c5073e85c600abad374d3ca95aaf1dfd46100f732b66d551655ea9f" [label=""];
  "sha256:2719ea3c7c5073e85c600abad374d3ca95aaf1dfd46100f732b66d551655ea9f" -> "sha256:2ebc430021ac8bf5f9e91827a89b832eb353592503866b85dcd105833e39b583" [label=""];
  "sha256:2ebc430021ac8bf5f9e91827a89b832eb353592503866b85dcd105833e39b583" -> "sha256:b424bdb91cd0a1065e422fda631a30befd9707f296e35c9d8e10d54889045586" [label=""];
}

