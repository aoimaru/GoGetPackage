[app/sources/466589546.Dockerfile]
digraph {
  "sha256:a70c346430275aaca7d3795e2f4a8a4b840034062bdc4502363c1c7862fe7f10" [label="docker-image://docker.io/library/debian:9-slim" shape="ellipse"];
  "sha256:7695b82675ec6a28aaa735cb0eefaff3a58ef9868023f463da15b6cac2dd8270" [label="/bin/sh -c mkdir -p /etc/vault /var/lib/vault" shape="box"];
  "sha256:3852c37927c3999e4ad2bbd66ca7765861fb4fa366f1ea1b497d401dc721e656" [label="local://context" shape="ellipse"];
  "sha256:d03756ae48e113544eb12b0215032b494a5969dc624771fcb446a744553b1c59" [label="copy{src=/config.hcl, dest=/etc/vault/config.hcl}" shape="note"];
  "sha256:596bc9339090623c90ae81c9e07231400aba5d0710db42c7228af94081629176" [label="/bin/sh -c set -ex && apt-get update -qq     && apt-get install -y --no-install-recommends unzip wget openssl ca-certificates     && wget -q \"https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip\"     && unzip \"vault_${VAULT_VERSION}_linux_amd64.zip\"     && cp vault /usr/local/bin/vault     && mkdir -p /etc/vault/ssl     && openssl req -x509 -newkey rsa:2048 -nodes -keyout /etc/vault/ssl/server.key -out /etc/vault/ssl/server.crt -days 365 -subj '/CN=Vault Server/'" shape="box"];
  "sha256:4203eaf662f55ed42e51be78d8ff9b7cff661b890a1ba6cd8ff2ada59391ed5e" [label="copy{src=/usr/local/bin/vault, dest=/usr/local/bin/vault}" shape="note"];
  "sha256:83b803a9a2767293d0f2d4b2a5c4ca2397a4e7ac864cdd6f1b46f9270f502c17" [label="copy{src=/etc/vault/ssl/server.key, dest=/etc/vault/ssl/server.key}" shape="note"];
  "sha256:139c7f15e855f2ddca5703730f7ce672fc26d0c601b2008b462c9872dacb13fc" [label="copy{src=/etc/vault/ssl/server.crt, dest=/etc/vault/ssl/server.crt}" shape="note"];
  "sha256:063d00be6c875c6373dc1183b68021e812d34126e24f95eebc2c4b3bb94ed768" [label="/bin/sh -c chown -R 10001:root /etc/vault /var/lib/vault" shape="box"];
  "sha256:95f69f69148803f5c8c3fd3cb1062b541acb3944faa6ecf806ca7bc2656273f2" [label="mkdir{path=/var/lib/vault}" shape="note"];
  "sha256:986872b052e805f5da0a516f9e15494d584b4b621a197b68b554c19b7ed4c353" [label="sha256:986872b052e805f5da0a516f9e15494d584b4b621a197b68b554c19b7ed4c353" shape="plaintext"];
  "sha256:a70c346430275aaca7d3795e2f4a8a4b840034062bdc4502363c1c7862fe7f10" -> "sha256:7695b82675ec6a28aaa735cb0eefaff3a58ef9868023f463da15b6cac2dd8270" [label=""];
  "sha256:7695b82675ec6a28aaa735cb0eefaff3a58ef9868023f463da15b6cac2dd8270" -> "sha256:d03756ae48e113544eb12b0215032b494a5969dc624771fcb446a744553b1c59" [label=""];
  "sha256:3852c37927c3999e4ad2bbd66ca7765861fb4fa366f1ea1b497d401dc721e656" -> "sha256:d03756ae48e113544eb12b0215032b494a5969dc624771fcb446a744553b1c59" [label=""];
  "sha256:a70c346430275aaca7d3795e2f4a8a4b840034062bdc4502363c1c7862fe7f10" -> "sha256:596bc9339090623c90ae81c9e07231400aba5d0710db42c7228af94081629176" [label=""];
  "sha256:d03756ae48e113544eb12b0215032b494a5969dc624771fcb446a744553b1c59" -> "sha256:4203eaf662f55ed42e51be78d8ff9b7cff661b890a1ba6cd8ff2ada59391ed5e" [label=""];
  "sha256:596bc9339090623c90ae81c9e07231400aba5d0710db42c7228af94081629176" -> "sha256:4203eaf662f55ed42e51be78d8ff9b7cff661b890a1ba6cd8ff2ada59391ed5e" [label=""];
  "sha256:4203eaf662f55ed42e51be78d8ff9b7cff661b890a1ba6cd8ff2ada59391ed5e" -> "sha256:83b803a9a2767293d0f2d4b2a5c4ca2397a4e7ac864cdd6f1b46f9270f502c17" [label=""];
  "sha256:596bc9339090623c90ae81c9e07231400aba5d0710db42c7228af94081629176" -> "sha256:83b803a9a2767293d0f2d4b2a5c4ca2397a4e7ac864cdd6f1b46f9270f502c17" [label=""];
  "sha256:83b803a9a2767293d0f2d4b2a5c4ca2397a4e7ac864cdd6f1b46f9270f502c17" -> "sha256:139c7f15e855f2ddca5703730f7ce672fc26d0c601b2008b462c9872dacb13fc" [label=""];
  "sha256:596bc9339090623c90ae81c9e07231400aba5d0710db42c7228af94081629176" -> "sha256:139c7f15e855f2ddca5703730f7ce672fc26d0c601b2008b462c9872dacb13fc" [label=""];
  "sha256:139c7f15e855f2ddca5703730f7ce672fc26d0c601b2008b462c9872dacb13fc" -> "sha256:063d00be6c875c6373dc1183b68021e812d34126e24f95eebc2c4b3bb94ed768" [label=""];
  "sha256:063d00be6c875c6373dc1183b68021e812d34126e24f95eebc2c4b3bb94ed768" -> "sha256:95f69f69148803f5c8c3fd3cb1062b541acb3944faa6ecf806ca7bc2656273f2" [label=""];
  "sha256:95f69f69148803f5c8c3fd3cb1062b541acb3944faa6ecf806ca7bc2656273f2" -> "sha256:986872b052e805f5da0a516f9e15494d584b4b621a197b68b554c19b7ed4c353" [label=""];
}

