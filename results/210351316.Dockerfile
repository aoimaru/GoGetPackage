[app/sources/210351316.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:971d033eeacfdc3db425e01afaedf468eba852b4c9c91657aaa350a651631cb9" [label="/bin/sh -c apt-get update &&     apt-get install -y gcc ca-certificates git wget curl vim less file &&     rm -f /bin/sh && ln -s /bin/bash /bin/sh" shape="box"];
  "sha256:f483ad95f60861d45bf24ac58fa96a65e80146764bb11d5c188b6685cebb332b" [label="/bin/sh -c wget -O - https://storage.googleapis.com/golang/go1.9.3.linux-${!GOLANG_ARCH}.tar.gz | tar -xzf - -C /usr/local &&     go get github.com/rancher/trash && go get golang.org/x/lint/golint" shape="box"];
  "sha256:dd3d8879fdbd1538ba8e801aa284357b7b4ff7f59b1c8fe961eb33c05ce0d33c" [label="/bin/sh -c wget -O - ${!DOCKER_URL} > /usr/bin/docker && chmod +x /usr/bin/docker" shape="box"];
  "sha256:fcb3a0e456f6b4569c1a8ce41c59b4fa678eca4af34a1b37f4b16c1e76ee56a2" [label="mkdir{path=/go/src/github.com/rancher/external-lb}" shape="note"];
  "sha256:259116efb09e9e526b0dee2143c7914a07f796397e3efa2b96116e26ed74f4d9" [label="sha256:259116efb09e9e526b0dee2143c7914a07f796397e3efa2b96116e26ed74f4d9" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:971d033eeacfdc3db425e01afaedf468eba852b4c9c91657aaa350a651631cb9" [label=""];
  "sha256:971d033eeacfdc3db425e01afaedf468eba852b4c9c91657aaa350a651631cb9" -> "sha256:f483ad95f60861d45bf24ac58fa96a65e80146764bb11d5c188b6685cebb332b" [label=""];
  "sha256:f483ad95f60861d45bf24ac58fa96a65e80146764bb11d5c188b6685cebb332b" -> "sha256:dd3d8879fdbd1538ba8e801aa284357b7b4ff7f59b1c8fe961eb33c05ce0d33c" [label=""];
  "sha256:dd3d8879fdbd1538ba8e801aa284357b7b4ff7f59b1c8fe961eb33c05ce0d33c" -> "sha256:fcb3a0e456f6b4569c1a8ce41c59b4fa678eca4af34a1b37f4b16c1e76ee56a2" [label=""];
  "sha256:fcb3a0e456f6b4569c1a8ce41c59b4fa678eca4af34a1b37f4b16c1e76ee56a2" -> "sha256:259116efb09e9e526b0dee2143c7914a07f796397e3efa2b96116e26ed74f4d9" [label=""];
}

