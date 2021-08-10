[app/sources/207147029.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:232c458db21eb16b57ffe4fba51479b29ee5546310890305f464f85c6799305f" [label="/bin/sh -c git clone https://github.com/OWASP/Maturity-Models.git" shape="box"];
  "sha256:653fb685bad54930034ef9631d3d971e9d6280d43162a4e1e8cbfe4f4b8286f1" [label="mkdir{path=/Maturity-Models}" shape="note"];
  "sha256:047dca555170b0a1bfe83a8cb20b625e17894afbd0f1b18d90acd28f2772a6ae" [label="/bin/sh -c sed -i 's/git@github.com:/https:\\/\\/<user>:<token>@github.com\\//' .gitmodules" shape="box"];
  "sha256:5c2557721e41adde07cbaae4f0d36825247980e65198b778aa95e53019cd68c4" [label="/bin/sh -c git submodule init" shape="box"];
  "sha256:55cbffd1f080943c8263be06938b83fcc8171d96c011e9e8a3783f71ca7e848a" [label="/bin/sh -c git submodule update" shape="box"];
  "sha256:51f12aff5812e572db1b7fcaaa3ef10f6496b11b904fdad20b320cd26d414140" [label="/bin/sh -c git pull origin master" shape="box"];
  "sha256:b6f0e4d41f5b9ca31e3d1847e8ef4ee21f01eb4a9184804891ac66dc15fe5265" [label="mkdir{path=/Maturity-Models/code/api}" shape="note"];
  "sha256:abc610ac27b5c2850a5934db221ad9614954148802b215554a911d7a1bf8aebf" [label="/bin/sh -c npm install --quiet" shape="box"];
  "sha256:4b8051da85d6987446b9a122f28c548df99a28c98f3aeff3b614a8cda27884ac" [label="mkdir{path=/Maturity-Models}" shape="note"];
  "sha256:b30172835a3cac41bcb220a07f5854e255a664500dc62a0dfdace65fdd9edc6f" [label="mkdir{path=/Maturity-Models/code/ui}" shape="note"];
  "sha256:552719ed43cfb8c95be1614aad84fcdc5e6bd17cc4da7f8bf031ceedab5f8ed0" [label="/bin/sh -c npm install --quiet" shape="box"];
  "sha256:8be68ab62c355f25bec2ecffe89c0f9adf61b8bb641d4334aff444416ae46cc7" [label="/bin/sh -c npm install --quiet -g bower" shape="box"];
  "sha256:a1512d1fac4bae58a218f2976d4d328d185c40f20f72f8600d5f65aea9a3b7dd" [label="/bin/sh -c npm install --quiet -g gulp" shape="box"];
  "sha256:c9f80a8297c05036e2fb68f7a8eabc14f15684c7672de0120ff24f0af2517979" [label="/bin/sh -c bower --allow-root install" shape="box"];
  "sha256:e5b6d73a90632450f2c300689118cb1f41eb9a8b55918ea7566480ff942cdb6c" [label="/bin/sh -c gulp" shape="box"];
  "sha256:1483dbb84cd4e84392591504569137eaa9f155f7ed6634f70d651b1ca5885160" [label="mkdir{path=/Maturity-Models}" shape="note"];
  "sha256:1e1931e1bb6e7c56ff8b3a6d5f3eaf043553842dcd49c1bdd749e1fa6d081e0f" [label="sha256:1e1931e1bb6e7c56ff8b3a6d5f3eaf043553842dcd49c1bdd749e1fa6d081e0f" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:232c458db21eb16b57ffe4fba51479b29ee5546310890305f464f85c6799305f" [label=""];
  "sha256:232c458db21eb16b57ffe4fba51479b29ee5546310890305f464f85c6799305f" -> "sha256:653fb685bad54930034ef9631d3d971e9d6280d43162a4e1e8cbfe4f4b8286f1" [label=""];
  "sha256:653fb685bad54930034ef9631d3d971e9d6280d43162a4e1e8cbfe4f4b8286f1" -> "sha256:047dca555170b0a1bfe83a8cb20b625e17894afbd0f1b18d90acd28f2772a6ae" [label=""];
  "sha256:047dca555170b0a1bfe83a8cb20b625e17894afbd0f1b18d90acd28f2772a6ae" -> "sha256:5c2557721e41adde07cbaae4f0d36825247980e65198b778aa95e53019cd68c4" [label=""];
  "sha256:5c2557721e41adde07cbaae4f0d36825247980e65198b778aa95e53019cd68c4" -> "sha256:55cbffd1f080943c8263be06938b83fcc8171d96c011e9e8a3783f71ca7e848a" [label=""];
  "sha256:55cbffd1f080943c8263be06938b83fcc8171d96c011e9e8a3783f71ca7e848a" -> "sha256:51f12aff5812e572db1b7fcaaa3ef10f6496b11b904fdad20b320cd26d414140" [label=""];
  "sha256:51f12aff5812e572db1b7fcaaa3ef10f6496b11b904fdad20b320cd26d414140" -> "sha256:b6f0e4d41f5b9ca31e3d1847e8ef4ee21f01eb4a9184804891ac66dc15fe5265" [label=""];
  "sha256:b6f0e4d41f5b9ca31e3d1847e8ef4ee21f01eb4a9184804891ac66dc15fe5265" -> "sha256:abc610ac27b5c2850a5934db221ad9614954148802b215554a911d7a1bf8aebf" [label=""];
  "sha256:abc610ac27b5c2850a5934db221ad9614954148802b215554a911d7a1bf8aebf" -> "sha256:4b8051da85d6987446b9a122f28c548df99a28c98f3aeff3b614a8cda27884ac" [label=""];
  "sha256:4b8051da85d6987446b9a122f28c548df99a28c98f3aeff3b614a8cda27884ac" -> "sha256:b30172835a3cac41bcb220a07f5854e255a664500dc62a0dfdace65fdd9edc6f" [label=""];
  "sha256:b30172835a3cac41bcb220a07f5854e255a664500dc62a0dfdace65fdd9edc6f" -> "sha256:552719ed43cfb8c95be1614aad84fcdc5e6bd17cc4da7f8bf031ceedab5f8ed0" [label=""];
  "sha256:552719ed43cfb8c95be1614aad84fcdc5e6bd17cc4da7f8bf031ceedab5f8ed0" -> "sha256:8be68ab62c355f25bec2ecffe89c0f9adf61b8bb641d4334aff444416ae46cc7" [label=""];
  "sha256:8be68ab62c355f25bec2ecffe89c0f9adf61b8bb641d4334aff444416ae46cc7" -> "sha256:a1512d1fac4bae58a218f2976d4d328d185c40f20f72f8600d5f65aea9a3b7dd" [label=""];
  "sha256:a1512d1fac4bae58a218f2976d4d328d185c40f20f72f8600d5f65aea9a3b7dd" -> "sha256:c9f80a8297c05036e2fb68f7a8eabc14f15684c7672de0120ff24f0af2517979" [label=""];
  "sha256:c9f80a8297c05036e2fb68f7a8eabc14f15684c7672de0120ff24f0af2517979" -> "sha256:e5b6d73a90632450f2c300689118cb1f41eb9a8b55918ea7566480ff942cdb6c" [label=""];
  "sha256:e5b6d73a90632450f2c300689118cb1f41eb9a8b55918ea7566480ff942cdb6c" -> "sha256:1483dbb84cd4e84392591504569137eaa9f155f7ed6634f70d651b1ca5885160" [label=""];
  "sha256:1483dbb84cd4e84392591504569137eaa9f155f7ed6634f70d651b1ca5885160" -> "sha256:1e1931e1bb6e7c56ff8b3a6d5f3eaf043553842dcd49c1bdd749e1fa6d081e0f" [label=""];
}

