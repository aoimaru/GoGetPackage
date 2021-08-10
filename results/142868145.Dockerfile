[app/sources/142868145.Dockerfile]
digraph {
  "sha256:97877f0228b4d37f4437431b5a80928cceebec0528ad95cf8807084f5a0d3e95" [label="docker-image://docker.io/library/node:6.9" shape="ellipse"];
  "sha256:7368c9f40fa54d212d727a8f4ec652c6fa8f386fa0f0c832fb77f9b9d84605d7" [label="/bin/sh -c apt-get update -qq && apt-get upgrade -y && apt-get install -y build-essential" shape="box"];
  "sha256:3b8fd8dca67c323339f27d3de4816b5b6ce92f073d6433e9af24eb08e2aba02d" [label="/bin/sh -c mkdir -p /usr/src/" shape="box"];
  "sha256:23128615704844989ba7c29ecef24b029bd19fbe47b39a614fe225bd82ae4af9" [label="mkdir{path=/usr/src}" shape="note"];
  "sha256:f3edf5a0336263dfdd90a7c08a19086e8c65db24c7f1b20a37310b1bbd5fc07f" [label="local://context" shape="ellipse"];
  "sha256:48f324d0421a0b12212cf74b01b097365e41102c9adde9e9f607e8f7fa795fe9" [label="copy{src=/package.json, dest=/usr/src/package.json}" shape="note"];
  "sha256:6e86dc7027e3978ab9f789edc99cb6d5c421f52740ef72abe887f97db5b71c2c" [label="/bin/sh -c npm install --production" shape="box"];
  "sha256:61bf09e977fbd05893901d0d62731601ee59e16963cde74a2d6cb7c476721f41" [label="/bin/sh -c npm install mocha should" shape="box"];
  "sha256:247294517e29f0bc0b301cdc20bf0a688fb8a088369f9c0a13ee742d4af4ad71" [label="copy{src=/lib, dest=/usr/src/lib/}" shape="note"];
  "sha256:7b02e30d78b6cee837b2e5660878875d9a7dfe8fe61b8ef28b9db7b49ea8d141" [label="copy{src=/test, dest=/usr/src/test/}" shape="note"];
  "sha256:16262054340055d77d69f11061dd6de2288a58b6a63bef8833f826b61ed1ab99" [label="copy{src=/index.js, dest=/usr/src/}" shape="note"];
  "sha256:69885f70a2a2df063a5500cb9de4bce784490c484f03692b7f05c9f489a5dd86" [label="sha256:69885f70a2a2df063a5500cb9de4bce784490c484f03692b7f05c9f489a5dd86" shape="plaintext"];
  "sha256:97877f0228b4d37f4437431b5a80928cceebec0528ad95cf8807084f5a0d3e95" -> "sha256:7368c9f40fa54d212d727a8f4ec652c6fa8f386fa0f0c832fb77f9b9d84605d7" [label=""];
  "sha256:7368c9f40fa54d212d727a8f4ec652c6fa8f386fa0f0c832fb77f9b9d84605d7" -> "sha256:3b8fd8dca67c323339f27d3de4816b5b6ce92f073d6433e9af24eb08e2aba02d" [label=""];
  "sha256:3b8fd8dca67c323339f27d3de4816b5b6ce92f073d6433e9af24eb08e2aba02d" -> "sha256:23128615704844989ba7c29ecef24b029bd19fbe47b39a614fe225bd82ae4af9" [label=""];
  "sha256:23128615704844989ba7c29ecef24b029bd19fbe47b39a614fe225bd82ae4af9" -> "sha256:48f324d0421a0b12212cf74b01b097365e41102c9adde9e9f607e8f7fa795fe9" [label=""];
  "sha256:f3edf5a0336263dfdd90a7c08a19086e8c65db24c7f1b20a37310b1bbd5fc07f" -> "sha256:48f324d0421a0b12212cf74b01b097365e41102c9adde9e9f607e8f7fa795fe9" [label=""];
  "sha256:48f324d0421a0b12212cf74b01b097365e41102c9adde9e9f607e8f7fa795fe9" -> "sha256:6e86dc7027e3978ab9f789edc99cb6d5c421f52740ef72abe887f97db5b71c2c" [label=""];
  "sha256:6e86dc7027e3978ab9f789edc99cb6d5c421f52740ef72abe887f97db5b71c2c" -> "sha256:61bf09e977fbd05893901d0d62731601ee59e16963cde74a2d6cb7c476721f41" [label=""];
  "sha256:61bf09e977fbd05893901d0d62731601ee59e16963cde74a2d6cb7c476721f41" -> "sha256:247294517e29f0bc0b301cdc20bf0a688fb8a088369f9c0a13ee742d4af4ad71" [label=""];
  "sha256:f3edf5a0336263dfdd90a7c08a19086e8c65db24c7f1b20a37310b1bbd5fc07f" -> "sha256:247294517e29f0bc0b301cdc20bf0a688fb8a088369f9c0a13ee742d4af4ad71" [label=""];
  "sha256:247294517e29f0bc0b301cdc20bf0a688fb8a088369f9c0a13ee742d4af4ad71" -> "sha256:7b02e30d78b6cee837b2e5660878875d9a7dfe8fe61b8ef28b9db7b49ea8d141" [label=""];
  "sha256:f3edf5a0336263dfdd90a7c08a19086e8c65db24c7f1b20a37310b1bbd5fc07f" -> "sha256:7b02e30d78b6cee837b2e5660878875d9a7dfe8fe61b8ef28b9db7b49ea8d141" [label=""];
  "sha256:7b02e30d78b6cee837b2e5660878875d9a7dfe8fe61b8ef28b9db7b49ea8d141" -> "sha256:16262054340055d77d69f11061dd6de2288a58b6a63bef8833f826b61ed1ab99" [label=""];
  "sha256:f3edf5a0336263dfdd90a7c08a19086e8c65db24c7f1b20a37310b1bbd5fc07f" -> "sha256:16262054340055d77d69f11061dd6de2288a58b6a63bef8833f826b61ed1ab99" [label=""];
  "sha256:16262054340055d77d69f11061dd6de2288a58b6a63bef8833f826b61ed1ab99" -> "sha256:69885f70a2a2df063a5500cb9de4bce784490c484f03692b7f05c9f489a5dd86" [label=""];
}

