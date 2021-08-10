[app/sources/394803492.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:9e26fa56416df260cbb952967f0322a2c8b26ce55c47c8b4ae293839c7dec3bb" [label="mkdir{path=/opt}" shape="note"];
  "sha256:549c70f2657ff3b15a66650d8eaf8b77ff739ec31666ff9d70cfc84fcb9e1fc3" [label="local://context" shape="ellipse"];
  "sha256:b72ec51d3ffb78af677230cdf7ab2d0413c6c9f25d0c896b6b15a78ac1f079c2" [label="copy{src=/target/vertx-mqtt-broker-2.2.13-fat.jar, dest=/opt/mqtt-broker.jar}" shape="note"];
  "sha256:3f0ed694a5082f7d386d73d42fa6ccdeec127c32d118a0c6f5e68a02272f6a3f" [label="copy{src=/config.json, dest=/opt/config.json}" shape="note"];
  "sha256:8e09cd107c91790bb1e875e53a7d69ae3144890b692ec083396194278a507db5" [label="copy{src=/entrypoint.sh, dest=/opt/entrypoint.sh}" shape="note"];
  "sha256:044ad9808572a087ee983339f288eec86d70c7f99edb21fcfbd38dd1c41ef697" [label="sha256:044ad9808572a087ee983339f288eec86d70c7f99edb21fcfbd38dd1c41ef697" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:9e26fa56416df260cbb952967f0322a2c8b26ce55c47c8b4ae293839c7dec3bb" [label=""];
  "sha256:9e26fa56416df260cbb952967f0322a2c8b26ce55c47c8b4ae293839c7dec3bb" -> "sha256:b72ec51d3ffb78af677230cdf7ab2d0413c6c9f25d0c896b6b15a78ac1f079c2" [label=""];
  "sha256:549c70f2657ff3b15a66650d8eaf8b77ff739ec31666ff9d70cfc84fcb9e1fc3" -> "sha256:b72ec51d3ffb78af677230cdf7ab2d0413c6c9f25d0c896b6b15a78ac1f079c2" [label=""];
  "sha256:b72ec51d3ffb78af677230cdf7ab2d0413c6c9f25d0c896b6b15a78ac1f079c2" -> "sha256:3f0ed694a5082f7d386d73d42fa6ccdeec127c32d118a0c6f5e68a02272f6a3f" [label=""];
  "sha256:549c70f2657ff3b15a66650d8eaf8b77ff739ec31666ff9d70cfc84fcb9e1fc3" -> "sha256:3f0ed694a5082f7d386d73d42fa6ccdeec127c32d118a0c6f5e68a02272f6a3f" [label=""];
  "sha256:3f0ed694a5082f7d386d73d42fa6ccdeec127c32d118a0c6f5e68a02272f6a3f" -> "sha256:8e09cd107c91790bb1e875e53a7d69ae3144890b692ec083396194278a507db5" [label=""];
  "sha256:549c70f2657ff3b15a66650d8eaf8b77ff739ec31666ff9d70cfc84fcb9e1fc3" -> "sha256:8e09cd107c91790bb1e875e53a7d69ae3144890b692ec083396194278a507db5" [label=""];
  "sha256:8e09cd107c91790bb1e875e53a7d69ae3144890b692ec083396194278a507db5" -> "sha256:044ad9808572a087ee983339f288eec86d70c7f99edb21fcfbd38dd1c41ef697" [label=""];
}

