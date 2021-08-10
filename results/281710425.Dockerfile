[app/sources/281710425.Dockerfile]
digraph {
  "sha256:a545a405eb70e4550b2cf39af36ab0c54cbbe8640d088cff02e344e4543129a1" [label="docker-image://docker.io/library/nginx:mainline-alpine" shape="ellipse"];
  "sha256:09803ca51ac72958128e946de950e91b6feb98b1a89cf16488d1a8cde997e8a1" [label="local://context" shape="ellipse"];
  "sha256:e6d9f63c91aa9711c58a501b6f14ab4c1bb998747c9513037a25a255b32246b6" [label="copy{src=/default.conf, dest=/etc/nginx/conf.d/}" shape="note"];
  "sha256:3e8137677e34d2cab1b6d462b0f6a269875411fb5193c4fa7821ffbd637222fe" [label="sha256:3e8137677e34d2cab1b6d462b0f6a269875411fb5193c4fa7821ffbd637222fe" shape="plaintext"];
  "sha256:a545a405eb70e4550b2cf39af36ab0c54cbbe8640d088cff02e344e4543129a1" -> "sha256:e6d9f63c91aa9711c58a501b6f14ab4c1bb998747c9513037a25a255b32246b6" [label=""];
  "sha256:09803ca51ac72958128e946de950e91b6feb98b1a89cf16488d1a8cde997e8a1" -> "sha256:e6d9f63c91aa9711c58a501b6f14ab4c1bb998747c9513037a25a255b32246b6" [label=""];
  "sha256:e6d9f63c91aa9711c58a501b6f14ab4c1bb998747c9513037a25a255b32246b6" -> "sha256:3e8137677e34d2cab1b6d462b0f6a269875411fb5193c4fa7821ffbd637222fe" [label=""];
}

