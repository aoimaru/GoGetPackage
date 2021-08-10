[app/sources/294581138.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:c6ea83d4ae6806ba64bebb2742c6b89aa319cdbf86ed86235c24d07703b92571" [label="/bin/sh -c apk --update upgrade && apk add curl ca-certificates && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:558c2376a5d2767d312db86037d30b2c41fdd51f722bea9a1cdc60df7a5c235a" [label="/bin/sh -c apk add ca-certificates && update-ca-certificates" shape="box"];
  "sha256:034c3f765b966a6b9a2ed9ccc3dc036e1bf50ad3bcdfea5eb90878b118f94f8b" [label="/bin/sh -c mkdir /config /data" shape="box"];
  "sha256:f786b5cbe8dfeea8f43640f13ac364eb946bb864361e8b4ad9ce3af0b1fbfd3f" [label="/bin/sh -c curl -s -o /config/config.toml https://raw.githubusercontent.com/honeytrap/honeytrap-configs/master/server-standalone/config-server-standalone.toml" shape="box"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:24fa7778f2c32d8a2d83696bad0ec280b9b75ccbf17e1e533b06c2244f598e70" [label="local://context" shape="ellipse"];
  "sha256:49fb6bed56eba77cecaad95524c00265b6d4a06d1f6eac9780b4ef3316e29246" [label="copy{src=/, dest=/src/honeytrap}" shape="note"];
  "sha256:c4e0c7e0a2293b40027a1d54a71410dc49c55fa4791c4585cdd862cb03170a0a" [label="mkdir{path=/src/honeytrap}" shape="note"];
  "sha256:c41df8a8c5675070c4293d62ad6a9e831c624ad8a129f892479e729414ecca94" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -tags=\"\" -ldflags=\"$(go run scripts/gen-ldflags.go)\" -o /go/bin/app ." shape="box"];
  "sha256:cd1ed345b1f5dc875d7000de36c5135484309dc9ab3e99d289ae96e2e4b17fdd" [label="copy{src=/go/bin/app, dest=/honeytrap/honeytrap}" shape="note"];
  "sha256:b08d950788e92ab13866bae677667176b00d53cc433f925a3fb36ad823338053" [label="sha256:b08d950788e92ab13866bae677667176b00d53cc433f925a3fb36ad823338053" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:c6ea83d4ae6806ba64bebb2742c6b89aa319cdbf86ed86235c24d07703b92571" [label=""];
  "sha256:c6ea83d4ae6806ba64bebb2742c6b89aa319cdbf86ed86235c24d07703b92571" -> "sha256:558c2376a5d2767d312db86037d30b2c41fdd51f722bea9a1cdc60df7a5c235a" [label=""];
  "sha256:558c2376a5d2767d312db86037d30b2c41fdd51f722bea9a1cdc60df7a5c235a" -> "sha256:034c3f765b966a6b9a2ed9ccc3dc036e1bf50ad3bcdfea5eb90878b118f94f8b" [label=""];
  "sha256:034c3f765b966a6b9a2ed9ccc3dc036e1bf50ad3bcdfea5eb90878b118f94f8b" -> "sha256:f786b5cbe8dfeea8f43640f13ac364eb946bb864361e8b4ad9ce3af0b1fbfd3f" [label=""];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:49fb6bed56eba77cecaad95524c00265b6d4a06d1f6eac9780b4ef3316e29246" [label=""];
  "sha256:24fa7778f2c32d8a2d83696bad0ec280b9b75ccbf17e1e533b06c2244f598e70" -> "sha256:49fb6bed56eba77cecaad95524c00265b6d4a06d1f6eac9780b4ef3316e29246" [label=""];
  "sha256:49fb6bed56eba77cecaad95524c00265b6d4a06d1f6eac9780b4ef3316e29246" -> "sha256:c4e0c7e0a2293b40027a1d54a71410dc49c55fa4791c4585cdd862cb03170a0a" [label=""];
  "sha256:c4e0c7e0a2293b40027a1d54a71410dc49c55fa4791c4585cdd862cb03170a0a" -> "sha256:c41df8a8c5675070c4293d62ad6a9e831c624ad8a129f892479e729414ecca94" [label=""];
  "sha256:f786b5cbe8dfeea8f43640f13ac364eb946bb864361e8b4ad9ce3af0b1fbfd3f" -> "sha256:cd1ed345b1f5dc875d7000de36c5135484309dc9ab3e99d289ae96e2e4b17fdd" [label=""];
  "sha256:c41df8a8c5675070c4293d62ad6a9e831c624ad8a129f892479e729414ecca94" -> "sha256:cd1ed345b1f5dc875d7000de36c5135484309dc9ab3e99d289ae96e2e4b17fdd" [label=""];
  "sha256:cd1ed345b1f5dc875d7000de36c5135484309dc9ab3e99d289ae96e2e4b17fdd" -> "sha256:b08d950788e92ab13866bae677667176b00d53cc433f925a3fb36ad823338053" [label=""];
}

