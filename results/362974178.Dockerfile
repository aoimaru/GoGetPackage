[app/sources/362974178.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:5e38f73ea2bded60fc9f57f94698b4be1b4ed3df454987292af44356d3df6db3" [label="/bin/sh -c apk update && apk add ca-certificates && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:4f79a33518e49be07813885ea77808f52ecb02788824567a737e4da15d9cc389" [label="docker-image://docker.io/library/golang:1.11.5-alpine" shape="ellipse"];
  "sha256:3f9aaf0da6d5f9d5fc2e250e78ffe0782b3531afdf294007111c65acb0881e0d" [label="https://releases.hashicorp.com/consul/1.4.2/consul_1.4.2_linux_amd64.zip" shape="ellipse"];
  "sha256:8313b43501af4f5712f0ecca811c10111aa8f8d85d4da23a7a897cc4e67a7dc4" [label="copy{src=/consul_1.4.2_linux_amd64.zip, dest=/usr/local/bin}" shape="note"];
  "sha256:59d3b5f625e3997a7ba669eb642ce0661e63843faa6c1e1433dc12aa43a870d8" [label="/bin/sh -c cd /usr/local/bin && unzip consul_${consul_version}_linux_amd64.zip" shape="box"];
  "sha256:f6910050f2bddbe6e2edb8ce3465527cb10e7868d06e1723df42f008d6b7fa2b" [label="https://releases.hashicorp.com/vault/1.0.3/vault_1.0.3_linux_amd64.zip" shape="ellipse"];
  "sha256:c9c47d8e6335b02fbab081b6dce3475ba028d2997515b340f951b38299e20b58" [label="copy{src=/vault_1.0.3_linux_amd64.zip, dest=/usr/local/bin}" shape="note"];
  "sha256:928d9ee54c816e0a2ba399263ff914e1074703f317fccbd769ceef0ca3d97097" [label="/bin/sh -c cd /usr/local/bin && unzip vault_${vault_version}_linux_amd64.zip" shape="box"];
  "sha256:61094c7af61c20bcea01a4d90e796055886c188f37f296cba9a4ba5295b08691" [label="mkdir{path=/go/src/github.com/fabiolb/fabio}" shape="note"];
  "sha256:e59d3961c4b8d466004ec51848f8d184c38224aa5ab55b7f6d795c3f2fd4ef99" [label="local://context" shape="ellipse"];
  "sha256:5000a7967d00ccd85953db93622795ff4507fc2891bc0ad52e15c39c3eacab97" [label="copy{src=/, dest=/go/src/github.com/fabiolb/fabio/}" shape="note"];
  "sha256:3afb4982c09778d8b3e244c696ae1525f968edfb8db0c4924517d45bb0871006" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go test -mod=vendor -ldflags \"-s -w\" ./..." shape="box"];
  "sha256:1289af30c51c3c5ed61743973a8b3f217ae3189dbb0d6d16926a241f5fc5cf56" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -mod=vendor -ldflags \"-s -w\"" shape="box"];
  "sha256:235802c9e1d375d60f65473fa629e3f43b37eea71f5ac93f2e441aaaa9ae81b3" [label="copy{src=/go/src/github.com/fabiolb/fabio/fabio, dest=/usr/bin}" shape="note"];
  "sha256:d0398beff4c4c5e9a23c086232ca9bb240b69ee6eab5d5febe748852933e6d6d" [label="copy{src=/fabio.properties, dest=/etc/fabio/fabio.properties}" shape="note"];
  "sha256:c604cdedf58ed14c46e8eb1e7c8e002691e82ceeb22f05d4ff108f3dec6a8c43" [label="sha256:c604cdedf58ed14c46e8eb1e7c8e002691e82ceeb22f05d4ff108f3dec6a8c43" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:5e38f73ea2bded60fc9f57f94698b4be1b4ed3df454987292af44356d3df6db3" [label=""];
  "sha256:4f79a33518e49be07813885ea77808f52ecb02788824567a737e4da15d9cc389" -> "sha256:8313b43501af4f5712f0ecca811c10111aa8f8d85d4da23a7a897cc4e67a7dc4" [label=""];
  "sha256:3f9aaf0da6d5f9d5fc2e250e78ffe0782b3531afdf294007111c65acb0881e0d" -> "sha256:8313b43501af4f5712f0ecca811c10111aa8f8d85d4da23a7a897cc4e67a7dc4" [label=""];
  "sha256:8313b43501af4f5712f0ecca811c10111aa8f8d85d4da23a7a897cc4e67a7dc4" -> "sha256:59d3b5f625e3997a7ba669eb642ce0661e63843faa6c1e1433dc12aa43a870d8" [label=""];
  "sha256:59d3b5f625e3997a7ba669eb642ce0661e63843faa6c1e1433dc12aa43a870d8" -> "sha256:c9c47d8e6335b02fbab081b6dce3475ba028d2997515b340f951b38299e20b58" [label=""];
  "sha256:f6910050f2bddbe6e2edb8ce3465527cb10e7868d06e1723df42f008d6b7fa2b" -> "sha256:c9c47d8e6335b02fbab081b6dce3475ba028d2997515b340f951b38299e20b58" [label=""];
  "sha256:c9c47d8e6335b02fbab081b6dce3475ba028d2997515b340f951b38299e20b58" -> "sha256:928d9ee54c816e0a2ba399263ff914e1074703f317fccbd769ceef0ca3d97097" [label=""];
  "sha256:928d9ee54c816e0a2ba399263ff914e1074703f317fccbd769ceef0ca3d97097" -> "sha256:61094c7af61c20bcea01a4d90e796055886c188f37f296cba9a4ba5295b08691" [label=""];
  "sha256:61094c7af61c20bcea01a4d90e796055886c188f37f296cba9a4ba5295b08691" -> "sha256:5000a7967d00ccd85953db93622795ff4507fc2891bc0ad52e15c39c3eacab97" [label=""];
  "sha256:e59d3961c4b8d466004ec51848f8d184c38224aa5ab55b7f6d795c3f2fd4ef99" -> "sha256:5000a7967d00ccd85953db93622795ff4507fc2891bc0ad52e15c39c3eacab97" [label=""];
  "sha256:5000a7967d00ccd85953db93622795ff4507fc2891bc0ad52e15c39c3eacab97" -> "sha256:3afb4982c09778d8b3e244c696ae1525f968edfb8db0c4924517d45bb0871006" [label=""];
  "sha256:3afb4982c09778d8b3e244c696ae1525f968edfb8db0c4924517d45bb0871006" -> "sha256:1289af30c51c3c5ed61743973a8b3f217ae3189dbb0d6d16926a241f5fc5cf56" [label=""];
  "sha256:5e38f73ea2bded60fc9f57f94698b4be1b4ed3df454987292af44356d3df6db3" -> "sha256:235802c9e1d375d60f65473fa629e3f43b37eea71f5ac93f2e441aaaa9ae81b3" [label=""];
  "sha256:1289af30c51c3c5ed61743973a8b3f217ae3189dbb0d6d16926a241f5fc5cf56" -> "sha256:235802c9e1d375d60f65473fa629e3f43b37eea71f5ac93f2e441aaaa9ae81b3" [label=""];
  "sha256:235802c9e1d375d60f65473fa629e3f43b37eea71f5ac93f2e441aaaa9ae81b3" -> "sha256:d0398beff4c4c5e9a23c086232ca9bb240b69ee6eab5d5febe748852933e6d6d" [label=""];
  "sha256:e59d3961c4b8d466004ec51848f8d184c38224aa5ab55b7f6d795c3f2fd4ef99" -> "sha256:d0398beff4c4c5e9a23c086232ca9bb240b69ee6eab5d5febe748852933e6d6d" [label=""];
  "sha256:d0398beff4c4c5e9a23c086232ca9bb240b69ee6eab5d5febe748852933e6d6d" -> "sha256:c604cdedf58ed14c46e8eb1e7c8e002691e82ceeb22f05d4ff108f3dec6a8c43" [label=""];
}

