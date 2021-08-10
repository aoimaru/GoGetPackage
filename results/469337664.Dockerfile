[app/sources/469337664.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:5ebb554988129d60f6f78bfc43d4c5b146d4beb3daaa459f7bbea0e7159ac6b3" [label="/bin/sh -c apk add --update ca-certificates  && apk add --update -t deps wget  && wget https://storage.googleapis.com/kubernetes-helm/helm-${HELM_LATEST_VERSION}-linux-amd64.tar.gz  && tar -xvf helm-${HELM_LATEST_VERSION}-linux-amd64.tar.gz  && mv linux-amd64/helm /usr/local/bin  && apk del --purge deps  && rm /var/cache/apk/*  && rm -f /helm-${HELM_LATEST_VERSION}-linux-amd64.tar.gz  && apk update &&   apk add bash py3-pip &&   apk add --virtual=build gcc libffi-dev musl-dev openssl-dev python3-dev make &&   pip3 install --upgrade pip &&   pip3 install --upgrade requests &&   pip3 install azure-cli &&   ln -s /usr/bin/python3 /usr/bin/python" shape="box"];
  "sha256:a875d364983932d6d32004f48504afbe0731104061a086d7966fd9d8025cb261" [label="local://context" shape="ellipse"];
  "sha256:10a76b4fed2c2dd2411d74f39125f2c5cd7d582229184b11e4f006433e958be8" [label="copy{src=/app/run, dest=/cnab/app/run}" shape="note"];
  "sha256:ac33f47494c51bbf202b040a965abfb0092f03dd14504eea0a5aa259088794a3" [label="copy{src=/app/rbac-config.yaml, dest=/cnab/app/rbac-config.yaml}" shape="note"];
  "sha256:b49a16e1ac0b8af0b5caaccf433d0e1149244f2c680d056aaf3c47e072bed607" [label="copy{src=/Dockerfile, dest=/cnab/Dockerfile}" shape="note"];
  "sha256:c43c0089642fdd26654ad3ca993fc24127cdf653eaaccde2267593b93fc5a71f" [label="sha256:c43c0089642fdd26654ad3ca993fc24127cdf653eaaccde2267593b93fc5a71f" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:5ebb554988129d60f6f78bfc43d4c5b146d4beb3daaa459f7bbea0e7159ac6b3" [label=""];
  "sha256:5ebb554988129d60f6f78bfc43d4c5b146d4beb3daaa459f7bbea0e7159ac6b3" -> "sha256:10a76b4fed2c2dd2411d74f39125f2c5cd7d582229184b11e4f006433e958be8" [label=""];
  "sha256:a875d364983932d6d32004f48504afbe0731104061a086d7966fd9d8025cb261" -> "sha256:10a76b4fed2c2dd2411d74f39125f2c5cd7d582229184b11e4f006433e958be8" [label=""];
  "sha256:10a76b4fed2c2dd2411d74f39125f2c5cd7d582229184b11e4f006433e958be8" -> "sha256:ac33f47494c51bbf202b040a965abfb0092f03dd14504eea0a5aa259088794a3" [label=""];
  "sha256:a875d364983932d6d32004f48504afbe0731104061a086d7966fd9d8025cb261" -> "sha256:ac33f47494c51bbf202b040a965abfb0092f03dd14504eea0a5aa259088794a3" [label=""];
  "sha256:ac33f47494c51bbf202b040a965abfb0092f03dd14504eea0a5aa259088794a3" -> "sha256:b49a16e1ac0b8af0b5caaccf433d0e1149244f2c680d056aaf3c47e072bed607" [label=""];
  "sha256:a875d364983932d6d32004f48504afbe0731104061a086d7966fd9d8025cb261" -> "sha256:b49a16e1ac0b8af0b5caaccf433d0e1149244f2c680d056aaf3c47e072bed607" [label=""];
  "sha256:b49a16e1ac0b8af0b5caaccf433d0e1149244f2c680d056aaf3c47e072bed607" -> "sha256:c43c0089642fdd26654ad3ca993fc24127cdf653eaaccde2267593b93fc5a71f" [label=""];
}

