[app/sources/176079658.Dockerfile]
digraph {
  "sha256:0d34666b28cec93f0d4e4ecb8cdafaa53801b67d429afa2d0d10ff702b5a37c6" [label="docker-image://quay.io/grpc/raspbian_armv6@sha256:d0d426b07283a54554e00f8081bb9c8addda816d9e079b96b64e3765b55b716b" shape="ellipse"];
  "sha256:ae40e21f27b387f633f9494f20f195bd3f5348efd7b95619e8b2ae8bc25673a6" [label="cross-build-start" shape="box"];
  "sha256:e136c583ac150b9c5d4f2c8ccce7689dee419cd294ab86e9de17e41cd5e806b8" [label="/bin/sh -c find /usr/local/bin -regex '.*python[0-9]+\\.[0-9]+' | xargs -n1 -i{} bash -c \"{} -m pip install --upgrade wheel setuptools\"" shape="box"];
  "sha256:607ba537acb51b48932f80600a66eaa450a5b1812a59ff5450c527baea674a10" [label="cross-build-end" shape="box"];
  "sha256:7f7539ce6de956125ac529c25ae1aaaf8f72993e251b8dafb2c241da194d8eba" [label="sha256:7f7539ce6de956125ac529c25ae1aaaf8f72993e251b8dafb2c241da194d8eba" shape="plaintext"];
  "sha256:0d34666b28cec93f0d4e4ecb8cdafaa53801b67d429afa2d0d10ff702b5a37c6" -> "sha256:ae40e21f27b387f633f9494f20f195bd3f5348efd7b95619e8b2ae8bc25673a6" [label=""];
  "sha256:ae40e21f27b387f633f9494f20f195bd3f5348efd7b95619e8b2ae8bc25673a6" -> "sha256:e136c583ac150b9c5d4f2c8ccce7689dee419cd294ab86e9de17e41cd5e806b8" [label=""];
  "sha256:e136c583ac150b9c5d4f2c8ccce7689dee419cd294ab86e9de17e41cd5e806b8" -> "sha256:607ba537acb51b48932f80600a66eaa450a5b1812a59ff5450c527baea674a10" [label=""];
  "sha256:607ba537acb51b48932f80600a66eaa450a5b1812a59ff5450c527baea674a10" -> "sha256:7f7539ce6de956125ac529c25ae1aaaf8f72993e251b8dafb2c241da194d8eba" [label=""];
}

