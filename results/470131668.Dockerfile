[app/sources/470131668.Dockerfile]
digraph {
  "sha256:806e031ab40f10b58cdf1688e191bfad2b0401ac810428e47cf46a35d894de0f" [label="docker-image://docker.io/library/leela-zero:base" shape="ellipse"];
  "sha256:2636646b4d679dc6ad9d48f425013a55a7b341778f38cea28f58bf12137e6979" [label="/bin/sh -c CXX=g++ CC=gcc cmake -DUSE_CPU_ONLY=1 .." shape="box"];
  "sha256:3ae399815a541be7616b276896e6d5b5ea2738fb8a81ca645a760f84cf97aa20" [label="/bin/sh -c cmake --build . --target tests --config Release -- -j2" shape="box"];
  "sha256:e9692b60a06aacd6998fcc6096c3333abbb36269ce708e82a91f216fcdcf8b72" [label="sha256:e9692b60a06aacd6998fcc6096c3333abbb36269ce708e82a91f216fcdcf8b72" shape="plaintext"];
  "sha256:806e031ab40f10b58cdf1688e191bfad2b0401ac810428e47cf46a35d894de0f" -> "sha256:2636646b4d679dc6ad9d48f425013a55a7b341778f38cea28f58bf12137e6979" [label=""];
  "sha256:2636646b4d679dc6ad9d48f425013a55a7b341778f38cea28f58bf12137e6979" -> "sha256:3ae399815a541be7616b276896e6d5b5ea2738fb8a81ca645a760f84cf97aa20" [label=""];
  "sha256:3ae399815a541be7616b276896e6d5b5ea2738fb8a81ca645a760f84cf97aa20" -> "sha256:e9692b60a06aacd6998fcc6096c3333abbb36269ce708e82a91f216fcdcf8b72" [label=""];
}

