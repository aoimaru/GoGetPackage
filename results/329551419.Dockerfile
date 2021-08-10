[app/sources/329551419.Dockerfile]
digraph {
  "sha256:a49f005abb2e2beb3989957250844aa6aadc918cafe49c114a1262a3dbb33bc9" [label="docker-image://docker.io/thecodingmachine/php:7.2-v2-apache@sha256:2d7b8f54e0dc59ddcb4c48c08ecd2e7e1a46588fe7be4a2ff6bfe4f6cb7c8857" shape="ellipse"];
  "sha256:f8824b7c9c09f58891c584cdf321c6e38214bae784f08bcb2ac5760d98c6bc11" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends gnupg &&     curl -sL https://deb.nodesource.com/setup_8.x | bash - &&     apt-get update &&     apt-get install -y --no-install-recommends nodejs &&     curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - &&     echo \"deb https://dl.yarnpkg.com/debian/ stable main\" | tee /etc/apt/sources.list.d/yarn.list &&     apt-get update &&     apt-get install -y --no-install-recommends yarn &&     npm install -g npm" shape="box"];
  "sha256:f73f10d61205ebf3f288a72d523eb9a6cf8327c5a623ceda00063c16de407a7e" [label="sha256:f73f10d61205ebf3f288a72d523eb9a6cf8327c5a623ceda00063c16de407a7e" shape="plaintext"];
  "sha256:a49f005abb2e2beb3989957250844aa6aadc918cafe49c114a1262a3dbb33bc9" -> "sha256:f8824b7c9c09f58891c584cdf321c6e38214bae784f08bcb2ac5760d98c6bc11" [label=""];
  "sha256:f8824b7c9c09f58891c584cdf321c6e38214bae784f08bcb2ac5760d98c6bc11" -> "sha256:f73f10d61205ebf3f288a72d523eb9a6cf8327c5a623ceda00063c16de407a7e" [label=""];
}

