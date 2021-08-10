[app/sources/196415357.Dockerfile]
digraph {
  "sha256:4a8744ac029000ddbe0c3f231e2ef9155d37f9394e38a0aafecd3185c09e6da1" [label="local://context" shape="ellipse"];
  "sha256:c7ad96ff8a4f66f248b01ccf68465e54cb4fe8eb107a85f149a405440377a8bb" [label="docker-image://docker.io/arm32v6/alpine:3.6" shape="ellipse"];
  "sha256:9edf57b725cdf52a3bb4c1f97c0ba98c0c5e387af8ee4662c8b005d1f00552ca" [label="/bin/sh -c apk add --no-cache ca-certificates" shape="box"];
  "sha256:12bbf67c94a687b6b93a0cee3769849fbfad51084096418399b7a9fbea8ee7fc" [label="copy{src=/*.patch, dest=/go-alpine-patches/}" shape="note"];
  "sha256:32fc49e6b22d3337cd6325a4d59815ebda8c49d1b5b5e0a0911a3500537b25e4" [label="/bin/sh -c set -eux; \tapk add --no-cache --virtual .build-deps \t\tbash \t\tgcc \t\tmusl-dev \t\topenssl \t\tgo \t; \texport \t\tGOROOT_BOOTSTRAP=\"$(go env GOROOT)\" \t\tGOOS=\"$(go env GOOS)\" \t\tGOARCH=\"$(go env GOARCH)\" \t\tGO386=\"$(go env GO386)\" \t\tGOARM=\"$(go env GOARM)\" \t\tGOHOSTOS=\"$(go env GOHOSTOS)\" \t\tGOHOSTARCH=\"$(go env GOHOSTARCH)\" \t; \t\twget -O go.tgz \"https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz\"; \techo 'abf1b2e5ae2a4845f3d2eac00c7382ff209e2c132dc35b7ce753da9b4f52e59f *go.tgz' | sha256sum -c -; \ttar -C /usr/local -xzf go.tgz; \trm go.tgz; \t\tcd /usr/local/go/src; \tfor p in /go-alpine-patches/*.patch; do \t\t[ -f \"$p\" ] || continue; \t\tpatch -p2 -i \"$p\"; \tdone; \t./make.bash; \t\trm -rf /go-alpine-patches; \tapk del .build-deps; \t\texport PATH=\"/usr/local/go/bin:$PATH\"; \tgo version" shape="box"];
  "sha256:1e6484afff9ddf39363e30270bf12c9613539bfdec052856fc9a2be746d5328d" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:826f86c32d6fe22ab15088ab4ed8fd49d5da04b8051e6ddf3f69cfe569e9c9ac" [label="mkdir{path=/go}" shape="note"];
  "sha256:19eb161135fbc558893292202c7de1e5b1fdca808e511ae342cb51d90cc7bef0" [label="copy{src=/go-wrapper, dest=/usr/local/bin/}" shape="note"];
  "sha256:0a6027a5286b7961fdcf0397a59d2a640dd9380c397169dbd63d9442d5b576c0" [label="sha256:0a6027a5286b7961fdcf0397a59d2a640dd9380c397169dbd63d9442d5b576c0" shape="plaintext"];
  "sha256:c7ad96ff8a4f66f248b01ccf68465e54cb4fe8eb107a85f149a405440377a8bb" -> "sha256:9edf57b725cdf52a3bb4c1f97c0ba98c0c5e387af8ee4662c8b005d1f00552ca" [label=""];
  "sha256:9edf57b725cdf52a3bb4c1f97c0ba98c0c5e387af8ee4662c8b005d1f00552ca" -> "sha256:12bbf67c94a687b6b93a0cee3769849fbfad51084096418399b7a9fbea8ee7fc" [label=""];
  "sha256:4a8744ac029000ddbe0c3f231e2ef9155d37f9394e38a0aafecd3185c09e6da1" -> "sha256:12bbf67c94a687b6b93a0cee3769849fbfad51084096418399b7a9fbea8ee7fc" [label=""];
  "sha256:12bbf67c94a687b6b93a0cee3769849fbfad51084096418399b7a9fbea8ee7fc" -> "sha256:32fc49e6b22d3337cd6325a4d59815ebda8c49d1b5b5e0a0911a3500537b25e4" [label=""];
  "sha256:32fc49e6b22d3337cd6325a4d59815ebda8c49d1b5b5e0a0911a3500537b25e4" -> "sha256:1e6484afff9ddf39363e30270bf12c9613539bfdec052856fc9a2be746d5328d" [label=""];
  "sha256:1e6484afff9ddf39363e30270bf12c9613539bfdec052856fc9a2be746d5328d" -> "sha256:826f86c32d6fe22ab15088ab4ed8fd49d5da04b8051e6ddf3f69cfe569e9c9ac" [label=""];
  "sha256:826f86c32d6fe22ab15088ab4ed8fd49d5da04b8051e6ddf3f69cfe569e9c9ac" -> "sha256:19eb161135fbc558893292202c7de1e5b1fdca808e511ae342cb51d90cc7bef0" [label=""];
  "sha256:4a8744ac029000ddbe0c3f231e2ef9155d37f9394e38a0aafecd3185c09e6da1" -> "sha256:19eb161135fbc558893292202c7de1e5b1fdca808e511ae342cb51d90cc7bef0" [label=""];
  "sha256:19eb161135fbc558893292202c7de1e5b1fdca808e511ae342cb51d90cc7bef0" -> "sha256:0a6027a5286b7961fdcf0397a59d2a640dd9380c397169dbd63d9442d5b576c0" [label=""];
}

