[app/sources/198568358.Dockerfile]
digraph {
  "sha256:848ea6e11a6567508371c77da1619f5b8818d1a3abafa1f3bad7443100a37d5a" [label="local://context" shape="ellipse"];
  "sha256:846720efb2b93c151077ba23a10d12b63b5723b91cfc99d77037bf3a95535dd4" [label="docker-image://docker.io/library/java:8-jre-alpine" shape="ellipse"];
  "sha256:40abaffbab9051122b8a1685c2cd444a0f7ce65a730c15e686d09b109cdfd90e" [label="copy{src=/target/swagger-codegen-cli.jar, dest=/opt/swagger-codegen-cli/swagger-codegen-cli.jar}" shape="note"];
  "sha256:267c3ec8e0071f4d56f9fcfbc7d76902d007557512ad44bb080411e4f3dc979b" [label="sha256:267c3ec8e0071f4d56f9fcfbc7d76902d007557512ad44bb080411e4f3dc979b" shape="plaintext"];
  "sha256:846720efb2b93c151077ba23a10d12b63b5723b91cfc99d77037bf3a95535dd4" -> "sha256:40abaffbab9051122b8a1685c2cd444a0f7ce65a730c15e686d09b109cdfd90e" [label=""];
  "sha256:848ea6e11a6567508371c77da1619f5b8818d1a3abafa1f3bad7443100a37d5a" -> "sha256:40abaffbab9051122b8a1685c2cd444a0f7ce65a730c15e686d09b109cdfd90e" [label=""];
  "sha256:40abaffbab9051122b8a1685c2cd444a0f7ce65a730c15e686d09b109cdfd90e" -> "sha256:267c3ec8e0071f4d56f9fcfbc7d76902d007557512ad44bb080411e4f3dc979b" [label=""];
}

