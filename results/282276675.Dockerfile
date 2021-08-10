[app/sources/282276675.Dockerfile]
digraph {
  "sha256:0359bae902fdf63726fa5c66ce3fec19e3f664eb643ee46d4b9cf9e7a0aaec0e" [label="docker-image://docker.io/dockerwest/php:5.6" shape="ellipse"];
  "sha256:2be45195ca96b4620370dfe359d12f5bb57fe82bd52fc4895443356aabf2a0a4" [label="local://context" shape="ellipse"];
  "sha256:e03ed208731774852e8d4b3e8f3032f4abcdb801428cd2dc8d52efeb405162c0" [label="copy{src=/scripts, dest=/}" shape="note"];
  "sha256:f6b3b7fa8bbbe9540e2268a597011983a9842a2c69f2d6d8be7d519143da4c59" [label="/bin/sh -c /install.sh && rm /install*" shape="box"];
  "sha256:b30b6cf4ed4968e05d5a1d3bf91f736c7bb63a24f3784ff6ce08e9a16e6e917a" [label="sha256:b30b6cf4ed4968e05d5a1d3bf91f736c7bb63a24f3784ff6ce08e9a16e6e917a" shape="plaintext"];
  "sha256:0359bae902fdf63726fa5c66ce3fec19e3f664eb643ee46d4b9cf9e7a0aaec0e" -> "sha256:e03ed208731774852e8d4b3e8f3032f4abcdb801428cd2dc8d52efeb405162c0" [label=""];
  "sha256:2be45195ca96b4620370dfe359d12f5bb57fe82bd52fc4895443356aabf2a0a4" -> "sha256:e03ed208731774852e8d4b3e8f3032f4abcdb801428cd2dc8d52efeb405162c0" [label=""];
  "sha256:e03ed208731774852e8d4b3e8f3032f4abcdb801428cd2dc8d52efeb405162c0" -> "sha256:f6b3b7fa8bbbe9540e2268a597011983a9842a2c69f2d6d8be7d519143da4c59" [label=""];
  "sha256:f6b3b7fa8bbbe9540e2268a597011983a9842a2c69f2d6d8be7d519143da4c59" -> "sha256:b30b6cf4ed4968e05d5a1d3bf91f736c7bb63a24f3784ff6ce08e9a16e6e917a" [label=""];
}

