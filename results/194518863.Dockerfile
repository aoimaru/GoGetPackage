[app/sources/194518863.Dockerfile]
digraph {
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" [label="docker-image://docker.io/library/alpine:3.5" shape="ellipse"];
  "sha256:d9250a7429b36db3ea1be46bbfb3fa1eb754e6d5a8b1cd7844b398a5f27a62f0" [label="/bin/sh -c apk --update --no-cache add ca-certificates openssl &&   wget -qO /tmp/vault.zip \"https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip\" &&   unzip -d /bin /tmp/vault.zip &&   chmod 755 /bin/vault &&   rm /tmp/vault.zip /var/cache/apk/*" shape="box"];
  "sha256:6134f8fe68702c8db7fef7e8a7f3a8808931a578c608167140af477b9e91e9d6" [label="sha256:6134f8fe68702c8db7fef7e8a7f3a8808931a578c608167140af477b9e91e9d6" shape="plaintext"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" -> "sha256:d9250a7429b36db3ea1be46bbfb3fa1eb754e6d5a8b1cd7844b398a5f27a62f0" [label=""];
  "sha256:d9250a7429b36db3ea1be46bbfb3fa1eb754e6d5a8b1cd7844b398a5f27a62f0" -> "sha256:6134f8fe68702c8db7fef7e8a7f3a8808931a578c608167140af477b9e91e9d6" [label=""];
}

