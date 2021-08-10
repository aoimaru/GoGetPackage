[app/sources/377323406.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:2eac2eca7aff05fb9a8d63fec0e525beecc8ebbeda4d5144a24918db24506f7c" [label="/bin/sh -c apk --no-cache add bash openssl" shape="box"];
  "sha256:b8028b42619f671d3fb385fc6cd0b1af8bd5838dbec24424a30687d400fb7955" [label="docker-image://docker.io/library/elixir:1.5.2-alpine" shape="ellipse"];
  "sha256:b1379037d899f2d3e8e928506cc615d9b570630b092b80aa6bf751b4a9f7afb9" [label="/bin/sh -c apk --no-cache add git erlang-xmerl erlang-crypto erlang-sasl" shape="box"];
  "sha256:38dc9097075d981658adef2e940712bb39f87c4c0f80ac46b77e0770887a6530" [label="local://context" shape="ellipse"];
  "sha256:ae2d1d6c4cf3dfc874d6320a05ddec3a36b734c12fc6f21ead76f4cf8ae377cf" [label="copy{src=/, dest=/source}" shape="note"];
  "sha256:80b2a82156f4dde6d7df391e074b14c5754192b76f237b23a66a28b0f915f85d" [label="mkdir{path=/source}" shape="note"];
  "sha256:a7d60e171ae9611b07965bf05421624a7cb5075bcb1ae63f52be68878f04dc72" [label="/bin/sh -c mix do       local.hex --force,       local.rebar --force,       deps.get,       compile" shape="box"];
  "sha256:e11707407a2f0bc8ba7d31f357e80d0156baa2cc1915e38a8e73d7159a7f31af" [label="/bin/sh -c echo \"\" > config/poxa.prod.conf" shape="box"];
  "sha256:481a564d72e9d1bcf79be8f1465becc6847d6d33ac643ef37e434f31e9f779ca" [label="/bin/sh -c mix release" shape="box"];
  "sha256:66011f5e000264c649bc0cebc20dfe0c54c559a6dbaf4b9c13e0b2102bbfcdc8" [label="/bin/sh -c mkdir -p /app/$APP_NAME" shape="box"];
  "sha256:f5054a4d7672607bfa3b151476c1ddb9c1f53ea99b172af58e58489bccf474ce" [label="mkdir{path=/app/poxa}" shape="note"];
  "sha256:4f7c210c7f5ee961a5059fab0ef4959fe79a0d525483bd4b2f46fda8b5f4065a" [label="/bin/sh -c tar xzf /source/_build/prod/rel/$APP_NAME/releases/*/$APP_NAME.tar.gz" shape="box"];
  "sha256:bbb76e323e0e31a50e51a0ecd4c994e2f9ab909b5ee0f21a841def64f283616d" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:010bfc7ec1ac5c7c871843d57a7887667bc48023af5c5dc1b12ac15237b6eacd" [label="sha256:010bfc7ec1ac5c7c871843d57a7887667bc48023af5c5dc1b12ac15237b6eacd" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:2eac2eca7aff05fb9a8d63fec0e525beecc8ebbeda4d5144a24918db24506f7c" [label=""];
  "sha256:b8028b42619f671d3fb385fc6cd0b1af8bd5838dbec24424a30687d400fb7955" -> "sha256:b1379037d899f2d3e8e928506cc615d9b570630b092b80aa6bf751b4a9f7afb9" [label=""];
  "sha256:b1379037d899f2d3e8e928506cc615d9b570630b092b80aa6bf751b4a9f7afb9" -> "sha256:ae2d1d6c4cf3dfc874d6320a05ddec3a36b734c12fc6f21ead76f4cf8ae377cf" [label=""];
  "sha256:38dc9097075d981658adef2e940712bb39f87c4c0f80ac46b77e0770887a6530" -> "sha256:ae2d1d6c4cf3dfc874d6320a05ddec3a36b734c12fc6f21ead76f4cf8ae377cf" [label=""];
  "sha256:ae2d1d6c4cf3dfc874d6320a05ddec3a36b734c12fc6f21ead76f4cf8ae377cf" -> "sha256:80b2a82156f4dde6d7df391e074b14c5754192b76f237b23a66a28b0f915f85d" [label=""];
  "sha256:80b2a82156f4dde6d7df391e074b14c5754192b76f237b23a66a28b0f915f85d" -> "sha256:a7d60e171ae9611b07965bf05421624a7cb5075bcb1ae63f52be68878f04dc72" [label=""];
  "sha256:a7d60e171ae9611b07965bf05421624a7cb5075bcb1ae63f52be68878f04dc72" -> "sha256:e11707407a2f0bc8ba7d31f357e80d0156baa2cc1915e38a8e73d7159a7f31af" [label=""];
  "sha256:e11707407a2f0bc8ba7d31f357e80d0156baa2cc1915e38a8e73d7159a7f31af" -> "sha256:481a564d72e9d1bcf79be8f1465becc6847d6d33ac643ef37e434f31e9f779ca" [label=""];
  "sha256:481a564d72e9d1bcf79be8f1465becc6847d6d33ac643ef37e434f31e9f779ca" -> "sha256:66011f5e000264c649bc0cebc20dfe0c54c559a6dbaf4b9c13e0b2102bbfcdc8" [label=""];
  "sha256:66011f5e000264c649bc0cebc20dfe0c54c559a6dbaf4b9c13e0b2102bbfcdc8" -> "sha256:f5054a4d7672607bfa3b151476c1ddb9c1f53ea99b172af58e58489bccf474ce" [label=""];
  "sha256:f5054a4d7672607bfa3b151476c1ddb9c1f53ea99b172af58e58489bccf474ce" -> "sha256:4f7c210c7f5ee961a5059fab0ef4959fe79a0d525483bd4b2f46fda8b5f4065a" [label=""];
  "sha256:2eac2eca7aff05fb9a8d63fec0e525beecc8ebbeda4d5144a24918db24506f7c" -> "sha256:bbb76e323e0e31a50e51a0ecd4c994e2f9ab909b5ee0f21a841def64f283616d" [label=""];
  "sha256:4f7c210c7f5ee961a5059fab0ef4959fe79a0d525483bd4b2f46fda8b5f4065a" -> "sha256:bbb76e323e0e31a50e51a0ecd4c994e2f9ab909b5ee0f21a841def64f283616d" [label=""];
  "sha256:bbb76e323e0e31a50e51a0ecd4c994e2f9ab909b5ee0f21a841def64f283616d" -> "sha256:010bfc7ec1ac5c7c871843d57a7887667bc48023af5c5dc1b12ac15237b6eacd" [label=""];
}

