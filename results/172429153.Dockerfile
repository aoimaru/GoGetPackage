[app/sources/172429153.Dockerfile]
digraph {
  "sha256:ab6c85a225cbb5b90c385a9e28595269348c66b9a782c5cff30641aa85d63ac9" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:e42f70423f2615168fd0a0deb50d75ff2026021de06b64505d0e187ac00a351e" [label="copy{src=/scripts/cross-apt-packages.sh, dest=/scripts/}" shape="note"];
  "sha256:39021a74a708a9401c6086858edadd8585d77463d97673672fdccd19060c79ce" [label="/bin/sh -c sh /scripts/cross-apt-packages.sh" shape="box"];
  "sha256:b633b427f332823565b175b31491f76c9dbdbcec80887205e94332b1ddaa3819" [label="copy{src=/scripts/make3.sh, dest=/scripts/}" shape="note"];
  "sha256:264fa6c88e47d8e8e84b720ab9845a09e013fe965666b6ef474eab3329b61837" [label="/bin/sh -c sh /scripts/make3.sh" shape="box"];
  "sha256:22cb87aad8fa2b55f40fcc47f426ea8e3b7bb5ad13bc9c7ed8dc1370852371b2" [label="copy{src=/scripts/crosstool-ng.sh, dest=/scripts/}" shape="note"];
  "sha256:ce9e004a91157ad5f29fdebd78aecb691fb202794f08a7dfcfed3b4e556f0c9a" [label="/bin/sh -c sh /scripts/crosstool-ng.sh" shape="box"];
  "sha256:a23e251db11a4626925e087403b6fcc4712a1b984de3e38dbd1e0c56da9b68fd" [label="copy{src=/scripts/rustbuild-setup.sh, dest=/scripts/}" shape="note"];
  "sha256:80faeb0a3023e9894936df55c253e0daf5498c9dfc9cdbb56333126c3513d04c" [label="/bin/sh -c sh /scripts/rustbuild-setup.sh" shape="box"];
  "sha256:0e7086f91a40c61eb5ba7d70c21de9724d03a67218ed2a43319abfa72182d1c2" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:a2ac6c10cbcac3cf613c746c64f06312fa1619ef34ee294561d32ac6105049fe" [label="copy{src=/dist-powerpc64-linux/patches, dest=/tmp/patches/}" shape="note"];
  "sha256:686a0a7714882d8b974f4e082c4acc7479e307023dd758a0569ba3b217f6797f" [label="copy{src=/dist-powerpc64-linux/shared.sh, dest=/tmp/},copy{src=/dist-powerpc64-linux/powerpc64-linux-gnu.config, dest=/tmp/},copy{src=/dist-powerpc64-linux/build-powerpc64-toolchain.sh, dest=/tmp/}" shape="note"];
  "sha256:fb946cb098fe3b743cfe04cef1acc0d7d287eeed1230894523dc18d266f2452d" [label="/bin/sh -c ./build-powerpc64-toolchain.sh" shape="box"];
  "sha256:262dcdd6a6bdd4fc3a31f22ec3c41ada5b7e84afd909ca11b528dd7bbb643e48" [label="copy{src=/scripts/sccache.sh, dest=/scripts/}" shape="note"];
  "sha256:d7fbde1fea5866addfb2ee836fa5ef5293ae7c079d2d36a86b9ab394903af6f6" [label="/bin/sh -c sh /scripts/sccache.sh" shape="box"];
  "sha256:5c1137d705b6dc621eb99eee2fd595bd2cee436bfedad2a9e8c086f6fc60a9bf" [label="sha256:5c1137d705b6dc621eb99eee2fd595bd2cee436bfedad2a9e8c086f6fc60a9bf" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:e42f70423f2615168fd0a0deb50d75ff2026021de06b64505d0e187ac00a351e" [label=""];
  "sha256:ab6c85a225cbb5b90c385a9e28595269348c66b9a782c5cff30641aa85d63ac9" -> "sha256:e42f70423f2615168fd0a0deb50d75ff2026021de06b64505d0e187ac00a351e" [label=""];
  "sha256:e42f70423f2615168fd0a0deb50d75ff2026021de06b64505d0e187ac00a351e" -> "sha256:39021a74a708a9401c6086858edadd8585d77463d97673672fdccd19060c79ce" [label=""];
  "sha256:39021a74a708a9401c6086858edadd8585d77463d97673672fdccd19060c79ce" -> "sha256:b633b427f332823565b175b31491f76c9dbdbcec80887205e94332b1ddaa3819" [label=""];
  "sha256:ab6c85a225cbb5b90c385a9e28595269348c66b9a782c5cff30641aa85d63ac9" -> "sha256:b633b427f332823565b175b31491f76c9dbdbcec80887205e94332b1ddaa3819" [label=""];
  "sha256:b633b427f332823565b175b31491f76c9dbdbcec80887205e94332b1ddaa3819" -> "sha256:264fa6c88e47d8e8e84b720ab9845a09e013fe965666b6ef474eab3329b61837" [label=""];
  "sha256:264fa6c88e47d8e8e84b720ab9845a09e013fe965666b6ef474eab3329b61837" -> "sha256:22cb87aad8fa2b55f40fcc47f426ea8e3b7bb5ad13bc9c7ed8dc1370852371b2" [label=""];
  "sha256:ab6c85a225cbb5b90c385a9e28595269348c66b9a782c5cff30641aa85d63ac9" -> "sha256:22cb87aad8fa2b55f40fcc47f426ea8e3b7bb5ad13bc9c7ed8dc1370852371b2" [label=""];
  "sha256:22cb87aad8fa2b55f40fcc47f426ea8e3b7bb5ad13bc9c7ed8dc1370852371b2" -> "sha256:ce9e004a91157ad5f29fdebd78aecb691fb202794f08a7dfcfed3b4e556f0c9a" [label=""];
  "sha256:ce9e004a91157ad5f29fdebd78aecb691fb202794f08a7dfcfed3b4e556f0c9a" -> "sha256:a23e251db11a4626925e087403b6fcc4712a1b984de3e38dbd1e0c56da9b68fd" [label=""];
  "sha256:ab6c85a225cbb5b90c385a9e28595269348c66b9a782c5cff30641aa85d63ac9" -> "sha256:a23e251db11a4626925e087403b6fcc4712a1b984de3e38dbd1e0c56da9b68fd" [label=""];
  "sha256:a23e251db11a4626925e087403b6fcc4712a1b984de3e38dbd1e0c56da9b68fd" -> "sha256:80faeb0a3023e9894936df55c253e0daf5498c9dfc9cdbb56333126c3513d04c" [label=""];
  "sha256:80faeb0a3023e9894936df55c253e0daf5498c9dfc9cdbb56333126c3513d04c" -> "sha256:0e7086f91a40c61eb5ba7d70c21de9724d03a67218ed2a43319abfa72182d1c2" [label=""];
  "sha256:0e7086f91a40c61eb5ba7d70c21de9724d03a67218ed2a43319abfa72182d1c2" -> "sha256:a2ac6c10cbcac3cf613c746c64f06312fa1619ef34ee294561d32ac6105049fe" [label=""];
  "sha256:ab6c85a225cbb5b90c385a9e28595269348c66b9a782c5cff30641aa85d63ac9" -> "sha256:a2ac6c10cbcac3cf613c746c64f06312fa1619ef34ee294561d32ac6105049fe" [label=""];
  "sha256:a2ac6c10cbcac3cf613c746c64f06312fa1619ef34ee294561d32ac6105049fe" -> "sha256:686a0a7714882d8b974f4e082c4acc7479e307023dd758a0569ba3b217f6797f" [label=""];
  "sha256:ab6c85a225cbb5b90c385a9e28595269348c66b9a782c5cff30641aa85d63ac9" -> "sha256:686a0a7714882d8b974f4e082c4acc7479e307023dd758a0569ba3b217f6797f" [label=""];
  "sha256:686a0a7714882d8b974f4e082c4acc7479e307023dd758a0569ba3b217f6797f" -> "sha256:fb946cb098fe3b743cfe04cef1acc0d7d287eeed1230894523dc18d266f2452d" [label=""];
  "sha256:fb946cb098fe3b743cfe04cef1acc0d7d287eeed1230894523dc18d266f2452d" -> "sha256:262dcdd6a6bdd4fc3a31f22ec3c41ada5b7e84afd909ca11b528dd7bbb643e48" [label=""];
  "sha256:ab6c85a225cbb5b90c385a9e28595269348c66b9a782c5cff30641aa85d63ac9" -> "sha256:262dcdd6a6bdd4fc3a31f22ec3c41ada5b7e84afd909ca11b528dd7bbb643e48" [label=""];
  "sha256:262dcdd6a6bdd4fc3a31f22ec3c41ada5b7e84afd909ca11b528dd7bbb643e48" -> "sha256:d7fbde1fea5866addfb2ee836fa5ef5293ae7c079d2d36a86b9ab394903af6f6" [label=""];
  "sha256:d7fbde1fea5866addfb2ee836fa5ef5293ae7c079d2d36a86b9ab394903af6f6" -> "sha256:5c1137d705b6dc621eb99eee2fd595bd2cee436bfedad2a9e8c086f6fc60a9bf" [label=""];
}

