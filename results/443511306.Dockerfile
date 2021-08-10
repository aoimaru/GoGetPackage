[app/sources/443511306.Dockerfile]
digraph {
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" [label="docker-image://docker.io/library/alpine:3.4" shape="ellipse"];
  "sha256:cce6e908a9c42f24195b0a730fcdc6076f4f1635fb895f85bc55b0579f450bac" [label="/bin/sh -c apk --no-cache add curl ca-certificates     && curl -sSL https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip -o /tmp/consul.zip     && echo \"${CONSUL_SHA256}  /tmp/consul.zip\" > /tmp/consul.sha256     && sha256sum -c /tmp/consul.sha256     && cd /bin     && unzip /tmp/consul.zip     && chmod +x /bin/consul     && rm /tmp/consul.zip" shape="box"];
  "sha256:b5e6e58681f2402d36ee55f8a144c8a4ca6bb755cc10a838bc94e42b63c10d0a" [label="sha256:b5e6e58681f2402d36ee55f8a144c8a4ca6bb755cc10a838bc94e42b63c10d0a" shape="plaintext"];
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" -> "sha256:cce6e908a9c42f24195b0a730fcdc6076f4f1635fb895f85bc55b0579f450bac" [label=""];
  "sha256:cce6e908a9c42f24195b0a730fcdc6076f4f1635fb895f85bc55b0579f450bac" -> "sha256:b5e6e58681f2402d36ee55f8a144c8a4ca6bb755cc10a838bc94e42b63c10d0a" [label=""];
}

