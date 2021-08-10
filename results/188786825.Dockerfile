[app/sources/188786825.Dockerfile]
digraph {
  "sha256:618e55ef464c19964a58afc30295c1b35e5fff50edacea1cb12c38c8a14c8828" [label="local://context" shape="ellipse"];
  "sha256:782f70bba4c595172cffca27bbee1ee004e158753f9634fdea2acf5d28fdc254" [label="docker-image://docker.io/library/node:argon" shape="ellipse"];
  "sha256:63f8ebbfc0ea10a396cd696d23e30090678823a3075af51f662c1c0c5fc36984" [label="/bin/sh -c npm upgrade -g npm" shape="box"];
  "sha256:04a0a48629774acbe305e40ed80ee7905656f9508a343d17cdec886628bf0f18" [label="/bin/sh -c npm install -g gulp" shape="box"];
  "sha256:5c3b9474b1c45dd76dd924c930821d110a0fd8dd6a1cb192a2b2ab5b95e2bb24" [label="/bin/sh -c mkdir -p /usr/src/vorlonjs" shape="box"];
  "sha256:c272de87b73ec4e8f44576a546fd32a5721f966da404caa3232ae3e054a0fec7" [label="copy{src=/, dest=/usr/src/vorlonjs/}" shape="note"];
  "sha256:a36329996b1a3f0097a6a41876f97317195acf1480425f79b89f4de194f8a911" [label="mkdir{path=/usr/src/vorlonjs}" shape="note"];
  "sha256:b4a7c9ac00c466c526a5c4c1290e8f7caeb344f3314a42a0b369c99c19bf727c" [label="/bin/sh -c npm install" shape="box"];
  "sha256:9be12595bebd75dc131550f944f6870db92d49c394fd66a07a0fc5c45bb89dd8" [label="/bin/sh -c gulp" shape="box"];
  "sha256:1ecc35a1a5ee94ce627d0c77a342f5741b5825c01532b7d5c990a9a2c5e96b9f" [label="sha256:1ecc35a1a5ee94ce627d0c77a342f5741b5825c01532b7d5c990a9a2c5e96b9f" shape="plaintext"];
  "sha256:782f70bba4c595172cffca27bbee1ee004e158753f9634fdea2acf5d28fdc254" -> "sha256:63f8ebbfc0ea10a396cd696d23e30090678823a3075af51f662c1c0c5fc36984" [label=""];
  "sha256:63f8ebbfc0ea10a396cd696d23e30090678823a3075af51f662c1c0c5fc36984" -> "sha256:04a0a48629774acbe305e40ed80ee7905656f9508a343d17cdec886628bf0f18" [label=""];
  "sha256:04a0a48629774acbe305e40ed80ee7905656f9508a343d17cdec886628bf0f18" -> "sha256:5c3b9474b1c45dd76dd924c930821d110a0fd8dd6a1cb192a2b2ab5b95e2bb24" [label=""];
  "sha256:5c3b9474b1c45dd76dd924c930821d110a0fd8dd6a1cb192a2b2ab5b95e2bb24" -> "sha256:c272de87b73ec4e8f44576a546fd32a5721f966da404caa3232ae3e054a0fec7" [label=""];
  "sha256:618e55ef464c19964a58afc30295c1b35e5fff50edacea1cb12c38c8a14c8828" -> "sha256:c272de87b73ec4e8f44576a546fd32a5721f966da404caa3232ae3e054a0fec7" [label=""];
  "sha256:c272de87b73ec4e8f44576a546fd32a5721f966da404caa3232ae3e054a0fec7" -> "sha256:a36329996b1a3f0097a6a41876f97317195acf1480425f79b89f4de194f8a911" [label=""];
  "sha256:a36329996b1a3f0097a6a41876f97317195acf1480425f79b89f4de194f8a911" -> "sha256:b4a7c9ac00c466c526a5c4c1290e8f7caeb344f3314a42a0b369c99c19bf727c" [label=""];
  "sha256:b4a7c9ac00c466c526a5c4c1290e8f7caeb344f3314a42a0b369c99c19bf727c" -> "sha256:9be12595bebd75dc131550f944f6870db92d49c394fd66a07a0fc5c45bb89dd8" [label=""];
  "sha256:9be12595bebd75dc131550f944f6870db92d49c394fd66a07a0fc5c45bb89dd8" -> "sha256:1ecc35a1a5ee94ce627d0c77a342f5741b5825c01532b7d5c990a9a2c5e96b9f" [label=""];
}

