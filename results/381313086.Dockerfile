[app/sources/381313086.Dockerfile]
digraph {
  "sha256:3eccff3de61cbbc023e4a04de9c95138b3389ecb8f239e523d399b4505cb4f79" [label="docker-image://docker.io/juju2013/saucy-base:latest" shape="ellipse"];
  "sha256:69c45bac4db78496a4564bc5196331616104a1e78c6f74bd32ea48b139fd6afe" [label="/bin/sh -c apt-get install -y adduser" shape="box"];
  "sha256:20f457cf822e2d231c19148c986ee6fb9e46054f4edd234e7ad3173a7186d7c7" [label="/bin/sh -c adduser --disabled-password --gecos \"haskell,666\" haskell" shape="box"];
  "sha256:5f4c215c3082cc7f4169c071127569ec760730ab4ad3d9abeff9050e94d8be08" [label="/bin/sh -c echo \"Defaults:haskell !requiretty\" >> /etc/sudoers" shape="box"];
  "sha256:f7862090b8ed613fbd62d4eb76417513d18272de7d6620ef4430f43550c1f1d0" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:713b8a2b11bb298194913443000139cb42ab1e86ba0c5fd66fc3963f515fcc06" [label="/bin/sh -c apt-get install -y haskell-platform" shape="box"];
  "sha256:62ae6ce9537961044a09be4afc6cc0b63f4d7d5bb92d39f4a8ada488b9ec18ed" [label="/bin/sh -c apt-get install -y asciidoc" shape="box"];
  "sha256:e159fdea2fb106a9f1181152d8c42c26b814375377623fe66c00b22da36f122e" [label="/bin/sh -c apt-get install -y postgresql postgresql-client postgresql-contrib libpq-dev" shape="box"];
  "sha256:424cb87789bd8f7fcb883518dd74946721515d28bd8f26cc462705f99e70406f" [label="/bin/sh -c apt-get install -y sqlite3 libsqlite3-dev" shape="box"];
  "sha256:2dac145c2d02908c19c1f20e05c8dc406c09b66d124616ce143c01d48e6a55a7" [label="sha256:2dac145c2d02908c19c1f20e05c8dc406c09b66d124616ce143c01d48e6a55a7" shape="plaintext"];
  "sha256:3eccff3de61cbbc023e4a04de9c95138b3389ecb8f239e523d399b4505cb4f79" -> "sha256:69c45bac4db78496a4564bc5196331616104a1e78c6f74bd32ea48b139fd6afe" [label=""];
  "sha256:69c45bac4db78496a4564bc5196331616104a1e78c6f74bd32ea48b139fd6afe" -> "sha256:20f457cf822e2d231c19148c986ee6fb9e46054f4edd234e7ad3173a7186d7c7" [label=""];
  "sha256:20f457cf822e2d231c19148c986ee6fb9e46054f4edd234e7ad3173a7186d7c7" -> "sha256:5f4c215c3082cc7f4169c071127569ec760730ab4ad3d9abeff9050e94d8be08" [label=""];
  "sha256:5f4c215c3082cc7f4169c071127569ec760730ab4ad3d9abeff9050e94d8be08" -> "sha256:f7862090b8ed613fbd62d4eb76417513d18272de7d6620ef4430f43550c1f1d0" [label=""];
  "sha256:f7862090b8ed613fbd62d4eb76417513d18272de7d6620ef4430f43550c1f1d0" -> "sha256:713b8a2b11bb298194913443000139cb42ab1e86ba0c5fd66fc3963f515fcc06" [label=""];
  "sha256:713b8a2b11bb298194913443000139cb42ab1e86ba0c5fd66fc3963f515fcc06" -> "sha256:62ae6ce9537961044a09be4afc6cc0b63f4d7d5bb92d39f4a8ada488b9ec18ed" [label=""];
  "sha256:62ae6ce9537961044a09be4afc6cc0b63f4d7d5bb92d39f4a8ada488b9ec18ed" -> "sha256:e159fdea2fb106a9f1181152d8c42c26b814375377623fe66c00b22da36f122e" [label=""];
  "sha256:e159fdea2fb106a9f1181152d8c42c26b814375377623fe66c00b22da36f122e" -> "sha256:424cb87789bd8f7fcb883518dd74946721515d28bd8f26cc462705f99e70406f" [label=""];
  "sha256:424cb87789bd8f7fcb883518dd74946721515d28bd8f26cc462705f99e70406f" -> "sha256:2dac145c2d02908c19c1f20e05c8dc406c09b66d124616ce143c01d48e6a55a7" [label=""];
}

