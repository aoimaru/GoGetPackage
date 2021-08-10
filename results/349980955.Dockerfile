[app/sources/349980955.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:a9e87bfbb5d1f0f94449698c649ab675b47b11b6c15fab767cb38a90e960b02a" [label="/bin/sh -c apt-get update && apt-get install pkg-config autoconf libtool -y" shape="box"];
  "sha256:28b981057d1c60d4dbdbad9e34275992ce4415133e0c7a75573276a81910af40" [label="/bin/sh -c cd /tmp && git clone https://github.com/bitcoin/secp256k1.git && cd secp256k1/" shape="box"];
  "sha256:78a063f13eea2c88d8323ae56635e581d9c2924fb04413147861e95e25d3bb90" [label="mkdir{path=/tmp/secp256k1}" shape="note"];
  "sha256:e6dc1448d34758e8812a3db8e61812e8b9c6c7fe49d4732dbb21b30fadfe0db7" [label="/bin/sh -c ./autogen.sh" shape="box"];
  "sha256:5c1fcb3d496ea528f1a23a3274192116daac3cfdc814bb63b69f10d2ce0a15d1" [label="/bin/sh -c ./configure --enable-module-recovery" shape="box"];
  "sha256:4efad0094ecc4b9cbb869ff92c3a310a4ba1968a89dac63881a4686c414c683a" [label="/bin/sh -c make" shape="box"];
  "sha256:5c64d75cb46cb53b6c63501d7c2fcfc45bc646fd410b6548cf9078a92a9933e3" [label="/bin/sh -c ./tests" shape="box"];
  "sha256:e7ed06dae0d3dcf3c391bc84bf72145f8c266bacdd6fbb084aa222762507fc25" [label="/bin/sh -c make install" shape="box"];
  "sha256:0b4c151b9e46a20af7c0d80f71fc2d2f286ca442600785666b33e321240be9d6" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:67996c01be7c821efceb29fabd276d370e840565d77c6638aaf68c5a8517f10a" [label="/bin/sh -c apt-get install libtool libboost1.55-all-dev -y" shape="box"];
  "sha256:eeaeb1b37ebd446dbf054cb60dc11353d86bc04c78c827a309ca03e1ff6597a0" [label="/bin/sh -c git clone https://github.com/libbitcoin/libbitcoin-consensus.git" shape="box"];
  "sha256:e5890a5fc659270a9611f261cddbfdec8673cb4d0fdd688bed7321b96b6bf1f0" [label="mkdir{path=/tmp/libbitcoin-consensus}" shape="note"];
  "sha256:c6951756196dcd0b317a124cef50e7324682076b4423ac988af6509d66b26845" [label="/bin/sh -c ./autogen.sh" shape="box"];
  "sha256:ac915c59b830c0d21e65a84c3fc51b7e106a9a928b02f48c4a472085b641f87b" [label="/bin/sh -c ./configure" shape="box"];
  "sha256:6bc18b1d81061c4b13a8e78557a148d7cb86bdaaf72ef202a1d847f39c00c1fc" [label="/bin/sh -c make" shape="box"];
  "sha256:6a5cb42411703c482ba46cb8593c80c2f8dc7791724f17d19c3cf2eb39b46ece" [label="/bin/sh -c make install" shape="box"];
  "sha256:2821f85ad1813c1eb78065de8646ed3fb079558e36f824161dcf4132bee11fff" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:b2f13c5961854edf5a79534aedd07d4d8dc51c6135836d07a81f0778138c648d" [label="/bin/sh -c apt-get install libpcre3-dev -y" shape="box"];
  "sha256:534e5cc5efe6b72e7553a8df88198b9c836d283ad14e79a6e4b2e46587026837" [label="/bin/sh -c wget http://prdownloads.sourceforge.net/swig/swig-3.0.8.tar.gz && tar xvf swig-3.0.8.tar.gz" shape="box"];
  "sha256:8ca41865bf9b63c44908d702a35bbec5c41ef3f26af2d1d873dacf2ddab6eca6" [label="mkdir{path=/tmp/swig-3.0.8}" shape="note"];
  "sha256:50073aa8696d5b4c8b461314e34afacd3425f164127c626947c6b98801c845f7" [label="/bin/sh -c ./autogen.sh" shape="box"];
  "sha256:fc64103181cc27f797636ce6044a68efb01ee24ec81d11f7f9b9cf298aef122f" [label="/bin/sh -c ./configure" shape="box"];
  "sha256:7d26e15190e33e40d7226a4f26fb8a124bdd6bfa93013625085bd78b85a1076a" [label="/bin/sh -c make" shape="box"];
  "sha256:845b4adae909e902855de28b5a10be27562cda66ede58804ca4819244d870a31" [label="/bin/sh -c make install" shape="box"];
  "sha256:efc2008e14115ef2bcaa4f18759d4a45de92abf6f07fac85ecff7127129db455" [label="/bin/sh -c apt-get install g++-multilib -y" shape="box"];
  "sha256:7c781211316b6dca7784311d38f5d154773b1f143520d28567c45fa6810ae6c4" [label="sha256:7c781211316b6dca7784311d38f5d154773b1f143520d28567c45fa6810ae6c4" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:a9e87bfbb5d1f0f94449698c649ab675b47b11b6c15fab767cb38a90e960b02a" [label=""];
  "sha256:a9e87bfbb5d1f0f94449698c649ab675b47b11b6c15fab767cb38a90e960b02a" -> "sha256:28b981057d1c60d4dbdbad9e34275992ce4415133e0c7a75573276a81910af40" [label=""];
  "sha256:28b981057d1c60d4dbdbad9e34275992ce4415133e0c7a75573276a81910af40" -> "sha256:78a063f13eea2c88d8323ae56635e581d9c2924fb04413147861e95e25d3bb90" [label=""];
  "sha256:78a063f13eea2c88d8323ae56635e581d9c2924fb04413147861e95e25d3bb90" -> "sha256:e6dc1448d34758e8812a3db8e61812e8b9c6c7fe49d4732dbb21b30fadfe0db7" [label=""];
  "sha256:e6dc1448d34758e8812a3db8e61812e8b9c6c7fe49d4732dbb21b30fadfe0db7" -> "sha256:5c1fcb3d496ea528f1a23a3274192116daac3cfdc814bb63b69f10d2ce0a15d1" [label=""];
  "sha256:5c1fcb3d496ea528f1a23a3274192116daac3cfdc814bb63b69f10d2ce0a15d1" -> "sha256:4efad0094ecc4b9cbb869ff92c3a310a4ba1968a89dac63881a4686c414c683a" [label=""];
  "sha256:4efad0094ecc4b9cbb869ff92c3a310a4ba1968a89dac63881a4686c414c683a" -> "sha256:5c64d75cb46cb53b6c63501d7c2fcfc45bc646fd410b6548cf9078a92a9933e3" [label=""];
  "sha256:5c64d75cb46cb53b6c63501d7c2fcfc45bc646fd410b6548cf9078a92a9933e3" -> "sha256:e7ed06dae0d3dcf3c391bc84bf72145f8c266bacdd6fbb084aa222762507fc25" [label=""];
  "sha256:e7ed06dae0d3dcf3c391bc84bf72145f8c266bacdd6fbb084aa222762507fc25" -> "sha256:0b4c151b9e46a20af7c0d80f71fc2d2f286ca442600785666b33e321240be9d6" [label=""];
  "sha256:0b4c151b9e46a20af7c0d80f71fc2d2f286ca442600785666b33e321240be9d6" -> "sha256:67996c01be7c821efceb29fabd276d370e840565d77c6638aaf68c5a8517f10a" [label=""];
  "sha256:67996c01be7c821efceb29fabd276d370e840565d77c6638aaf68c5a8517f10a" -> "sha256:eeaeb1b37ebd446dbf054cb60dc11353d86bc04c78c827a309ca03e1ff6597a0" [label=""];
  "sha256:eeaeb1b37ebd446dbf054cb60dc11353d86bc04c78c827a309ca03e1ff6597a0" -> "sha256:e5890a5fc659270a9611f261cddbfdec8673cb4d0fdd688bed7321b96b6bf1f0" [label=""];
  "sha256:e5890a5fc659270a9611f261cddbfdec8673cb4d0fdd688bed7321b96b6bf1f0" -> "sha256:c6951756196dcd0b317a124cef50e7324682076b4423ac988af6509d66b26845" [label=""];
  "sha256:c6951756196dcd0b317a124cef50e7324682076b4423ac988af6509d66b26845" -> "sha256:ac915c59b830c0d21e65a84c3fc51b7e106a9a928b02f48c4a472085b641f87b" [label=""];
  "sha256:ac915c59b830c0d21e65a84c3fc51b7e106a9a928b02f48c4a472085b641f87b" -> "sha256:6bc18b1d81061c4b13a8e78557a148d7cb86bdaaf72ef202a1d847f39c00c1fc" [label=""];
  "sha256:6bc18b1d81061c4b13a8e78557a148d7cb86bdaaf72ef202a1d847f39c00c1fc" -> "sha256:6a5cb42411703c482ba46cb8593c80c2f8dc7791724f17d19c3cf2eb39b46ece" [label=""];
  "sha256:6a5cb42411703c482ba46cb8593c80c2f8dc7791724f17d19c3cf2eb39b46ece" -> "sha256:2821f85ad1813c1eb78065de8646ed3fb079558e36f824161dcf4132bee11fff" [label=""];
  "sha256:2821f85ad1813c1eb78065de8646ed3fb079558e36f824161dcf4132bee11fff" -> "sha256:b2f13c5961854edf5a79534aedd07d4d8dc51c6135836d07a81f0778138c648d" [label=""];
  "sha256:b2f13c5961854edf5a79534aedd07d4d8dc51c6135836d07a81f0778138c648d" -> "sha256:534e5cc5efe6b72e7553a8df88198b9c836d283ad14e79a6e4b2e46587026837" [label=""];
  "sha256:534e5cc5efe6b72e7553a8df88198b9c836d283ad14e79a6e4b2e46587026837" -> "sha256:8ca41865bf9b63c44908d702a35bbec5c41ef3f26af2d1d873dacf2ddab6eca6" [label=""];
  "sha256:8ca41865bf9b63c44908d702a35bbec5c41ef3f26af2d1d873dacf2ddab6eca6" -> "sha256:50073aa8696d5b4c8b461314e34afacd3425f164127c626947c6b98801c845f7" [label=""];
  "sha256:50073aa8696d5b4c8b461314e34afacd3425f164127c626947c6b98801c845f7" -> "sha256:fc64103181cc27f797636ce6044a68efb01ee24ec81d11f7f9b9cf298aef122f" [label=""];
  "sha256:fc64103181cc27f797636ce6044a68efb01ee24ec81d11f7f9b9cf298aef122f" -> "sha256:7d26e15190e33e40d7226a4f26fb8a124bdd6bfa93013625085bd78b85a1076a" [label=""];
  "sha256:7d26e15190e33e40d7226a4f26fb8a124bdd6bfa93013625085bd78b85a1076a" -> "sha256:845b4adae909e902855de28b5a10be27562cda66ede58804ca4819244d870a31" [label=""];
  "sha256:845b4adae909e902855de28b5a10be27562cda66ede58804ca4819244d870a31" -> "sha256:efc2008e14115ef2bcaa4f18759d4a45de92abf6f07fac85ecff7127129db455" [label=""];
  "sha256:efc2008e14115ef2bcaa4f18759d4a45de92abf6f07fac85ecff7127129db455" -> "sha256:7c781211316b6dca7784311d38f5d154773b1f143520d28567c45fa6810ae6c4" [label=""];
}
