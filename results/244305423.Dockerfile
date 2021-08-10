[app/sources/244305423.Dockerfile]
digraph {
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" [label="docker-image://docker.io/library/ubuntu:12.04" shape="ellipse"];
  "sha256:6c03d58119c0bbcf97e9f24326d02f0d49241ae096a2595fee9e95f8976f9de6" [label="/bin/sh -c rm /bin/sh && ln -s /bin/bash /bin/sh" shape="box"];
  "sha256:41adaab297d5b875dc70c9de8f69e88890116d0e745e46a20c21dd92787403cb" [label="/bin/sh -c apt-get update && apt-get install curl npm -y" shape="box"];
  "sha256:e76f1827739f6824c027786b6f6d13f17466d303265e73d454e8142ffd1c0ca8" [label="/bin/sh -c curl https://raw.githubusercontent.com/creationix/nvm/v$NVM_VERSION/install.sh | bash     && source $NVM_DIR/nvm.sh     && nvm install 0.10     && nvm install 0.12     && nvm install 4     && nvm alias default $NODE_VERSION     && nvm use default" shape="box"];
  "sha256:7963f68ae345c42ca48e9da1acaf3417ece692b229e1160d95349c030146c467" [label="sha256:7963f68ae345c42ca48e9da1acaf3417ece692b229e1160d95349c030146c467" shape="plaintext"];
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" -> "sha256:6c03d58119c0bbcf97e9f24326d02f0d49241ae096a2595fee9e95f8976f9de6" [label=""];
  "sha256:6c03d58119c0bbcf97e9f24326d02f0d49241ae096a2595fee9e95f8976f9de6" -> "sha256:41adaab297d5b875dc70c9de8f69e88890116d0e745e46a20c21dd92787403cb" [label=""];
  "sha256:41adaab297d5b875dc70c9de8f69e88890116d0e745e46a20c21dd92787403cb" -> "sha256:e76f1827739f6824c027786b6f6d13f17466d303265e73d454e8142ffd1c0ca8" [label=""];
  "sha256:e76f1827739f6824c027786b6f6d13f17466d303265e73d454e8142ffd1c0ca8" -> "sha256:7963f68ae345c42ca48e9da1acaf3417ece692b229e1160d95349c030146c467" [label=""];
}

