[app/sources/313356063.Dockerfile]
digraph {
  "sha256:00204933b0935d18838d53edffe0b75d6faa0d720d8d82bf8f535ff9179e1cd2" [label="docker-image://docker.io/library/swift:4" shape="ellipse"];
  "sha256:8ecf49aa2770266a605b52b1ca634474c4464e2e538a81689c9777cb74410c21" [label="mkdir{path=/code}" shape="note"];
  "sha256:ca249322cbd697197b4ef3f9c08f654ee9f54f48251d448289f20e7fd080ed85" [label="local://context" shape="ellipse"];
  "sha256:c34b06e50609019eb1c95b12d3e485ae4e467a2046c73008f2b8855b2506f07c" [label="copy{src=/Package.swift, dest=/code/Package.swift}" shape="note"];
  "sha256:c44b2988f4e9e178e849d087a600cb3a61fdcd8825c1e542efe43f8ca2ed3c7b" [label="copy{src=/Sources, dest=/code/Sources}" shape="note"];
  "sha256:bf54db0c8fd4ddf6ebd57ad3f9148cc531fd72208e6589aba07a143eb12e5f15" [label="copy{src=/Tests, dest=/code/Tests}" shape="note"];
  "sha256:e6475e0f94bbb2d04c752aca364d228d576e014ce07559fb7964461da121a5c0" [label="/bin/sh -c swift --version" shape="box"];
  "sha256:f49c803c2e1135faca8bafa615c8f091ee91a52134f6ce3f35677fb54341e798" [label="/bin/sh -c swift build" shape="box"];
  "sha256:ae4ce75d1e3b88c3427b02aa707ec8411da1e51116f2bb10ff6d3af1eefeec62" [label="sha256:ae4ce75d1e3b88c3427b02aa707ec8411da1e51116f2bb10ff6d3af1eefeec62" shape="plaintext"];
  "sha256:00204933b0935d18838d53edffe0b75d6faa0d720d8d82bf8f535ff9179e1cd2" -> "sha256:8ecf49aa2770266a605b52b1ca634474c4464e2e538a81689c9777cb74410c21" [label=""];
  "sha256:8ecf49aa2770266a605b52b1ca634474c4464e2e538a81689c9777cb74410c21" -> "sha256:c34b06e50609019eb1c95b12d3e485ae4e467a2046c73008f2b8855b2506f07c" [label=""];
  "sha256:ca249322cbd697197b4ef3f9c08f654ee9f54f48251d448289f20e7fd080ed85" -> "sha256:c34b06e50609019eb1c95b12d3e485ae4e467a2046c73008f2b8855b2506f07c" [label=""];
  "sha256:c34b06e50609019eb1c95b12d3e485ae4e467a2046c73008f2b8855b2506f07c" -> "sha256:c44b2988f4e9e178e849d087a600cb3a61fdcd8825c1e542efe43f8ca2ed3c7b" [label=""];
  "sha256:ca249322cbd697197b4ef3f9c08f654ee9f54f48251d448289f20e7fd080ed85" -> "sha256:c44b2988f4e9e178e849d087a600cb3a61fdcd8825c1e542efe43f8ca2ed3c7b" [label=""];
  "sha256:c44b2988f4e9e178e849d087a600cb3a61fdcd8825c1e542efe43f8ca2ed3c7b" -> "sha256:bf54db0c8fd4ddf6ebd57ad3f9148cc531fd72208e6589aba07a143eb12e5f15" [label=""];
  "sha256:ca249322cbd697197b4ef3f9c08f654ee9f54f48251d448289f20e7fd080ed85" -> "sha256:bf54db0c8fd4ddf6ebd57ad3f9148cc531fd72208e6589aba07a143eb12e5f15" [label=""];
  "sha256:bf54db0c8fd4ddf6ebd57ad3f9148cc531fd72208e6589aba07a143eb12e5f15" -> "sha256:e6475e0f94bbb2d04c752aca364d228d576e014ce07559fb7964461da121a5c0" [label=""];
  "sha256:e6475e0f94bbb2d04c752aca364d228d576e014ce07559fb7964461da121a5c0" -> "sha256:f49c803c2e1135faca8bafa615c8f091ee91a52134f6ce3f35677fb54341e798" [label=""];
  "sha256:f49c803c2e1135faca8bafa615c8f091ee91a52134f6ce3f35677fb54341e798" -> "sha256:ae4ce75d1e3b88c3427b02aa707ec8411da1e51116f2bb10ff6d3af1eefeec62" [label=""];
}

