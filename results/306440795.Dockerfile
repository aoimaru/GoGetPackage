[app/sources/306440795.Dockerfile]
digraph {
  "sha256:5cb57ab6983fd374266c94e14e2f2ab4607cdaf67bdc857d41fbbb429429b9a6" [label="local://context" shape="ellipse"];
  "sha256:c0694a12da0719f63e91d60da5030b966d5d02c47e39961990be9e73cd9471b4" [label="docker-image://docker.io/library/node:8.10" shape="ellipse"];
  "sha256:79b3d449c1aa9c761649199f712c6768eb8a40c06493eb4e7ada2168ed250505" [label="/bin/sh -c mkdir /usr/src/cache" shape="box"];
  "sha256:9d0c359e67a824feb55988028c1aa01fa12e97f0740951994c0632fb710c72fc" [label="mkdir{path=/usr/src/cache}" shape="note"];
  "sha256:a22f78c6577dd98a8924745025e9015a7d83fcd70c115d9a6d8f86bbe73dd384" [label="copy{src=/package.json, dest=/usr/src/cache/}" shape="note"];
  "sha256:2cd33bcd191b1962e64421a91dd21665641ddc1b720aeb9e2c7b7a54454ac098" [label="copy{src=/package-lock.json, dest=/usr/src/cache/}" shape="note"];
  "sha256:2d1bbf0c1ffdfbfc60eb145e76c93192fb3324afb1728197134e908e8a150cfc" [label="/bin/sh -c npm install --production" shape="box"];
  "sha256:6ceb895d2ab8df65e66ac9341fe5effb03e70f8dad2940b34abab4a99d60153d" [label="/bin/sh -c mkdir /usr/src/app" shape="box"];
  "sha256:bb0390a0c24fe64d9e5f7bd4005c0dcc62bcfd46eb23bcfc3880f32ff9fa4d79" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:79ff801ae0378710af885bce54f49d189048bf9dc3db10ffbf6408da1b8b12d7" [label="sha256:79ff801ae0378710af885bce54f49d189048bf9dc3db10ffbf6408da1b8b12d7" shape="plaintext"];
  "sha256:c0694a12da0719f63e91d60da5030b966d5d02c47e39961990be9e73cd9471b4" -> "sha256:79b3d449c1aa9c761649199f712c6768eb8a40c06493eb4e7ada2168ed250505" [label=""];
  "sha256:79b3d449c1aa9c761649199f712c6768eb8a40c06493eb4e7ada2168ed250505" -> "sha256:9d0c359e67a824feb55988028c1aa01fa12e97f0740951994c0632fb710c72fc" [label=""];
  "sha256:9d0c359e67a824feb55988028c1aa01fa12e97f0740951994c0632fb710c72fc" -> "sha256:a22f78c6577dd98a8924745025e9015a7d83fcd70c115d9a6d8f86bbe73dd384" [label=""];
  "sha256:5cb57ab6983fd374266c94e14e2f2ab4607cdaf67bdc857d41fbbb429429b9a6" -> "sha256:a22f78c6577dd98a8924745025e9015a7d83fcd70c115d9a6d8f86bbe73dd384" [label=""];
  "sha256:a22f78c6577dd98a8924745025e9015a7d83fcd70c115d9a6d8f86bbe73dd384" -> "sha256:2cd33bcd191b1962e64421a91dd21665641ddc1b720aeb9e2c7b7a54454ac098" [label=""];
  "sha256:5cb57ab6983fd374266c94e14e2f2ab4607cdaf67bdc857d41fbbb429429b9a6" -> "sha256:2cd33bcd191b1962e64421a91dd21665641ddc1b720aeb9e2c7b7a54454ac098" [label=""];
  "sha256:2cd33bcd191b1962e64421a91dd21665641ddc1b720aeb9e2c7b7a54454ac098" -> "sha256:2d1bbf0c1ffdfbfc60eb145e76c93192fb3324afb1728197134e908e8a150cfc" [label=""];
  "sha256:2d1bbf0c1ffdfbfc60eb145e76c93192fb3324afb1728197134e908e8a150cfc" -> "sha256:6ceb895d2ab8df65e66ac9341fe5effb03e70f8dad2940b34abab4a99d60153d" [label=""];
  "sha256:6ceb895d2ab8df65e66ac9341fe5effb03e70f8dad2940b34abab4a99d60153d" -> "sha256:bb0390a0c24fe64d9e5f7bd4005c0dcc62bcfd46eb23bcfc3880f32ff9fa4d79" [label=""];
  "sha256:bb0390a0c24fe64d9e5f7bd4005c0dcc62bcfd46eb23bcfc3880f32ff9fa4d79" -> "sha256:79ff801ae0378710af885bce54f49d189048bf9dc3db10ffbf6408da1b8b12d7" [label=""];
}

