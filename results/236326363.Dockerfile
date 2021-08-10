[app/sources/236326363.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:d6774d3c143c9299b2cc014047fd276c503ddfe5ed5f09168c037c520173da38" [label="/bin/sh -c apk --update add openssl jq bash unzip curl" shape="box"];
  "sha256:1a16e9e04ae6649cb547dfcb03c5e7b19b47fa5405e7cd68f9e586f6f52b092d" [label="/bin/sh -c curl -sL  https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip > /tmp/vault.zip &&     echo \"${VAULT_HASH}  /tmp/vault.zip\" | sha256sum  -c &&     unzip /tmp/vault.zip &&     rm /tmp/vault.zip &&     mv vault /usr/local/bin/vault &&     chmod +x /usr/local/bin/vault" shape="box"];
  "sha256:1be72a7707d79015d614d2d598bae2ddac159817a8ee080d7aa6948fe6543868" [label="local://context" shape="ellipse"];
  "sha256:5679171a22f43917a975db67b5d299492ff1028b9925bcdbfeed5bb63461c1c9" [label="copy{src=/vault-helper_linux_amd64, dest=/usr/local/bin/vault-helper}" shape="note"];
  "sha256:fd8efd270ff8d5b98c237b0635b9c10e3dd840c7249412207746f759dce5e0a1" [label="sha256:fd8efd270ff8d5b98c237b0635b9c10e3dd840c7249412207746f759dce5e0a1" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:d6774d3c143c9299b2cc014047fd276c503ddfe5ed5f09168c037c520173da38" [label=""];
  "sha256:d6774d3c143c9299b2cc014047fd276c503ddfe5ed5f09168c037c520173da38" -> "sha256:1a16e9e04ae6649cb547dfcb03c5e7b19b47fa5405e7cd68f9e586f6f52b092d" [label=""];
  "sha256:1a16e9e04ae6649cb547dfcb03c5e7b19b47fa5405e7cd68f9e586f6f52b092d" -> "sha256:5679171a22f43917a975db67b5d299492ff1028b9925bcdbfeed5bb63461c1c9" [label=""];
  "sha256:1be72a7707d79015d614d2d598bae2ddac159817a8ee080d7aa6948fe6543868" -> "sha256:5679171a22f43917a975db67b5d299492ff1028b9925bcdbfeed5bb63461c1c9" [label=""];
  "sha256:5679171a22f43917a975db67b5d299492ff1028b9925bcdbfeed5bb63461c1c9" -> "sha256:fd8efd270ff8d5b98c237b0635b9c10e3dd840c7249412207746f759dce5e0a1" [label=""];
}

