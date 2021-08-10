[app/sources/228460492.Dockerfile]
digraph {
  "sha256:d2c09c1cbf600dacfffef512c294116497ac2e272e2c8e254125f7bc709b14d6" [label="docker-image://docker.io/library/ruby:2.3.1" shape="ellipse"];
  "sha256:b66673646db2f66c7e15ecb6230052db250e0b71c0731bffbed17ca9f77dc55c" [label="/bin/sh -c apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs" shape="box"];
  "sha256:897b2322d5d06cd3a94502d4bb256302eeb831f984647a263637d31a9faba004" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:6fa1aeae1fae6ca332b4e7fc55a35f0d3895b3e51f9c09cb78aa9f72212eff0c" [label="mkdir{path=/app}" shape="note"];
  "sha256:939c09e9a3e4e3286de336f86cda76f750ed5439be947f0b99f048297dbf494b" [label="local://context" shape="ellipse"];
  "sha256:74d4f31bffee0e0168417ca72522138c0103bb34b19100c71b3c41b7d170b74d" [label="copy{src=/Gemfile, dest=/app/Gemfile}" shape="note"];
  "sha256:2767e6d98c09e745f1b986c3c6d0880852ebbde1003264a366fcce257d1d45e9" [label="copy{src=/Gemfile.lock, dest=/app/Gemfile.lock}" shape="note"];
  "sha256:7643a8990901d8da20adcf1025fda7a5338d660adf7f57bb782bf039314d8ae9" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:94ff74e735b63c9ba3e6774228753d34537d92d339331f44d0bf5e657a69ba81" [label="/bin/sh -c bundle install # --without development test" shape="box"];
  "sha256:0c4f50c2e7c41042ac1643d7a8fe5669bb2b3f777c52e22f27176f2e4bc3665d" [label="/bin/sh -c RAILS_ENV=production bin/rails assets:precompile" shape="box"];
  "sha256:e9dea18fb3d7e4dafd9c798254abdfc95a804e13969f4d9c5aa1d2addda3629c" [label="sha256:e9dea18fb3d7e4dafd9c798254abdfc95a804e13969f4d9c5aa1d2addda3629c" shape="plaintext"];
  "sha256:d2c09c1cbf600dacfffef512c294116497ac2e272e2c8e254125f7bc709b14d6" -> "sha256:b66673646db2f66c7e15ecb6230052db250e0b71c0731bffbed17ca9f77dc55c" [label=""];
  "sha256:b66673646db2f66c7e15ecb6230052db250e0b71c0731bffbed17ca9f77dc55c" -> "sha256:897b2322d5d06cd3a94502d4bb256302eeb831f984647a263637d31a9faba004" [label=""];
  "sha256:897b2322d5d06cd3a94502d4bb256302eeb831f984647a263637d31a9faba004" -> "sha256:6fa1aeae1fae6ca332b4e7fc55a35f0d3895b3e51f9c09cb78aa9f72212eff0c" [label=""];
  "sha256:6fa1aeae1fae6ca332b4e7fc55a35f0d3895b3e51f9c09cb78aa9f72212eff0c" -> "sha256:74d4f31bffee0e0168417ca72522138c0103bb34b19100c71b3c41b7d170b74d" [label=""];
  "sha256:939c09e9a3e4e3286de336f86cda76f750ed5439be947f0b99f048297dbf494b" -> "sha256:74d4f31bffee0e0168417ca72522138c0103bb34b19100c71b3c41b7d170b74d" [label=""];
  "sha256:74d4f31bffee0e0168417ca72522138c0103bb34b19100c71b3c41b7d170b74d" -> "sha256:2767e6d98c09e745f1b986c3c6d0880852ebbde1003264a366fcce257d1d45e9" [label=""];
  "sha256:939c09e9a3e4e3286de336f86cda76f750ed5439be947f0b99f048297dbf494b" -> "sha256:2767e6d98c09e745f1b986c3c6d0880852ebbde1003264a366fcce257d1d45e9" [label=""];
  "sha256:2767e6d98c09e745f1b986c3c6d0880852ebbde1003264a366fcce257d1d45e9" -> "sha256:7643a8990901d8da20adcf1025fda7a5338d660adf7f57bb782bf039314d8ae9" [label=""];
  "sha256:939c09e9a3e4e3286de336f86cda76f750ed5439be947f0b99f048297dbf494b" -> "sha256:7643a8990901d8da20adcf1025fda7a5338d660adf7f57bb782bf039314d8ae9" [label=""];
  "sha256:7643a8990901d8da20adcf1025fda7a5338d660adf7f57bb782bf039314d8ae9" -> "sha256:94ff74e735b63c9ba3e6774228753d34537d92d339331f44d0bf5e657a69ba81" [label=""];
  "sha256:94ff74e735b63c9ba3e6774228753d34537d92d339331f44d0bf5e657a69ba81" -> "sha256:0c4f50c2e7c41042ac1643d7a8fe5669bb2b3f777c52e22f27176f2e4bc3665d" [label=""];
  "sha256:0c4f50c2e7c41042ac1643d7a8fe5669bb2b3f777c52e22f27176f2e4bc3665d" -> "sha256:e9dea18fb3d7e4dafd9c798254abdfc95a804e13969f4d9c5aa1d2addda3629c" [label=""];
}

