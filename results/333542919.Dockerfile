[app/sources/333542919.Dockerfile]
digraph {
  "sha256:5b864188671f80cf7e9df3823d09e6412bb681f471295fd3f129afc14a977320" [label="local://context" shape="ellipse"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:6a93922ba94621e256e78b59572aff4f5ac6b4aeba13fd6c2a703a7b93dbade2" [label="/bin/sh -c apk update     && apk add git     && apk add musl-dev     && apk add gcc     && apk add pcre-dev     && apk add --virtual .build-deps wget tar ca-certificates     && apk add libgcc openssl pcre perl     && wget -O kong.tar.gz \"https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz\"     && echo \"$KONG_SHA256 *kong.tar.gz\" | sha256sum -c -     && tar -xzf kong.tar.gz -C /tmp     && rm -f kong.tar.gz     && cp -R /tmp/usr /     && rm -rf /tmp/usr     && apk del .build-deps     && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:07a9fb2a2cbe1856567c1466aeb2067215f87efeb5f09214a7b77987cdf7e62b" [label="copy{src=/docker-entrypoint.sh, dest=/docker-entrypoint.sh}" shape="note"];
  "sha256:d0c15fb8f3ac4a7af20e81c425c5a663460354767b3b4a2179fe36a9d00f61bf" [label="/bin/sh -c luarocks install busted" shape="box"];
  "sha256:e45fdeb976dae2af60367ea6e51ef528de15e5c8795ff33dcb9b7739783f746d" [label="/bin/sh -c ln -s /usr/local/openresty/bin/resty /usr/local/bin/resty" shape="box"];
  "sha256:3d161d5bf8ac09af2fd0167583522b270ca3b7b3e35279e7980b9f701e10db10" [label="/bin/sh -c mkdir -p /home/kong/bin" shape="box"];
  "sha256:7a9f9c7f5c273660d1dd8f15db3f1cfb7dda7b76e2096e37b883e8c51d94063b" [label="/bin/sh -c mkdir -p /home/kong/spec" shape="box"];
  "sha256:e2fc16ad3db4fe78080c2fdaab4d96da9eb4ca409d67f8bc58429f13726b8a39" [label="copy{src=/busted, dest=/home/kong/bin/busted}" shape="note"];
  "sha256:3cfaa18af810c79d06f9c903b310f62e3360556632f83820e81babd90570d771" [label="/bin/sh -c chmod 755 /home/kong/bin/busted" shape="box"];
  "sha256:876eba24bb56f7920f46fc4a83213653e0d4effdad7d13e423637851d787df60" [label="copy{src=/helpers.lua, dest=/home/kong/spec/helpers.lua}" shape="note"];
  "sha256:2d8e00cb1af5dfcc2522210bdb1a0c7a2564ee8863695b8c20511982dde1c641" [label="copy{src=/kong_tests.conf, dest=/home/kong/spec/kong_tests.conf}" shape="note"];
  "sha256:6eca0019ba6a943db6cb5ea03bdbced6ce81606c0ed410fab35c08fa6e995c81" [label="sha256:6eca0019ba6a943db6cb5ea03bdbced6ce81606c0ed410fab35c08fa6e995c81" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:6a93922ba94621e256e78b59572aff4f5ac6b4aeba13fd6c2a703a7b93dbade2" [label=""];
  "sha256:6a93922ba94621e256e78b59572aff4f5ac6b4aeba13fd6c2a703a7b93dbade2" -> "sha256:07a9fb2a2cbe1856567c1466aeb2067215f87efeb5f09214a7b77987cdf7e62b" [label=""];
  "sha256:5b864188671f80cf7e9df3823d09e6412bb681f471295fd3f129afc14a977320" -> "sha256:07a9fb2a2cbe1856567c1466aeb2067215f87efeb5f09214a7b77987cdf7e62b" [label=""];
  "sha256:07a9fb2a2cbe1856567c1466aeb2067215f87efeb5f09214a7b77987cdf7e62b" -> "sha256:d0c15fb8f3ac4a7af20e81c425c5a663460354767b3b4a2179fe36a9d00f61bf" [label=""];
  "sha256:d0c15fb8f3ac4a7af20e81c425c5a663460354767b3b4a2179fe36a9d00f61bf" -> "sha256:e45fdeb976dae2af60367ea6e51ef528de15e5c8795ff33dcb9b7739783f746d" [label=""];
  "sha256:e45fdeb976dae2af60367ea6e51ef528de15e5c8795ff33dcb9b7739783f746d" -> "sha256:3d161d5bf8ac09af2fd0167583522b270ca3b7b3e35279e7980b9f701e10db10" [label=""];
  "sha256:3d161d5bf8ac09af2fd0167583522b270ca3b7b3e35279e7980b9f701e10db10" -> "sha256:7a9f9c7f5c273660d1dd8f15db3f1cfb7dda7b76e2096e37b883e8c51d94063b" [label=""];
  "sha256:7a9f9c7f5c273660d1dd8f15db3f1cfb7dda7b76e2096e37b883e8c51d94063b" -> "sha256:e2fc16ad3db4fe78080c2fdaab4d96da9eb4ca409d67f8bc58429f13726b8a39" [label=""];
  "sha256:5b864188671f80cf7e9df3823d09e6412bb681f471295fd3f129afc14a977320" -> "sha256:e2fc16ad3db4fe78080c2fdaab4d96da9eb4ca409d67f8bc58429f13726b8a39" [label=""];
  "sha256:e2fc16ad3db4fe78080c2fdaab4d96da9eb4ca409d67f8bc58429f13726b8a39" -> "sha256:3cfaa18af810c79d06f9c903b310f62e3360556632f83820e81babd90570d771" [label=""];
  "sha256:3cfaa18af810c79d06f9c903b310f62e3360556632f83820e81babd90570d771" -> "sha256:876eba24bb56f7920f46fc4a83213653e0d4effdad7d13e423637851d787df60" [label=""];
  "sha256:5b864188671f80cf7e9df3823d09e6412bb681f471295fd3f129afc14a977320" -> "sha256:876eba24bb56f7920f46fc4a83213653e0d4effdad7d13e423637851d787df60" [label=""];
  "sha256:876eba24bb56f7920f46fc4a83213653e0d4effdad7d13e423637851d787df60" -> "sha256:2d8e00cb1af5dfcc2522210bdb1a0c7a2564ee8863695b8c20511982dde1c641" [label=""];
  "sha256:5b864188671f80cf7e9df3823d09e6412bb681f471295fd3f129afc14a977320" -> "sha256:2d8e00cb1af5dfcc2522210bdb1a0c7a2564ee8863695b8c20511982dde1c641" [label=""];
  "sha256:2d8e00cb1af5dfcc2522210bdb1a0c7a2564ee8863695b8c20511982dde1c641" -> "sha256:6eca0019ba6a943db6cb5ea03bdbced6ce81606c0ed410fab35c08fa6e995c81" [label=""];
}

