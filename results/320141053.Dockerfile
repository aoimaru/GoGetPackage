[app/sources/320141053.Dockerfile]
digraph {
  "sha256:74e3fbc60275cbc0652419d0bafbbb75801b7c8cecfd18ec8dffa817ee07fe47" [label="docker-image://docker.io/library/elixir:1.6.6-alpine" shape="ellipse"];
  "sha256:5eb98f1970583d0c0ce62b71d2de219ab84be819c7ca71153cccb8e16be1e6db" [label="mkdir{path=/opt/app}" shape="note"];
  "sha256:7f316094d5d8eaedefd4519233ad84e80e76797d85616fe102177e970d8a3798" [label="/bin/sh -c apk update     && apk --no-cache --update add nodejs nodejs-npm     && mix local.rebar --force     && mix local.hex --force" shape="box"];
  "sha256:40c1b93c93d33ccdeb0dbd6c0d7ce800c4866fed2253a801c456ec0acde45e8a" [label="local://context" shape="ellipse"];
  "sha256:bf79c4f48514491b4b29caf820e0b7a0a84ce0a6f930cd974b42b43306985d6c" [label="copy{src=/, dest=/opt/app/}" shape="note"];
  "sha256:46e5ef06874f85ff19449e314f1421beb3fe124738085357ae52c58e3a23047c" [label="/bin/sh -c mix do deps.get, deps.compile, compile" shape="box"];
  "sha256:f67d4b52780b48f177571f2df60cbf7724f90da773139c70dc42762ef8e76e54" [label="/bin/sh -c cd ${PHOENIX_SUBDIR}/assets     && npm install     && ./node_modules/brunch/bin/brunch build -p     && cd ..     && mix phx.digest" shape="box"];
  "sha256:642fe4defdf2454dd371dca7d2082f87e742b36df0bb4eab531fc168c7ee80cc" [label="/bin/sh -c mix release --env=prod --verbose     && mv _build/prod/rel/${APP_NAME} /opt/release     && mv /opt/release/bin/${APP_NAME} /opt/release/bin/start_server" shape="box"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:c91cfb263305ac07707d429c1a4fa55f12d7a690121159419c55880ecb577caf" [label="/bin/sh -c apk update && apk --no-cache --update add bash openssl-dev ca-certificates" shape="box"];
  "sha256:e5602717b40e563be5d8416b2c92ef5beae34a4bcb3c9998b5cf8139e779bf6b" [label="/bin/sh -c addgroup -g 1000 appuser &&     adduser -S -u 1000 -G appuser appuser" shape="box"];
  "sha256:70e3e878bfabfae6d05843895358153bcd13fbf6474b68c03bd043af368a7f49" [label="/bin/sh -c mkdir -p /opt/app/var" shape="box"];
  "sha256:ccfc20ded7178d57cc1850ca7f84ccc6c2e243850e74774cde547285aae0586c" [label="/bin/sh -c chown appuser /opt/app/var" shape="box"];
  "sha256:3bee3f9e773a3d4ef37e47b2e3903f450593aaed44601319bff151783902ffa7" [label="mkdir{path=/opt/app}" shape="note"];
  "sha256:2a69b08bd648d251d0f8ecac4cc3369dc5042d0761eb5a2b1d6008e500cb5bb1" [label="copy{src=/opt/release, dest=/opt/app/}" shape="note"];
  "sha256:5d14b51dd1b6c5e90a58ee4d0fd54c38f33a2448c872262edf279bed5fbca927" [label="sha256:5d14b51dd1b6c5e90a58ee4d0fd54c38f33a2448c872262edf279bed5fbca927" shape="plaintext"];
  "sha256:74e3fbc60275cbc0652419d0bafbbb75801b7c8cecfd18ec8dffa817ee07fe47" -> "sha256:5eb98f1970583d0c0ce62b71d2de219ab84be819c7ca71153cccb8e16be1e6db" [label=""];
  "sha256:5eb98f1970583d0c0ce62b71d2de219ab84be819c7ca71153cccb8e16be1e6db" -> "sha256:7f316094d5d8eaedefd4519233ad84e80e76797d85616fe102177e970d8a3798" [label=""];
  "sha256:7f316094d5d8eaedefd4519233ad84e80e76797d85616fe102177e970d8a3798" -> "sha256:bf79c4f48514491b4b29caf820e0b7a0a84ce0a6f930cd974b42b43306985d6c" [label=""];
  "sha256:40c1b93c93d33ccdeb0dbd6c0d7ce800c4866fed2253a801c456ec0acde45e8a" -> "sha256:bf79c4f48514491b4b29caf820e0b7a0a84ce0a6f930cd974b42b43306985d6c" [label=""];
  "sha256:bf79c4f48514491b4b29caf820e0b7a0a84ce0a6f930cd974b42b43306985d6c" -> "sha256:46e5ef06874f85ff19449e314f1421beb3fe124738085357ae52c58e3a23047c" [label=""];
  "sha256:46e5ef06874f85ff19449e314f1421beb3fe124738085357ae52c58e3a23047c" -> "sha256:f67d4b52780b48f177571f2df60cbf7724f90da773139c70dc42762ef8e76e54" [label=""];
  "sha256:f67d4b52780b48f177571f2df60cbf7724f90da773139c70dc42762ef8e76e54" -> "sha256:642fe4defdf2454dd371dca7d2082f87e742b36df0bb4eab531fc168c7ee80cc" [label=""];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:c91cfb263305ac07707d429c1a4fa55f12d7a690121159419c55880ecb577caf" [label=""];
  "sha256:c91cfb263305ac07707d429c1a4fa55f12d7a690121159419c55880ecb577caf" -> "sha256:e5602717b40e563be5d8416b2c92ef5beae34a4bcb3c9998b5cf8139e779bf6b" [label=""];
  "sha256:e5602717b40e563be5d8416b2c92ef5beae34a4bcb3c9998b5cf8139e779bf6b" -> "sha256:70e3e878bfabfae6d05843895358153bcd13fbf6474b68c03bd043af368a7f49" [label=""];
  "sha256:70e3e878bfabfae6d05843895358153bcd13fbf6474b68c03bd043af368a7f49" -> "sha256:ccfc20ded7178d57cc1850ca7f84ccc6c2e243850e74774cde547285aae0586c" [label=""];
  "sha256:ccfc20ded7178d57cc1850ca7f84ccc6c2e243850e74774cde547285aae0586c" -> "sha256:3bee3f9e773a3d4ef37e47b2e3903f450593aaed44601319bff151783902ffa7" [label=""];
  "sha256:3bee3f9e773a3d4ef37e47b2e3903f450593aaed44601319bff151783902ffa7" -> "sha256:2a69b08bd648d251d0f8ecac4cc3369dc5042d0761eb5a2b1d6008e500cb5bb1" [label=""];
  "sha256:642fe4defdf2454dd371dca7d2082f87e742b36df0bb4eab531fc168c7ee80cc" -> "sha256:2a69b08bd648d251d0f8ecac4cc3369dc5042d0761eb5a2b1d6008e500cb5bb1" [label=""];
  "sha256:2a69b08bd648d251d0f8ecac4cc3369dc5042d0761eb5a2b1d6008e500cb5bb1" -> "sha256:5d14b51dd1b6c5e90a58ee4d0fd54c38f33a2448c872262edf279bed5fbca927" [label=""];
}

