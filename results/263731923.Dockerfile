[app/sources/263731923.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:d89f26c136b2803ebc4d05704797cd5b94e4ad948f9672446f9a3f4e00aba839" [label="local://context" shape="ellipse"];
  "sha256:89cbfe42ceb239d67625c6c65ca6af43382062119c50a2b689a8a7f10cf7363a" [label="copy{src=/apt_proxy.sh, dest=/apt_proxy.sh}" shape="note"];
  "sha256:5d71d63161b3e5069c274c1af33e21e9a3cfabfb0d4070ccea74aee390d79453" [label="/bin/sh -c /apt_proxy.sh &&  apt-get update &&  apt-get install -y apt-transport-https ca-certificates curl module-init-tools &&  curl -fsSL \"${DOCKER_EE_URL}\"/gpg | apt-key add - &&  echo \"deb [arch=amd64] ${DOCKER_EE_URL} xenial ${DOCKER_EE_REPO}\" > /etc/apt/sources.list.d/docker.list &&  apt-get update &&  apt-get install -y containerd.io docker-ee-cli=\"${DOCKER_EE_PKG}\" docker-ee=\"${DOCKER_EE_PKG}\" &&  rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/docker.list /etc/apt/apt.conf.d/00proxy" shape="box"];
  "sha256:2cdb4be7bbb4e95fb5dc74a33342189361088776ab1ec7677b4b34c70cfec8e3" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:d57553e195c6c4bb81c71957e10065cf33b170dc37d5c3fe534b8d132aa8d660" [label="sha256:d57553e195c6c4bb81c71957e10065cf33b170dc37d5c3fe534b8d132aa8d660" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:89cbfe42ceb239d67625c6c65ca6af43382062119c50a2b689a8a7f10cf7363a" [label=""];
  "sha256:d89f26c136b2803ebc4d05704797cd5b94e4ad948f9672446f9a3f4e00aba839" -> "sha256:89cbfe42ceb239d67625c6c65ca6af43382062119c50a2b689a8a7f10cf7363a" [label=""];
  "sha256:89cbfe42ceb239d67625c6c65ca6af43382062119c50a2b689a8a7f10cf7363a" -> "sha256:5d71d63161b3e5069c274c1af33e21e9a3cfabfb0d4070ccea74aee390d79453" [label=""];
  "sha256:5d71d63161b3e5069c274c1af33e21e9a3cfabfb0d4070ccea74aee390d79453" -> "sha256:2cdb4be7bbb4e95fb5dc74a33342189361088776ab1ec7677b4b34c70cfec8e3" [label=""];
  "sha256:d89f26c136b2803ebc4d05704797cd5b94e4ad948f9672446f9a3f4e00aba839" -> "sha256:2cdb4be7bbb4e95fb5dc74a33342189361088776ab1ec7677b4b34c70cfec8e3" [label=""];
  "sha256:2cdb4be7bbb4e95fb5dc74a33342189361088776ab1ec7677b4b34c70cfec8e3" -> "sha256:d57553e195c6c4bb81c71957e10065cf33b170dc37d5c3fe534b8d132aa8d660" [label=""];
}

