[app/sources/482443906.Dockerfile]
digraph {
  "sha256:b150da432c7a40066a95bb13c63c745492fdd7212cf68b9867ca367c7b6abf96" [label="docker-image://docker.io/library/golang:1.8" shape="ellipse"];
  "sha256:5100fa1a4dd653f35451f884910450061bf1306a55d8bf74c32ef16e5ebf3989" [label="/bin/sh -c apt-get update   && apt-get install -y software-properties-common python-pip   python-setuptools   python-dev   build-essential   libssl-dev   libffi-dev   && apt-get install --no-install-suggests --no-install-recommends -y   curl   git   build-essential   python-netaddr   unzip   vim   wget   && apt-get clean -y   && apt-get autoremove -y   && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:caff82b4189da921487a31b4890a882be85843cd4f16e02b7122e1d8b7058648" [label="/bin/sh -c curl -sLo /tmp/terraform.zip   \"https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip\"     && unzip -d /usr/local/bin/ /tmp/terraform.zip       && rm /tmp/terraform.zip" shape="box"];
  "sha256:487423d12914b75afef6eb23edfa4659877cd2f6a2cdae6fbf07dc42e94e053e" [label="/bin/sh -c go get github.com/pilu/fresh" shape="box"];
  "sha256:68007a8c2f270cfb5ea8c1dfc0bd21d963125a120358e44b8f217abf934f33ec" [label="/bin/sh -c go get -u github.com/kardianos/govendor" shape="box"];
  "sha256:731389a5a4e50b96a7734a873da23d2d8129f3b08932df0da86c27fdd7eccf4c" [label="local://context" shape="ellipse"];
  "sha256:24f32c63f7d008fa521a0fa3bf9b26ffa9cb7f7569991e7790c15f7437a931d1" [label="copy{src=/, dest=/go/src/github.com/sky-uk/terraform-provider-nsx/}" shape="note"];
  "sha256:60da59cbade32d92f6556abdf51161e62211f4a1562eaa025a5c60060f9cc7be" [label="mkdir{path=/go/src/github.com/sky-uk/terraform-provider-nsx}" shape="note"];
  "sha256:56aad340afdb97d0deb07d880cc5256c44d47efd1d073b41499134bef3466f97" [label="/bin/sh -c govendor sync" shape="box"];
  "sha256:262f70b5fc04fdf72466775bd44e2e72938909f461524cc8f9f3438f252f0884" [label="copy{src=/docker/*, dest=/}" shape="note"];
  "sha256:a3e5bbad1a6df430dc883332dc48c581b4ce5a9b6f885b5b3e89c0bf116ff8c3" [label="/bin/sh -c chmod 755 /entrypoint.sh" shape="box"];
  "sha256:01ca0a8669da154410a4d15d48dbbf98a1765a5f0a0cd844bf631594878c1054" [label="sha256:01ca0a8669da154410a4d15d48dbbf98a1765a5f0a0cd844bf631594878c1054" shape="plaintext"];
  "sha256:b150da432c7a40066a95bb13c63c745492fdd7212cf68b9867ca367c7b6abf96" -> "sha256:5100fa1a4dd653f35451f884910450061bf1306a55d8bf74c32ef16e5ebf3989" [label=""];
  "sha256:5100fa1a4dd653f35451f884910450061bf1306a55d8bf74c32ef16e5ebf3989" -> "sha256:caff82b4189da921487a31b4890a882be85843cd4f16e02b7122e1d8b7058648" [label=""];
  "sha256:caff82b4189da921487a31b4890a882be85843cd4f16e02b7122e1d8b7058648" -> "sha256:487423d12914b75afef6eb23edfa4659877cd2f6a2cdae6fbf07dc42e94e053e" [label=""];
  "sha256:487423d12914b75afef6eb23edfa4659877cd2f6a2cdae6fbf07dc42e94e053e" -> "sha256:68007a8c2f270cfb5ea8c1dfc0bd21d963125a120358e44b8f217abf934f33ec" [label=""];
  "sha256:68007a8c2f270cfb5ea8c1dfc0bd21d963125a120358e44b8f217abf934f33ec" -> "sha256:24f32c63f7d008fa521a0fa3bf9b26ffa9cb7f7569991e7790c15f7437a931d1" [label=""];
  "sha256:731389a5a4e50b96a7734a873da23d2d8129f3b08932df0da86c27fdd7eccf4c" -> "sha256:24f32c63f7d008fa521a0fa3bf9b26ffa9cb7f7569991e7790c15f7437a931d1" [label=""];
  "sha256:24f32c63f7d008fa521a0fa3bf9b26ffa9cb7f7569991e7790c15f7437a931d1" -> "sha256:60da59cbade32d92f6556abdf51161e62211f4a1562eaa025a5c60060f9cc7be" [label=""];
  "sha256:60da59cbade32d92f6556abdf51161e62211f4a1562eaa025a5c60060f9cc7be" -> "sha256:56aad340afdb97d0deb07d880cc5256c44d47efd1d073b41499134bef3466f97" [label=""];
  "sha256:56aad340afdb97d0deb07d880cc5256c44d47efd1d073b41499134bef3466f97" -> "sha256:262f70b5fc04fdf72466775bd44e2e72938909f461524cc8f9f3438f252f0884" [label=""];
  "sha256:731389a5a4e50b96a7734a873da23d2d8129f3b08932df0da86c27fdd7eccf4c" -> "sha256:262f70b5fc04fdf72466775bd44e2e72938909f461524cc8f9f3438f252f0884" [label=""];
  "sha256:262f70b5fc04fdf72466775bd44e2e72938909f461524cc8f9f3438f252f0884" -> "sha256:a3e5bbad1a6df430dc883332dc48c581b4ce5a9b6f885b5b3e89c0bf116ff8c3" [label=""];
  "sha256:a3e5bbad1a6df430dc883332dc48c581b4ce5a9b6f885b5b3e89c0bf116ff8c3" -> "sha256:01ca0a8669da154410a4d15d48dbbf98a1765a5f0a0cd844bf631594878c1054" [label=""];
}

