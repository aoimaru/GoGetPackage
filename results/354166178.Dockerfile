[app/sources/354166178.Dockerfile]
digraph {
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" [label="docker-image://docker.io/library/alpine:3.3" shape="ellipse"];
  "sha256:bd6fe4ac0930123069d14af780771a3f2266c91664d4ba90614f077d35e41fe9" [label="/bin/sh -c apk add --update bash ca-certificates &&   rm -rf /var/cache/apk/* &&   wget -q -O /usr/local/bin/giddyup https://github.com/cloudnautique/giddyup/releases/download/v0.11.0/giddyup &&   chmod +x /usr/local/bin/giddyup" shape="box"];
  "sha256:9a19b108988b4eb88ef31b95b0c833a29b179e158ddb5ec359bfcf34b1e41379" [label="/bin/sh -c wget -q -O - https://github.com/coreos/etcd/releases/download/v2.3.6/etcd-v2.3.6-linux-amd64.tar.gz | tar xzf - -C /tmp &&   mv /tmp/etcd-*/etcd /usr/local/bin/etcd &&   mv /tmp/etcd-*/etcdctl /usr/local/bin/etcdctl &&   rm -rf /tmp/etcd-* && rm -f /etcd-*.tar.gz" shape="box"];
  "sha256:220256c4f28387822fa9f155ae932912e1a3faa6b1b0b648557f3b442076c76b" [label="local://context" shape="ellipse"];
  "sha256:cc4548c3695d54385bdde853a07dde7fea00e02b749f808f014c95f1cf6510ca" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:b4cc96e709001fcb36b685abcf8e429b4ea909a4614c5512709a99d40e336dc1" [label="sha256:b4cc96e709001fcb36b685abcf8e429b4ea909a4614c5512709a99d40e336dc1" shape="plaintext"];
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" -> "sha256:bd6fe4ac0930123069d14af780771a3f2266c91664d4ba90614f077d35e41fe9" [label=""];
  "sha256:bd6fe4ac0930123069d14af780771a3f2266c91664d4ba90614f077d35e41fe9" -> "sha256:9a19b108988b4eb88ef31b95b0c833a29b179e158ddb5ec359bfcf34b1e41379" [label=""];
  "sha256:9a19b108988b4eb88ef31b95b0c833a29b179e158ddb5ec359bfcf34b1e41379" -> "sha256:cc4548c3695d54385bdde853a07dde7fea00e02b749f808f014c95f1cf6510ca" [label=""];
  "sha256:220256c4f28387822fa9f155ae932912e1a3faa6b1b0b648557f3b442076c76b" -> "sha256:cc4548c3695d54385bdde853a07dde7fea00e02b749f808f014c95f1cf6510ca" [label=""];
  "sha256:cc4548c3695d54385bdde853a07dde7fea00e02b749f808f014c95f1cf6510ca" -> "sha256:b4cc96e709001fcb36b685abcf8e429b4ea909a4614c5512709a99d40e336dc1" [label=""];
}

