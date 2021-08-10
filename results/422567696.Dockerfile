[app/sources/422567696.Dockerfile]
digraph {
  "sha256:4f214a40d6b353ce33744ae039cc69bc659813319fdc0ad85ca99fda5e908fc5" [label="docker-image://docker.io/saferwall/avast:0.0.1" shape="ellipse"];
  "sha256:a33743bd60afb72bc0b2724a54b93f50cf040126c7d0675bcfaf07cc1cbdfc15" [label="/bin/sh -c /var/lib/avast/Setup/avast.vpsupdate" shape="box"];
  "sha256:fc8f7a5a931404bb996ee93e11e03292efdfdf9a150192d59616c38f4796d934" [label="docker-image://docker.io/library/golang:1.12-alpine" shape="ellipse"];
  "sha256:89c00472e63ea88b53619874108967ba6eacfdcd6dc2c439f72beb6a1b5604bd" [label="/bin/sh -c apk update && apk add --no-cache git ca-certificates tzdata && update-ca-certificates" shape="box"];
  "sha256:05206b465d3e24ef137a0740509ffcbea8e4c8c99e24bdcc72f3666d4638e7d0" [label="mkdir{path=/src/saferwall/avast}" shape="note"];
  "sha256:73723c6c7c785c624a29406594b46042a1f8b87a940c91c36410fa6c95f21325" [label="local://context" shape="ellipse"];
  "sha256:7c780227047f73d15c1b96a1ff7d83ecdc93ddf451c3e85c0f30627f71525f8b" [label="copy{src=/, dest=/src/saferwall/avast/}" shape="note"];
  "sha256:463a48fe1c3230ab574d3ed92f5dcda35f3b6a6d23beafd365fcf9a5feaf50d3" [label="/bin/sh -c go get -d -v" shape="box"];
  "sha256:0cdf62165a7acfa53610ffbbd38333ddfdb04c9593fef54e41a5306071bf0d1c" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -installsuffix cgo -ldflags '-extldflags \"-static\"' -o /go/bin/avastscanner ." shape="box"];
  "sha256:131c21c8812ce1ef5ab116bb8916ae1b2cca604050cc5089f9f6aaffc050a03a" [label="copy{src=/go/bin/avastscanner, dest=/bin/avastscanner}" shape="note"];
  "sha256:c297688106dd199d56a32611d1517be0766bbdf6da0e1e50d1ba01d8c44f5707" [label="/bin/sh -c groupadd -r saferwall && useradd --no-log-init -r -g saferwall saferwall" shape="box"];
  "sha256:d9ab80aec3da312748b0c14ac6e9df5ce44b00201d8d7d60d182dea3f3c70455" [label="/bin/sh -c usermod -u 101 saferwall" shape="box"];
  "sha256:1ddb843aae76323e2c654f62a918b1a9575d274058399d991457c559baac13a9" [label="/bin/sh -c groupmod -g 102 saferwall" shape="box"];
  "sha256:497e6ea825efe0157bd4db3955f2a7cc6ebd41a54bf8cc2a440b144d68a71de7" [label="sha256:497e6ea825efe0157bd4db3955f2a7cc6ebd41a54bf8cc2a440b144d68a71de7" shape="plaintext"];
  "sha256:4f214a40d6b353ce33744ae039cc69bc659813319fdc0ad85ca99fda5e908fc5" -> "sha256:a33743bd60afb72bc0b2724a54b93f50cf040126c7d0675bcfaf07cc1cbdfc15" [label=""];
  "sha256:fc8f7a5a931404bb996ee93e11e03292efdfdf9a150192d59616c38f4796d934" -> "sha256:89c00472e63ea88b53619874108967ba6eacfdcd6dc2c439f72beb6a1b5604bd" [label=""];
  "sha256:89c00472e63ea88b53619874108967ba6eacfdcd6dc2c439f72beb6a1b5604bd" -> "sha256:05206b465d3e24ef137a0740509ffcbea8e4c8c99e24bdcc72f3666d4638e7d0" [label=""];
  "sha256:05206b465d3e24ef137a0740509ffcbea8e4c8c99e24bdcc72f3666d4638e7d0" -> "sha256:7c780227047f73d15c1b96a1ff7d83ecdc93ddf451c3e85c0f30627f71525f8b" [label=""];
  "sha256:73723c6c7c785c624a29406594b46042a1f8b87a940c91c36410fa6c95f21325" -> "sha256:7c780227047f73d15c1b96a1ff7d83ecdc93ddf451c3e85c0f30627f71525f8b" [label=""];
  "sha256:7c780227047f73d15c1b96a1ff7d83ecdc93ddf451c3e85c0f30627f71525f8b" -> "sha256:463a48fe1c3230ab574d3ed92f5dcda35f3b6a6d23beafd365fcf9a5feaf50d3" [label=""];
  "sha256:463a48fe1c3230ab574d3ed92f5dcda35f3b6a6d23beafd365fcf9a5feaf50d3" -> "sha256:0cdf62165a7acfa53610ffbbd38333ddfdb04c9593fef54e41a5306071bf0d1c" [label=""];
  "sha256:a33743bd60afb72bc0b2724a54b93f50cf040126c7d0675bcfaf07cc1cbdfc15" -> "sha256:131c21c8812ce1ef5ab116bb8916ae1b2cca604050cc5089f9f6aaffc050a03a" [label=""];
  "sha256:0cdf62165a7acfa53610ffbbd38333ddfdb04c9593fef54e41a5306071bf0d1c" -> "sha256:131c21c8812ce1ef5ab116bb8916ae1b2cca604050cc5089f9f6aaffc050a03a" [label=""];
  "sha256:131c21c8812ce1ef5ab116bb8916ae1b2cca604050cc5089f9f6aaffc050a03a" -> "sha256:c297688106dd199d56a32611d1517be0766bbdf6da0e1e50d1ba01d8c44f5707" [label=""];
  "sha256:c297688106dd199d56a32611d1517be0766bbdf6da0e1e50d1ba01d8c44f5707" -> "sha256:d9ab80aec3da312748b0c14ac6e9df5ce44b00201d8d7d60d182dea3f3c70455" [label=""];
  "sha256:d9ab80aec3da312748b0c14ac6e9df5ce44b00201d8d7d60d182dea3f3c70455" -> "sha256:1ddb843aae76323e2c654f62a918b1a9575d274058399d991457c559baac13a9" [label=""];
  "sha256:1ddb843aae76323e2c654f62a918b1a9575d274058399d991457c559baac13a9" -> "sha256:497e6ea825efe0157bd4db3955f2a7cc6ebd41a54bf8cc2a440b144d68a71de7" [label=""];
}

