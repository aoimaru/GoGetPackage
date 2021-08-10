[app/sources/192420809.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:b4ae22ad0a459f0defa3038d9e11607a95a3f33d7470e0688675b3fc47b49346" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends build-essential libffi-dev     libssl-dev python-dev python-minimal python-pip python-setuptools     python-virtualenv &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0368245f937b3c70b86b1c72f29174c6c90e6189fd27d52edc564258aa2c67f5" [label="/bin/sh -c pip install enum34 ipaddress wheel &&     pip install ansible ansible-lint" shape="box"];
  "sha256:9efe3d4821a253a56166e21c5ae6623204045472781c1044aaa4e82948e733f0" [label="local://context" shape="ellipse"];
  "sha256:4c2aae1abf1c32332d7eb7fbf38946ee71bef4444b41f7643e23dbc0ed030ee3" [label="copy{src=/.ansible-lint, dest=/}" shape="note"];
  "sha256:06c4398c21df0e5d577cf0f7c28c2907d2dcf86bee22ea5663b363b928f36646" [label="sha256:06c4398c21df0e5d577cf0f7c28c2907d2dcf86bee22ea5663b363b928f36646" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:b4ae22ad0a459f0defa3038d9e11607a95a3f33d7470e0688675b3fc47b49346" [label=""];
  "sha256:b4ae22ad0a459f0defa3038d9e11607a95a3f33d7470e0688675b3fc47b49346" -> "sha256:0368245f937b3c70b86b1c72f29174c6c90e6189fd27d52edc564258aa2c67f5" [label=""];
  "sha256:0368245f937b3c70b86b1c72f29174c6c90e6189fd27d52edc564258aa2c67f5" -> "sha256:4c2aae1abf1c32332d7eb7fbf38946ee71bef4444b41f7643e23dbc0ed030ee3" [label=""];
  "sha256:9efe3d4821a253a56166e21c5ae6623204045472781c1044aaa4e82948e733f0" -> "sha256:4c2aae1abf1c32332d7eb7fbf38946ee71bef4444b41f7643e23dbc0ed030ee3" [label=""];
  "sha256:4c2aae1abf1c32332d7eb7fbf38946ee71bef4444b41f7643e23dbc0ed030ee3" -> "sha256:06c4398c21df0e5d577cf0f7c28c2907d2dcf86bee22ea5663b363b928f36646" [label=""];
}

