[app/sources/271524005.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:532cc22c68ba02f6d2ced6969b4b933e81ab1142698fee6d416175db54fe4c38" [label="/bin/sh -c apt-get update && apt-get upgrade -y &&     apt-get install -y -qq --no-install-recommends       ca-certificates       git       wget &&     mkdir -p /opt/bin &&     mkdir -p /opt/src/github.com/google/inverting-proxy" shape="box"];
  "sha256:627804fa1319693fcd61d9e0e1608bf14494a3aa6d44b32755afd0c005b2fbbc" [label="local://context" shape="ellipse"];
  "sha256:a4a4f3d1438fdc8a39b25c735df43e3679ecca276f39e2d6ab683982dcec65a4" [label="copy{src=/, dest=/opt/src/github.com/google/inverting-proxy}" shape="note"];
  "sha256:10f53e4820efc9d0c472969038438a4dcb7a78906068a7ef084bfa727ef5424e" [label="/bin/sh -c wget -O /opt/go1.11.1.linux-amd64.tar.gz       https://storage.googleapis.com/golang/go1.11.1.linux-amd64.tar.gz &&     tar -C /usr/local -xzf /opt/go1.11.1.linux-amd64.tar.gz &&     export PATH=${PATH}:/usr/local/go/bin/:/opt/bin/ &&     export GOPATH=/opt/ &&     go get github.com/golang/groupcache/lru &&     go get golang.org/x/net/context &&     go get golang.org/x/oauth2/google &&     go get google.golang.org/api/compute/v1 &&     go build -o ${GOPATH}/bin/proxy-forwarding-agent /opt/src/github.com/google/inverting-proxy/agent/agent.go &&     rm -rf /opt/go1.4.2.linux-amd64.tar.gz &&     rm -rf /usr/local" shape="box"];
  "sha256:d3d0b116dae10d1ac60931347da19c13cc1f7b260efaa0dd63eb012268917c61" [label="sha256:d3d0b116dae10d1ac60931347da19c13cc1f7b260efaa0dd63eb012268917c61" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:532cc22c68ba02f6d2ced6969b4b933e81ab1142698fee6d416175db54fe4c38" [label=""];
  "sha256:532cc22c68ba02f6d2ced6969b4b933e81ab1142698fee6d416175db54fe4c38" -> "sha256:a4a4f3d1438fdc8a39b25c735df43e3679ecca276f39e2d6ab683982dcec65a4" [label=""];
  "sha256:627804fa1319693fcd61d9e0e1608bf14494a3aa6d44b32755afd0c005b2fbbc" -> "sha256:a4a4f3d1438fdc8a39b25c735df43e3679ecca276f39e2d6ab683982dcec65a4" [label=""];
  "sha256:a4a4f3d1438fdc8a39b25c735df43e3679ecca276f39e2d6ab683982dcec65a4" -> "sha256:10f53e4820efc9d0c472969038438a4dcb7a78906068a7ef084bfa727ef5424e" [label=""];
  "sha256:10f53e4820efc9d0c472969038438a4dcb7a78906068a7ef084bfa727ef5424e" -> "sha256:d3d0b116dae10d1ac60931347da19c13cc1f7b260efaa0dd63eb012268917c61" [label=""];
}

