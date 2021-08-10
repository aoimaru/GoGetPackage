[app/sources/193383100.Dockerfile]
digraph {
  "sha256:8a487bad8a18990c80283db0ffa32f4d79ff9d227305dbc187ad5054a35c5171" [label="local://context" shape="ellipse"];
  "sha256:d2c09c1cbf600dacfffef512c294116497ac2e272e2c8e254125f7bc709b14d6" [label="docker-image://docker.io/library/ruby:2.3.1" shape="ellipse"];
  "sha256:648a4ed6fa6d9affefa40aedb0a7be4993445b499e685cca5776a562ab053218" [label="copy{src=/Gemfile*, dest=/app/}" shape="note"];
  "sha256:71ab49d07f4c96bd64a01dd452e440fda4d65b43c45e54fd572bff43e886c9c9" [label="copy{src=/*.ru, dest=/app/}" shape="note"];
  "sha256:cafd0ed6d345d872116598da6e7d2c6044320ca72d4f6e906cf6cc8f0e9cd4dd" [label="copy{src=/*.rb, dest=/app/}" shape="note"];
  "sha256:794b272ae9856064e95fa26dc643895a65e8ecb798c8cffc7144de9380ba3c81" [label="mkdir{path=/app}" shape="note"];
  "sha256:be88af08d114e8a7c0ce01aff80e67952bdace1618ad82e81587752cbe06d69c" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:ea59d5b4200311cda77850877a6b2ddbeebc591dcf2ef68b6a35ed10d0d635cb" [label="sha256:ea59d5b4200311cda77850877a6b2ddbeebc591dcf2ef68b6a35ed10d0d635cb" shape="plaintext"];
  "sha256:d2c09c1cbf600dacfffef512c294116497ac2e272e2c8e254125f7bc709b14d6" -> "sha256:648a4ed6fa6d9affefa40aedb0a7be4993445b499e685cca5776a562ab053218" [label=""];
  "sha256:8a487bad8a18990c80283db0ffa32f4d79ff9d227305dbc187ad5054a35c5171" -> "sha256:648a4ed6fa6d9affefa40aedb0a7be4993445b499e685cca5776a562ab053218" [label=""];
  "sha256:648a4ed6fa6d9affefa40aedb0a7be4993445b499e685cca5776a562ab053218" -> "sha256:71ab49d07f4c96bd64a01dd452e440fda4d65b43c45e54fd572bff43e886c9c9" [label=""];
  "sha256:8a487bad8a18990c80283db0ffa32f4d79ff9d227305dbc187ad5054a35c5171" -> "sha256:71ab49d07f4c96bd64a01dd452e440fda4d65b43c45e54fd572bff43e886c9c9" [label=""];
  "sha256:71ab49d07f4c96bd64a01dd452e440fda4d65b43c45e54fd572bff43e886c9c9" -> "sha256:cafd0ed6d345d872116598da6e7d2c6044320ca72d4f6e906cf6cc8f0e9cd4dd" [label=""];
  "sha256:8a487bad8a18990c80283db0ffa32f4d79ff9d227305dbc187ad5054a35c5171" -> "sha256:cafd0ed6d345d872116598da6e7d2c6044320ca72d4f6e906cf6cc8f0e9cd4dd" [label=""];
  "sha256:cafd0ed6d345d872116598da6e7d2c6044320ca72d4f6e906cf6cc8f0e9cd4dd" -> "sha256:794b272ae9856064e95fa26dc643895a65e8ecb798c8cffc7144de9380ba3c81" [label=""];
  "sha256:794b272ae9856064e95fa26dc643895a65e8ecb798c8cffc7144de9380ba3c81" -> "sha256:be88af08d114e8a7c0ce01aff80e67952bdace1618ad82e81587752cbe06d69c" [label=""];
  "sha256:be88af08d114e8a7c0ce01aff80e67952bdace1618ad82e81587752cbe06d69c" -> "sha256:ea59d5b4200311cda77850877a6b2ddbeebc591dcf2ef68b6a35ed10d0d635cb" [label=""];
}

