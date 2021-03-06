[app/sources/278288304.Dockerfile]
digraph {
  "sha256:5afce64046e3aeb1081f217f2d57ec60e23a02e047881568eddb5209e9a729ff" [label="docker-image://docker.io/phusion/baseimage:latest" shape="ellipse"];
  "sha256:a9f69106401348aa414263ffaaa2d00ab62219227b8c8a037d5e0f9bb1d314de" [label="/bin/sh -c sed 's/main$/main universe/' -i /etc/apt/sources.list" shape="box"];
  "sha256:dcf8dfe2f28bc5c59d242a834dd2be58896a6feec9416ce0e0f3f1a2f9ad44ae" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:a6a6d1d269d7ccf42dbf9d5f2a0d9d05d3cbe8d240e03859c01874028c7a5f81" [label="/bin/sh -c apt-get install -y git" shape="box"];
  "sha256:8b2bdc62c1a31426d4e138311245f861ede2c1e6cc0ec0e37836fd0daca1ebcb" [label="/bin/sh -c apt-get install -y wget" shape="box"];
  "sha256:c3d82de104d490db72cebd3702aaa8a0c50bcc38ec5e85bae3ca916a53d07d37" [label="/bin/sh -c apt-get install -y mercurial" shape="box"];
  "sha256:4f2d1362c6ed92480ccf18e98afec40124a00db650d668e4dbadcc654b835075" [label="/bin/sh -c apt-get install -y build-essential" shape="box"];
  "sha256:f90a3172296813037589da6fd4191f60268148fecd9f89c2547e68ddcb4ebe17" [label="/bin/sh -c wget $PROTODOWNLOAD" shape="box"];
  "sha256:62d3dcefc9a30c3cc30173d7f0d9eaca2b36ab7a244da6720ebe1e495285641c" [label="/bin/sh -c tar xzvf protobuf-$PROTOVERSION.tar.gz" shape="box"];
  "sha256:1baa7dc5e779bdd446b019613f91925a3c93f32f4b8e1dbd2f6791ea28ff6e3b" [label="/bin/sh -c mv protobuf-$PROTOVERSION protobuf" shape="box"];
  "sha256:ff0a17de3386c4ffe5ad537069b1900a69d9016ad5150c87885bde048aabf0ca" [label="/bin/sh -c (cd protobuf && ./configure)" shape="box"];
  "sha256:afcc766db8c8ab491602ca547afecdfa9ce351014f5cc2f9ad2861439f21c515" [label="/bin/sh -c (cd protobuf && make)" shape="box"];
  "sha256:861c99a408edd5e0d06bfe680031454a44db40a970d74e43f64234f6f3644d3c" [label="/bin/sh -c (cd protobuf && make install)" shape="box"];
  "sha256:f02f56c8dae1833a3de55f54bc3880d59cd6b9e75718cf54434f7e3d0d17edca" [label="/bin/sh -c (cd protobuf && ldconfig)" shape="box"];
  "sha256:345f65c04793b491ece18ae3dbe74e5a356842e0ffac80d438300a033513ade8" [label="/bin/sh -c protoc --version || true" shape="box"];
  "sha256:213be520ddc55d535f97156832c91c6034b1de95951df2951eec564e0c6aa18d" [label="/bin/sh -c wget $GODOWNLOAD/$GOFILENAME" shape="box"];
  "sha256:948b58cea9d9e8bb7d330d317ee1076813d1faa6ecc250b2d4450c0d2e1d6e56" [label="/bin/sh -c tar -C / -xzf $GOFILENAME" shape="box"];
  "sha256:f74f5f8bd6143846466a1e68d3487fd4d38838b9581e15b795ef9164751854d0" [label="/bin/sh -c rm $GOFILENAME" shape="box"];
  "sha256:42541a0c98f1a86e461f37c763f7f01689a3c9a80d212dc4dc5c4f33fce6427a" [label="/bin/sh -c mkdir gopath" shape="box"];
  "sha256:8b27e54bf13013bb911637c6ba787faade6386db66f2a97eb5397996afa65906" [label="/bin/sh -c mkdir -p $GOPATH/src/github.com/gogo" shape="box"];
  "sha256:b2503218b6aa9d779f474f85b4c979d75c28d03b616b95d5250ff27604e2adf4" [label="/bin/sh -c mkdir -p $GOPATH/src/github.com/golang" shape="box"];
  "sha256:5f430cc41f746aff73e59517fabee0b29d5de7ccea2d5e961a84827437e406e4" [label="/bin/sh -c echo '#!/bin/bash' >> /test.sh" shape="box"];
  "sha256:bba5e4ff8b67db25927c7af791ed0d2d1fa4e5e51ac5deeca6c8be044cbdb71c" [label="/bin/sh -c echo 'set -xe' >> /test.sh" shape="box"];
  "sha256:4914a649b4bff70ef499a24d2c9608fcd1b68ce26a1dfa722f043ad003f44fdd" [label="/bin/sh -c echo 'go version' >> /test.sh" shape="box"];
  "sha256:07cd8d6abdf034ae34f3465a9daccc8512d0247976bacb9dfbab3359f0bf5b4a" [label="/bin/sh -c echo 'protoc --version || true' >> /test.sh" shape="box"];
  "sha256:c1f2a26d4c56d4cdf4ba6e292faa543ab85ba1db8e95f429d71420cad4ff9d11" [label="/bin/sh -c echo 'git clone https://github.com/gogo/protobuf $GOGOPROTOPATH' >> /test.sh" shape="box"];
  "sha256:c6096261aa466c00c84ac88e285922684be0c90f643c1fd199bff81a617f1879" [label="/bin/sh -c echo 'cd $GOGOPROTOPATH' >> /test.sh" shape="box"];
  "sha256:95b3bf6736f71a8555416c2a76328dd9b29b24983048300027d24b860f4f0f32" [label="/bin/sh -c echo 'make all' >> /test.sh" shape="box"];
  "sha256:5d37ed3a6d47727c87beb2ea02bb9b650d04503f1a2e8f2d336e048712926c7e" [label="/bin/sh -c echo 'git clone https://github.com/golang/protobuf $GOPROTOPATH' >> /test.sh" shape="box"];
  "sha256:31eb2ded0c1b35f8aa908d8a810021a6692aefbe4c5238f3a33c614fd858342c" [label="/bin/sh -c echo 'cd $GOPROTOPATH' >> /test.sh" shape="box"];
  "sha256:44cdfa401ec21b87dd6f3f2c4be6e1d008876251dc5b63c82c7b428ed9777a6f" [label="/bin/sh -c echo 'make' >> /test.sh" shape="box"];
  "sha256:43575b38d1b3ad7b1d8d0a8eb57febbf8d49427cbd621ddb6ca63c9110884356" [label="/bin/sh -c echo 'git clone https://github.com/gogo/harmonytests $GOGOTESTPATH' >> /test.sh" shape="box"];
  "sha256:00485247e930e7e0e4c661d84db039c5715b8c294ac912ae4d932d12bd5b5c25" [label="/bin/sh -c echo 'cd $GOGOTESTPATH' >> /test.sh" shape="box"];
  "sha256:271f6194c075b3efa7fb481394f82585e3caca3938ac0b35ea255ab193cccf47" [label="/bin/sh -c echo 'make regenerate' >> /test.sh" shape="box"];
  "sha256:ecc056855031b04eb288b5909ada36dea22222929dd85bbd77800d1c652e7f25" [label="/bin/sh -c echo 'make test' >> /test.sh" shape="box"];
  "sha256:888d174fae3208712dfbef6b768ebcce4d8bfec6e772c4a8c58844e1d13eeb69" [label="/bin/sh -c echo 'go version' >> /test.sh" shape="box"];
  "sha256:5c7e2d920ca1e1d803a5ab8f21ebc9eb769822c21ae2f40f35a0eb273d17dae4" [label="/bin/sh -c echo 'protoc --version || true' >> /test.sh" shape="box"];
  "sha256:eb2e0c92e6f133e701935f561ac0af872a71657abcea62e45269e7a141bd5613" [label="/bin/sh -c chmod +x /test.sh" shape="box"];
  "sha256:bcdc81326cf228e1f47e64d29581977ff62c2beb31a6af145acdec0a6b6aa209" [label="sha256:bcdc81326cf228e1f47e64d29581977ff62c2beb31a6af145acdec0a6b6aa209" shape="plaintext"];
  "sha256:5afce64046e3aeb1081f217f2d57ec60e23a02e047881568eddb5209e9a729ff" -> "sha256:a9f69106401348aa414263ffaaa2d00ab62219227b8c8a037d5e0f9bb1d314de" [label=""];
  "sha256:a9f69106401348aa414263ffaaa2d00ab62219227b8c8a037d5e0f9bb1d314de" -> "sha256:dcf8dfe2f28bc5c59d242a834dd2be58896a6feec9416ce0e0f3f1a2f9ad44ae" [label=""];
  "sha256:dcf8dfe2f28bc5c59d242a834dd2be58896a6feec9416ce0e0f3f1a2f9ad44ae" -> "sha256:a6a6d1d269d7ccf42dbf9d5f2a0d9d05d3cbe8d240e03859c01874028c7a5f81" [label=""];
  "sha256:a6a6d1d269d7ccf42dbf9d5f2a0d9d05d3cbe8d240e03859c01874028c7a5f81" -> "sha256:8b2bdc62c1a31426d4e138311245f861ede2c1e6cc0ec0e37836fd0daca1ebcb" [label=""];
  "sha256:8b2bdc62c1a31426d4e138311245f861ede2c1e6cc0ec0e37836fd0daca1ebcb" -> "sha256:c3d82de104d490db72cebd3702aaa8a0c50bcc38ec5e85bae3ca916a53d07d37" [label=""];
  "sha256:c3d82de104d490db72cebd3702aaa8a0c50bcc38ec5e85bae3ca916a53d07d37" -> "sha256:4f2d1362c6ed92480ccf18e98afec40124a00db650d668e4dbadcc654b835075" [label=""];
  "sha256:4f2d1362c6ed92480ccf18e98afec40124a00db650d668e4dbadcc654b835075" -> "sha256:f90a3172296813037589da6fd4191f60268148fecd9f89c2547e68ddcb4ebe17" [label=""];
  "sha256:f90a3172296813037589da6fd4191f60268148fecd9f89c2547e68ddcb4ebe17" -> "sha256:62d3dcefc9a30c3cc30173d7f0d9eaca2b36ab7a244da6720ebe1e495285641c" [label=""];
  "sha256:62d3dcefc9a30c3cc30173d7f0d9eaca2b36ab7a244da6720ebe1e495285641c" -> "sha256:1baa7dc5e779bdd446b019613f91925a3c93f32f4b8e1dbd2f6791ea28ff6e3b" [label=""];
  "sha256:1baa7dc5e779bdd446b019613f91925a3c93f32f4b8e1dbd2f6791ea28ff6e3b" -> "sha256:ff0a17de3386c4ffe5ad537069b1900a69d9016ad5150c87885bde048aabf0ca" [label=""];
  "sha256:ff0a17de3386c4ffe5ad537069b1900a69d9016ad5150c87885bde048aabf0ca" -> "sha256:afcc766db8c8ab491602ca547afecdfa9ce351014f5cc2f9ad2861439f21c515" [label=""];
  "sha256:afcc766db8c8ab491602ca547afecdfa9ce351014f5cc2f9ad2861439f21c515" -> "sha256:861c99a408edd5e0d06bfe680031454a44db40a970d74e43f64234f6f3644d3c" [label=""];
  "sha256:861c99a408edd5e0d06bfe680031454a44db40a970d74e43f64234f6f3644d3c" -> "sha256:f02f56c8dae1833a3de55f54bc3880d59cd6b9e75718cf54434f7e3d0d17edca" [label=""];
  "sha256:f02f56c8dae1833a3de55f54bc3880d59cd6b9e75718cf54434f7e3d0d17edca" -> "sha256:345f65c04793b491ece18ae3dbe74e5a356842e0ffac80d438300a033513ade8" [label=""];
  "sha256:345f65c04793b491ece18ae3dbe74e5a356842e0ffac80d438300a033513ade8" -> "sha256:213be520ddc55d535f97156832c91c6034b1de95951df2951eec564e0c6aa18d" [label=""];
  "sha256:213be520ddc55d535f97156832c91c6034b1de95951df2951eec564e0c6aa18d" -> "sha256:948b58cea9d9e8bb7d330d317ee1076813d1faa6ecc250b2d4450c0d2e1d6e56" [label=""];
  "sha256:948b58cea9d9e8bb7d330d317ee1076813d1faa6ecc250b2d4450c0d2e1d6e56" -> "sha256:f74f5f8bd6143846466a1e68d3487fd4d38838b9581e15b795ef9164751854d0" [label=""];
  "sha256:f74f5f8bd6143846466a1e68d3487fd4d38838b9581e15b795ef9164751854d0" -> "sha256:42541a0c98f1a86e461f37c763f7f01689a3c9a80d212dc4dc5c4f33fce6427a" [label=""];
  "sha256:42541a0c98f1a86e461f37c763f7f01689a3c9a80d212dc4dc5c4f33fce6427a" -> "sha256:8b27e54bf13013bb911637c6ba787faade6386db66f2a97eb5397996afa65906" [label=""];
  "sha256:8b27e54bf13013bb911637c6ba787faade6386db66f2a97eb5397996afa65906" -> "sha256:b2503218b6aa9d779f474f85b4c979d75c28d03b616b95d5250ff27604e2adf4" [label=""];
  "sha256:b2503218b6aa9d779f474f85b4c979d75c28d03b616b95d5250ff27604e2adf4" -> "sha256:5f430cc41f746aff73e59517fabee0b29d5de7ccea2d5e961a84827437e406e4" [label=""];
  "sha256:5f430cc41f746aff73e59517fabee0b29d5de7ccea2d5e961a84827437e406e4" -> "sha256:bba5e4ff8b67db25927c7af791ed0d2d1fa4e5e51ac5deeca6c8be044cbdb71c" [label=""];
  "sha256:bba5e4ff8b67db25927c7af791ed0d2d1fa4e5e51ac5deeca6c8be044cbdb71c" -> "sha256:4914a649b4bff70ef499a24d2c9608fcd1b68ce26a1dfa722f043ad003f44fdd" [label=""];
  "sha256:4914a649b4bff70ef499a24d2c9608fcd1b68ce26a1dfa722f043ad003f44fdd" -> "sha256:07cd8d6abdf034ae34f3465a9daccc8512d0247976bacb9dfbab3359f0bf5b4a" [label=""];
  "sha256:07cd8d6abdf034ae34f3465a9daccc8512d0247976bacb9dfbab3359f0bf5b4a" -> "sha256:c1f2a26d4c56d4cdf4ba6e292faa543ab85ba1db8e95f429d71420cad4ff9d11" [label=""];
  "sha256:c1f2a26d4c56d4cdf4ba6e292faa543ab85ba1db8e95f429d71420cad4ff9d11" -> "sha256:c6096261aa466c00c84ac88e285922684be0c90f643c1fd199bff81a617f1879" [label=""];
  "sha256:c6096261aa466c00c84ac88e285922684be0c90f643c1fd199bff81a617f1879" -> "sha256:95b3bf6736f71a8555416c2a76328dd9b29b24983048300027d24b860f4f0f32" [label=""];
  "sha256:95b3bf6736f71a8555416c2a76328dd9b29b24983048300027d24b860f4f0f32" -> "sha256:5d37ed3a6d47727c87beb2ea02bb9b650d04503f1a2e8f2d336e048712926c7e" [label=""];
  "sha256:5d37ed3a6d47727c87beb2ea02bb9b650d04503f1a2e8f2d336e048712926c7e" -> "sha256:31eb2ded0c1b35f8aa908d8a810021a6692aefbe4c5238f3a33c614fd858342c" [label=""];
  "sha256:31eb2ded0c1b35f8aa908d8a810021a6692aefbe4c5238f3a33c614fd858342c" -> "sha256:44cdfa401ec21b87dd6f3f2c4be6e1d008876251dc5b63c82c7b428ed9777a6f" [label=""];
  "sha256:44cdfa401ec21b87dd6f3f2c4be6e1d008876251dc5b63c82c7b428ed9777a6f" -> "sha256:43575b38d1b3ad7b1d8d0a8eb57febbf8d49427cbd621ddb6ca63c9110884356" [label=""];
  "sha256:43575b38d1b3ad7b1d8d0a8eb57febbf8d49427cbd621ddb6ca63c9110884356" -> "sha256:00485247e930e7e0e4c661d84db039c5715b8c294ac912ae4d932d12bd5b5c25" [label=""];
  "sha256:00485247e930e7e0e4c661d84db039c5715b8c294ac912ae4d932d12bd5b5c25" -> "sha256:271f6194c075b3efa7fb481394f82585e3caca3938ac0b35ea255ab193cccf47" [label=""];
  "sha256:271f6194c075b3efa7fb481394f82585e3caca3938ac0b35ea255ab193cccf47" -> "sha256:ecc056855031b04eb288b5909ada36dea22222929dd85bbd77800d1c652e7f25" [label=""];
  "sha256:ecc056855031b04eb288b5909ada36dea22222929dd85bbd77800d1c652e7f25" -> "sha256:888d174fae3208712dfbef6b768ebcce4d8bfec6e772c4a8c58844e1d13eeb69" [label=""];
  "sha256:888d174fae3208712dfbef6b768ebcce4d8bfec6e772c4a8c58844e1d13eeb69" -> "sha256:5c7e2d920ca1e1d803a5ab8f21ebc9eb769822c21ae2f40f35a0eb273d17dae4" [label=""];
  "sha256:5c7e2d920ca1e1d803a5ab8f21ebc9eb769822c21ae2f40f35a0eb273d17dae4" -> "sha256:eb2e0c92e6f133e701935f561ac0af872a71657abcea62e45269e7a141bd5613" [label=""];
  "sha256:eb2e0c92e6f133e701935f561ac0af872a71657abcea62e45269e7a141bd5613" -> "sha256:bcdc81326cf228e1f47e64d29581977ff62c2beb31a6af145acdec0a6b6aa209" [label=""];
}

