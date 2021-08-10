[app/sources/212922350.Dockerfile]
digraph {
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" [label="docker-image://docker.io/library/centos:centos6" shape="ellipse"];
  "sha256:97ac0e75010e83ce9c3d0ebea602d2c8b2864e4fce8f419ed2f9f0bd3291335a" [label="/bin/sh -c yum install -y https://yum.kaos.io/6/release/i386/kaos-repo-7.0-0.el6.noarch.rpm" shape="box"];
  "sha256:d93540121846c14870c05aff5f40f59de0ba61ad26b1aa7f2de3df74b9494c3d" [label="/bin/sh -c yum install -y unzip git erlang17" shape="box"];
  "sha256:6dc866d2e0c138070d4f2cb8f6cd767341240a6684f52c3cb7ff8ce09785872b" [label="/bin/sh -c curl -fSL -o elixir-precompiled.zip https://github.com/elixir-lang/elixir/releases/download/v1.1.1/Precompiled.zip" shape="box"];
  "sha256:4cc29df594b5c5f703aa422336a371fb0d93bacf2db4e31826c764263c1c4bd8" [label="/bin/sh -c unzip -d /usr/local elixir-precompiled.zip" shape="box"];
  "sha256:7107f8045cb365431a395bdc96c95948654bf0f979525e18f897501c45d87acb" [label="/bin/sh -c mix local.hex --force" shape="box"];
  "sha256:7c04f467a6d50d2858ecc3dfedb37081a82b0d5175bedb9f2cef98f89be1775c" [label="/bin/sh -c mix local.rebar --force" shape="box"];
  "sha256:99e34948e290274215120f686baf9eebfea8b1ae61735224cb9bfba999ebc873" [label="sha256:99e34948e290274215120f686baf9eebfea8b1ae61735224cb9bfba999ebc873" shape="plaintext"];
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" -> "sha256:97ac0e75010e83ce9c3d0ebea602d2c8b2864e4fce8f419ed2f9f0bd3291335a" [label=""];
  "sha256:97ac0e75010e83ce9c3d0ebea602d2c8b2864e4fce8f419ed2f9f0bd3291335a" -> "sha256:d93540121846c14870c05aff5f40f59de0ba61ad26b1aa7f2de3df74b9494c3d" [label=""];
  "sha256:d93540121846c14870c05aff5f40f59de0ba61ad26b1aa7f2de3df74b9494c3d" -> "sha256:6dc866d2e0c138070d4f2cb8f6cd767341240a6684f52c3cb7ff8ce09785872b" [label=""];
  "sha256:6dc866d2e0c138070d4f2cb8f6cd767341240a6684f52c3cb7ff8ce09785872b" -> "sha256:4cc29df594b5c5f703aa422336a371fb0d93bacf2db4e31826c764263c1c4bd8" [label=""];
  "sha256:4cc29df594b5c5f703aa422336a371fb0d93bacf2db4e31826c764263c1c4bd8" -> "sha256:7107f8045cb365431a395bdc96c95948654bf0f979525e18f897501c45d87acb" [label=""];
  "sha256:7107f8045cb365431a395bdc96c95948654bf0f979525e18f897501c45d87acb" -> "sha256:7c04f467a6d50d2858ecc3dfedb37081a82b0d5175bedb9f2cef98f89be1775c" [label=""];
  "sha256:7c04f467a6d50d2858ecc3dfedb37081a82b0d5175bedb9f2cef98f89be1775c" -> "sha256:99e34948e290274215120f686baf9eebfea8b1ae61735224cb9bfba999ebc873" [label=""];
}

