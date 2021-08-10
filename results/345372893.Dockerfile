[app/sources/345372893.Dockerfile]
digraph {
  "sha256:d5c08c75cbf87726985cf9803ddfa87d3343f6f0028ce763d3eb15aaa98898b2" [label="docker-image://docker.io/balenalib/intel-edison-debian:stretch-build" shape="ellipse"];
  "sha256:212b725135d813f71e23608a9b312218c61eed0e34eeed04fe6b72ab805e0ec1" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-386.tar.gz\" \t&& echo \"10202da0b7f2a0f2c2ec4dd65375584dd829ce88ccc58e5fe1fa1352e69fecaf  go$GO_VERSION.linux-386.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-386.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-386.tar.gz" shape="box"];
  "sha256:339bc2d0df9a030fe37c97bad9443988536fefb063b8365b121a92f74adef201" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:bc3aed63b4bf468c78a69de68c49bc49a3b964e35345d6bbaf8c3199ed718444" [label="mkdir{path=/go}" shape="note"];
  "sha256:2271dc77191f04611a028fc92ba8804980be866e5a70fb7499407617d28e40fe" [label="sha256:2271dc77191f04611a028fc92ba8804980be866e5a70fb7499407617d28e40fe" shape="plaintext"];
  "sha256:d5c08c75cbf87726985cf9803ddfa87d3343f6f0028ce763d3eb15aaa98898b2" -> "sha256:212b725135d813f71e23608a9b312218c61eed0e34eeed04fe6b72ab805e0ec1" [label=""];
  "sha256:212b725135d813f71e23608a9b312218c61eed0e34eeed04fe6b72ab805e0ec1" -> "sha256:339bc2d0df9a030fe37c97bad9443988536fefb063b8365b121a92f74adef201" [label=""];
  "sha256:339bc2d0df9a030fe37c97bad9443988536fefb063b8365b121a92f74adef201" -> "sha256:bc3aed63b4bf468c78a69de68c49bc49a3b964e35345d6bbaf8c3199ed718444" [label=""];
  "sha256:bc3aed63b4bf468c78a69de68c49bc49a3b964e35345d6bbaf8c3199ed718444" -> "sha256:2271dc77191f04611a028fc92ba8804980be866e5a70fb7499407617d28e40fe" [label=""];
}

