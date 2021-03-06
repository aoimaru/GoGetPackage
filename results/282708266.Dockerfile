[app/sources/282708266.Dockerfile]
digraph {
  "sha256:1d1110d8db50c1a2e5c0cce7d8e4c8157b2d7fbfcf876932814918e7a1f99791" [label="local://context" shape="ellipse"];
  "sha256:06acffa4b33993cec1eae90543e1144501afe0cc6bdc085bdee5c90492c5a348" [label="docker-image://docker.io/library/golang:1.11.2-alpine3.8" shape="ellipse"];
  "sha256:813ec9425663c19f55e27edd16e7a5e219095adb8a81f519f54d9a029ebb4292" [label="/bin/sh -c apk add bash make git curl unzip rsync libc6-compat gcc musl-dev" shape="box"];
  "sha256:ae3ee021a3702cfdbe88768f16da78c6e478444450ddb4851560f3f007169856" [label="mkdir{path=/go/src/github.com/spacemeshos/go-spacemesh}" shape="note"];
  "sha256:654fa2d5e9a05c0eb12fc4b3fcdbcc1371d88fa9260ed0d27ce3075abc9ae08e" [label="copy{src=/go.mod, dest=/go/src/github.com/spacemeshos/go-spacemesh/}" shape="note"];
  "sha256:981d9d37f0c5ced52929d60adb0efd8134b9219c480be4687367b3bc522a72c8" [label="copy{src=/go.sum, dest=/go/src/github.com/spacemeshos/go-spacemesh/}" shape="note"];
  "sha256:690ce211298dff97fc166372e6b08b6075e9cc404c38038d70cdca1733ab1d18" [label="/bin/sh -c go mod download" shape="box"];
  "sha256:f210de9ffd018d1a3aea5000b3eb58169bbb4d02127560a7b651d545c913563a" [label="copy{src=/setup_env.sh, dest=/go/src/github.com/spacemeshos/go-spacemesh/}" shape="note"];
  "sha256:9bf238a6af4a5cc7bcb556f1e2cd1166d5e60f8a7f25e84cc52487da6aaadffa" [label="copy{src=/scripts/*, dest=/go/src/github.com/spacemeshos/go-spacemesh/scripts/}" shape="note"];
  "sha256:87a7ffa733eca30c09c4a59f361ef7aac77f08d09a852b73c7fc2fc889175eca" [label="/bin/sh -c ./setup_env.sh" shape="box"];
  "sha256:326fd0c9d4057c2381505e756b0e235c180ae4313c1e8756247d097496782ac7" [label="copy{src=/, dest=/go/src/github.com/spacemeshos/go-spacemesh/}" shape="note"];
  "sha256:c1f4b360f44c92eea7fddba363969e64ba9d3f5daa929518d0797ccc6b659214" [label="/bin/sh -c make build" shape="box"];
  "sha256:f24c4cf729522fda475626c6255b62b52b8af091a604b0a64d61080bfd8e55a5" [label="/bin/sh -c make hare" shape="box"];
  "sha256:658f17ee2dc3ad825183bf2800aac28a28a31e58dc7c4f55c239b546ec822ed4" [label="/bin/sh -c make p2p" shape="box"];
  "sha256:69bf3a7ae3707331d338921f5b532b8851fbbd443e4be76dd59067805d652c4d" [label="/bin/sh -c make sync" shape="box"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:983909f54632457c37f3653ada0f150083234650a83b20975682db4289ea75d2" [label="copy{src=/go/src/github.com/spacemeshos/go-spacemesh/build/go-spacemesh, dest=/bin/go-spacemesh}" shape="note"];
  "sha256:9735accd39016f4c50642a8a691ad07bfd33601fe6bf61f31405e1f2a4df4f64" [label="copy{src=/go/src/github.com/spacemeshos/go-spacemesh/build/go-hare, dest=/bin/go-hare}" shape="note"];
  "sha256:57ebdbb649d7bbd10c8378299a03e874172f7d470da3441c378a7811d3094411" [label="copy{src=/go/src/github.com/spacemeshos/go-spacemesh/build/go-p2p, dest=/bin/go-p2p}" shape="note"];
  "sha256:44b41c45ab4df2f616cd8a78853ee94de4db7964f65ba262b24ab2e8ad780036" [label="copy{src=/go/src/github.com/spacemeshos/go-spacemesh/build/go-sync, dest=/bin/go-sync}" shape="note"];
  "sha256:070ef475bc782eb5287c9b8d49e98ec594657d00c1842d93de873c748b40540a" [label="copy{src=/go/src/github.com/spacemeshos/go-spacemesh/tests/sync/data, dest=/bin/data}" shape="note"];
  "sha256:9549e79e52f68b03a7080f3ae2edfadf67ac0751d8abba0e0e7e582956b7a793" [label="sha256:9549e79e52f68b03a7080f3ae2edfadf67ac0751d8abba0e0e7e582956b7a793" shape="plaintext"];
  "sha256:06acffa4b33993cec1eae90543e1144501afe0cc6bdc085bdee5c90492c5a348" -> "sha256:813ec9425663c19f55e27edd16e7a5e219095adb8a81f519f54d9a029ebb4292" [label=""];
  "sha256:813ec9425663c19f55e27edd16e7a5e219095adb8a81f519f54d9a029ebb4292" -> "sha256:ae3ee021a3702cfdbe88768f16da78c6e478444450ddb4851560f3f007169856" [label=""];
  "sha256:ae3ee021a3702cfdbe88768f16da78c6e478444450ddb4851560f3f007169856" -> "sha256:654fa2d5e9a05c0eb12fc4b3fcdbcc1371d88fa9260ed0d27ce3075abc9ae08e" [label=""];
  "sha256:1d1110d8db50c1a2e5c0cce7d8e4c8157b2d7fbfcf876932814918e7a1f99791" -> "sha256:654fa2d5e9a05c0eb12fc4b3fcdbcc1371d88fa9260ed0d27ce3075abc9ae08e" [label=""];
  "sha256:654fa2d5e9a05c0eb12fc4b3fcdbcc1371d88fa9260ed0d27ce3075abc9ae08e" -> "sha256:981d9d37f0c5ced52929d60adb0efd8134b9219c480be4687367b3bc522a72c8" [label=""];
  "sha256:1d1110d8db50c1a2e5c0cce7d8e4c8157b2d7fbfcf876932814918e7a1f99791" -> "sha256:981d9d37f0c5ced52929d60adb0efd8134b9219c480be4687367b3bc522a72c8" [label=""];
  "sha256:981d9d37f0c5ced52929d60adb0efd8134b9219c480be4687367b3bc522a72c8" -> "sha256:690ce211298dff97fc166372e6b08b6075e9cc404c38038d70cdca1733ab1d18" [label=""];
  "sha256:690ce211298dff97fc166372e6b08b6075e9cc404c38038d70cdca1733ab1d18" -> "sha256:f210de9ffd018d1a3aea5000b3eb58169bbb4d02127560a7b651d545c913563a" [label=""];
  "sha256:1d1110d8db50c1a2e5c0cce7d8e4c8157b2d7fbfcf876932814918e7a1f99791" -> "sha256:f210de9ffd018d1a3aea5000b3eb58169bbb4d02127560a7b651d545c913563a" [label=""];
  "sha256:f210de9ffd018d1a3aea5000b3eb58169bbb4d02127560a7b651d545c913563a" -> "sha256:9bf238a6af4a5cc7bcb556f1e2cd1166d5e60f8a7f25e84cc52487da6aaadffa" [label=""];
  "sha256:1d1110d8db50c1a2e5c0cce7d8e4c8157b2d7fbfcf876932814918e7a1f99791" -> "sha256:9bf238a6af4a5cc7bcb556f1e2cd1166d5e60f8a7f25e84cc52487da6aaadffa" [label=""];
  "sha256:9bf238a6af4a5cc7bcb556f1e2cd1166d5e60f8a7f25e84cc52487da6aaadffa" -> "sha256:87a7ffa733eca30c09c4a59f361ef7aac77f08d09a852b73c7fc2fc889175eca" [label=""];
  "sha256:87a7ffa733eca30c09c4a59f361ef7aac77f08d09a852b73c7fc2fc889175eca" -> "sha256:326fd0c9d4057c2381505e756b0e235c180ae4313c1e8756247d097496782ac7" [label=""];
  "sha256:1d1110d8db50c1a2e5c0cce7d8e4c8157b2d7fbfcf876932814918e7a1f99791" -> "sha256:326fd0c9d4057c2381505e756b0e235c180ae4313c1e8756247d097496782ac7" [label=""];
  "sha256:326fd0c9d4057c2381505e756b0e235c180ae4313c1e8756247d097496782ac7" -> "sha256:c1f4b360f44c92eea7fddba363969e64ba9d3f5daa929518d0797ccc6b659214" [label=""];
  "sha256:c1f4b360f44c92eea7fddba363969e64ba9d3f5daa929518d0797ccc6b659214" -> "sha256:f24c4cf729522fda475626c6255b62b52b8af091a604b0a64d61080bfd8e55a5" [label=""];
  "sha256:f24c4cf729522fda475626c6255b62b52b8af091a604b0a64d61080bfd8e55a5" -> "sha256:658f17ee2dc3ad825183bf2800aac28a28a31e58dc7c4f55c239b546ec822ed4" [label=""];
  "sha256:658f17ee2dc3ad825183bf2800aac28a28a31e58dc7c4f55c239b546ec822ed4" -> "sha256:69bf3a7ae3707331d338921f5b532b8851fbbd443e4be76dd59067805d652c4d" [label=""];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:983909f54632457c37f3653ada0f150083234650a83b20975682db4289ea75d2" [label=""];
  "sha256:69bf3a7ae3707331d338921f5b532b8851fbbd443e4be76dd59067805d652c4d" -> "sha256:983909f54632457c37f3653ada0f150083234650a83b20975682db4289ea75d2" [label=""];
  "sha256:983909f54632457c37f3653ada0f150083234650a83b20975682db4289ea75d2" -> "sha256:9735accd39016f4c50642a8a691ad07bfd33601fe6bf61f31405e1f2a4df4f64" [label=""];
  "sha256:69bf3a7ae3707331d338921f5b532b8851fbbd443e4be76dd59067805d652c4d" -> "sha256:9735accd39016f4c50642a8a691ad07bfd33601fe6bf61f31405e1f2a4df4f64" [label=""];
  "sha256:9735accd39016f4c50642a8a691ad07bfd33601fe6bf61f31405e1f2a4df4f64" -> "sha256:57ebdbb649d7bbd10c8378299a03e874172f7d470da3441c378a7811d3094411" [label=""];
  "sha256:69bf3a7ae3707331d338921f5b532b8851fbbd443e4be76dd59067805d652c4d" -> "sha256:57ebdbb649d7bbd10c8378299a03e874172f7d470da3441c378a7811d3094411" [label=""];
  "sha256:57ebdbb649d7bbd10c8378299a03e874172f7d470da3441c378a7811d3094411" -> "sha256:44b41c45ab4df2f616cd8a78853ee94de4db7964f65ba262b24ab2e8ad780036" [label=""];
  "sha256:69bf3a7ae3707331d338921f5b532b8851fbbd443e4be76dd59067805d652c4d" -> "sha256:44b41c45ab4df2f616cd8a78853ee94de4db7964f65ba262b24ab2e8ad780036" [label=""];
  "sha256:44b41c45ab4df2f616cd8a78853ee94de4db7964f65ba262b24ab2e8ad780036" -> "sha256:070ef475bc782eb5287c9b8d49e98ec594657d00c1842d93de873c748b40540a" [label=""];
  "sha256:69bf3a7ae3707331d338921f5b532b8851fbbd443e4be76dd59067805d652c4d" -> "sha256:070ef475bc782eb5287c9b8d49e98ec594657d00c1842d93de873c748b40540a" [label=""];
  "sha256:070ef475bc782eb5287c9b8d49e98ec594657d00c1842d93de873c748b40540a" -> "sha256:9549e79e52f68b03a7080f3ae2edfadf67ac0751d8abba0e0e7e582956b7a793" [label=""];
}

