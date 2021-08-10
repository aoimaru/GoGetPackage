[app/sources/345375652.Dockerfile]
digraph {
  "sha256:a9c05415e3b53343ca706256a3743e1b41dd3d384e0f109ae04c133738921217" [label="docker-image://docker.io/balenalib/orange-pi-one-alpine:3.6-run" shape="ellipse"];
  "sha256:9f6747087be5ad91da8f816eb81cec4734a2b529dc116df24ad44802f5e17557" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:55f7d4c228a19b3e5de8414205d1fd1a0fe5071cc32772b4049a3f091f783243" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:e65fa748ee6a3af689403d41d37741e7e9ae555cdd235091d430e5a2caad4f20" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"92e208c8828ea41fb61e881b49fe883fba12f3730ec72a49b64be0ae74bb486d  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:21b0e0a9e423f4934242368232e623a10dbc79384168e3d325fa6a5dd9a7fbc9" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:a94f6f2bffaf88315fd31d526b4458ec1f8d384585fe71230b6c8a7d79492661" [label="mkdir{path=/go}" shape="note"];
  "sha256:60753fae11411913097fb7d6e0ddb97abff648ad74f57a8b0923cfe006d3f326" [label="sha256:60753fae11411913097fb7d6e0ddb97abff648ad74f57a8b0923cfe006d3f326" shape="plaintext"];
  "sha256:a9c05415e3b53343ca706256a3743e1b41dd3d384e0f109ae04c133738921217" -> "sha256:9f6747087be5ad91da8f816eb81cec4734a2b529dc116df24ad44802f5e17557" [label=""];
  "sha256:9f6747087be5ad91da8f816eb81cec4734a2b529dc116df24ad44802f5e17557" -> "sha256:55f7d4c228a19b3e5de8414205d1fd1a0fe5071cc32772b4049a3f091f783243" [label=""];
  "sha256:55f7d4c228a19b3e5de8414205d1fd1a0fe5071cc32772b4049a3f091f783243" -> "sha256:e65fa748ee6a3af689403d41d37741e7e9ae555cdd235091d430e5a2caad4f20" [label=""];
  "sha256:e65fa748ee6a3af689403d41d37741e7e9ae555cdd235091d430e5a2caad4f20" -> "sha256:21b0e0a9e423f4934242368232e623a10dbc79384168e3d325fa6a5dd9a7fbc9" [label=""];
  "sha256:21b0e0a9e423f4934242368232e623a10dbc79384168e3d325fa6a5dd9a7fbc9" -> "sha256:a94f6f2bffaf88315fd31d526b4458ec1f8d384585fe71230b6c8a7d79492661" [label=""];
  "sha256:a94f6f2bffaf88315fd31d526b4458ec1f8d384585fe71230b6c8a7d79492661" -> "sha256:60753fae11411913097fb7d6e0ddb97abff648ad74f57a8b0923cfe006d3f326" [label=""];
}

