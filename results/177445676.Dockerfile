[app/sources/177445676.Dockerfile]
digraph {
  "sha256:fb3e9c548cad755dbe6b51d5ae04ace1f38638b4a3df691e7d4c3e9acad303eb" [label="docker-image://docker.io/library/ubuntu:trusty@sha256:43cb19408de1e0ecf3ba5b5372ec98978963d6d0be42d0ad825e77a3bd16b5f7" shape="ellipse"];
  "sha256:3feb0776a2f964a447456f4742d69a2e953566b08567f2a5f5f3ef155a7b3b91" [label="/bin/sh -c apt-get update &&     apt-get upgrade -y &&     apt-get install -y git-core build-essential wget" shape="box"];
  "sha256:00f99983274077f97cdf60cb25be26a687e4c9d131e98d2844ef1d1ca26e0167" [label="/bin/sh -c apt-get install -y --no-install-recommends        autotools-dev libtool pkg-config zlib1g-dev        libcunit1-dev libssl-dev libxml2-dev libevent-dev        automake autoconf" shape="box"];
  "sha256:71699e42da2a37dc1ae86e9309e29797225dd440f3ae2705e399dfb4e5abe793" [label="/bin/sh -c apt-get install -y --no-install-recommends make binutils         autoconf automake autotools-dev         libtool pkg-config zlib1g-dev libcunit1-dev libssl-dev libxml2-dev         libev-dev libevent-dev libjansson-dev libjemalloc-dev         cython python3.4-dev python-setuptools" shape="box"];
  "sha256:6e7df74750534b310da566dac65028b74e63cf0c844bfed569e6233edff57711" [label="/bin/sh -c cd /root && git clone https://github.com/tatsuhiro-t/nghttp2.git" shape="box"];
  "sha256:49822dfe216fd1384ebafacefaa1df4d909277f59b92d9be7cd9e9fd47b1898d" [label="mkdir{path=/root/nghttp2}" shape="note"];
  "sha256:7ccfb25bf49cdcf8aebe4dfb6065bade258ce6e38260ae45f0e5f9f92fdccd4f" [label="/bin/sh -c git reset --hard $NGHTTP2_VER" shape="box"];
  "sha256:3023de8ec4fdbc0504115e3befdb8face0a751f3ce1db4c0fa3cd93431d7f845" [label="/bin/sh -c autoreconf -i" shape="box"];
  "sha256:7cf4711896a000f4865f05b878960f957403c7c6d6caaa6029e640b1d6a091e0" [label="/bin/sh -c automake" shape="box"];
  "sha256:10ba706b8c232fe9ce8f7c18594ddba8e67448142390623b77860bbeda0a0d43" [label="/bin/sh -c autoconf" shape="box"];
  "sha256:29c3f0e40e07fbecc45c3e8c4d51fdebb997fdccc179d813055b3d6b9bba2bb0" [label="/bin/sh -c ./configure" shape="box"];
  "sha256:c151fb2d485d4242138f5caef161c65e73ac9c621be68401f05c6311242a4746" [label="/bin/sh -c make" shape="box"];
  "sha256:1cf737cae3a15f3e27dfcb46c9893ff86ec9201cb2b63132938126e374721103" [label="/bin/sh -c make install" shape="box"];
  "sha256:9f2c2806eefae75e821d8576aae9ca60092e755f35593ec8adfaaf1fa17349b7" [label="mkdir{path=/root}" shape="note"];
  "sha256:8d207cf4097219e1d82c9b54dd8c8f2ee4cb8749ece29dcf1ba62ca17c284d0d" [label="/bin/sh -c wget http://curl.haxx.se/download/curl-7.45.0.tar.gz" shape="box"];
  "sha256:ba31cb99672cb7343064c79a914c21095a7a49f0af1271efe4e1b4074cc08a2c" [label="/bin/sh -c tar -zxvf curl-7.45.0.tar.gz" shape="box"];
  "sha256:37d3e679a72ccc00383406dcad9ed103257130b8044a313cd946d086e41600da" [label="mkdir{path=/root/curl-7.45.0}" shape="note"];
  "sha256:76683918870e4f83e51ee386f30aa0638be9573d1908e54f660647d752858334" [label="/bin/sh -c ./configure --with-ssl --with-nghttp2=/usr/local" shape="box"];
  "sha256:107a194c2e79522209316314006e8f0178a63996025046dd7d0aba88250ac657" [label="/bin/sh -c make" shape="box"];
  "sha256:68cf372f1af8459ea785e8a2466834900896fbfe4e242120de5e556978aab88d" [label="/bin/sh -c make install" shape="box"];
  "sha256:5af3d774c1f62571653358ed64a95e7f9b16f5e8305fecc340aff8e61a06c508" [label="/bin/sh -c ldconfig" shape="box"];
  "sha256:a0dafafffb5465873dd7cf13a74cde4c47790bc579276e9e0e54b75b502d516a" [label="sha256:a0dafafffb5465873dd7cf13a74cde4c47790bc579276e9e0e54b75b502d516a" shape="plaintext"];
  "sha256:fb3e9c548cad755dbe6b51d5ae04ace1f38638b4a3df691e7d4c3e9acad303eb" -> "sha256:3feb0776a2f964a447456f4742d69a2e953566b08567f2a5f5f3ef155a7b3b91" [label=""];
  "sha256:3feb0776a2f964a447456f4742d69a2e953566b08567f2a5f5f3ef155a7b3b91" -> "sha256:00f99983274077f97cdf60cb25be26a687e4c9d131e98d2844ef1d1ca26e0167" [label=""];
  "sha256:00f99983274077f97cdf60cb25be26a687e4c9d131e98d2844ef1d1ca26e0167" -> "sha256:71699e42da2a37dc1ae86e9309e29797225dd440f3ae2705e399dfb4e5abe793" [label=""];
  "sha256:71699e42da2a37dc1ae86e9309e29797225dd440f3ae2705e399dfb4e5abe793" -> "sha256:6e7df74750534b310da566dac65028b74e63cf0c844bfed569e6233edff57711" [label=""];
  "sha256:6e7df74750534b310da566dac65028b74e63cf0c844bfed569e6233edff57711" -> "sha256:49822dfe216fd1384ebafacefaa1df4d909277f59b92d9be7cd9e9fd47b1898d" [label=""];
  "sha256:49822dfe216fd1384ebafacefaa1df4d909277f59b92d9be7cd9e9fd47b1898d" -> "sha256:7ccfb25bf49cdcf8aebe4dfb6065bade258ce6e38260ae45f0e5f9f92fdccd4f" [label=""];
  "sha256:7ccfb25bf49cdcf8aebe4dfb6065bade258ce6e38260ae45f0e5f9f92fdccd4f" -> "sha256:3023de8ec4fdbc0504115e3befdb8face0a751f3ce1db4c0fa3cd93431d7f845" [label=""];
  "sha256:3023de8ec4fdbc0504115e3befdb8face0a751f3ce1db4c0fa3cd93431d7f845" -> "sha256:7cf4711896a000f4865f05b878960f957403c7c6d6caaa6029e640b1d6a091e0" [label=""];
  "sha256:7cf4711896a000f4865f05b878960f957403c7c6d6caaa6029e640b1d6a091e0" -> "sha256:10ba706b8c232fe9ce8f7c18594ddba8e67448142390623b77860bbeda0a0d43" [label=""];
  "sha256:10ba706b8c232fe9ce8f7c18594ddba8e67448142390623b77860bbeda0a0d43" -> "sha256:29c3f0e40e07fbecc45c3e8c4d51fdebb997fdccc179d813055b3d6b9bba2bb0" [label=""];
  "sha256:29c3f0e40e07fbecc45c3e8c4d51fdebb997fdccc179d813055b3d6b9bba2bb0" -> "sha256:c151fb2d485d4242138f5caef161c65e73ac9c621be68401f05c6311242a4746" [label=""];
  "sha256:c151fb2d485d4242138f5caef161c65e73ac9c621be68401f05c6311242a4746" -> "sha256:1cf737cae3a15f3e27dfcb46c9893ff86ec9201cb2b63132938126e374721103" [label=""];
  "sha256:1cf737cae3a15f3e27dfcb46c9893ff86ec9201cb2b63132938126e374721103" -> "sha256:9f2c2806eefae75e821d8576aae9ca60092e755f35593ec8adfaaf1fa17349b7" [label=""];
  "sha256:9f2c2806eefae75e821d8576aae9ca60092e755f35593ec8adfaaf1fa17349b7" -> "sha256:8d207cf4097219e1d82c9b54dd8c8f2ee4cb8749ece29dcf1ba62ca17c284d0d" [label=""];
  "sha256:8d207cf4097219e1d82c9b54dd8c8f2ee4cb8749ece29dcf1ba62ca17c284d0d" -> "sha256:ba31cb99672cb7343064c79a914c21095a7a49f0af1271efe4e1b4074cc08a2c" [label=""];
  "sha256:ba31cb99672cb7343064c79a914c21095a7a49f0af1271efe4e1b4074cc08a2c" -> "sha256:37d3e679a72ccc00383406dcad9ed103257130b8044a313cd946d086e41600da" [label=""];
  "sha256:37d3e679a72ccc00383406dcad9ed103257130b8044a313cd946d086e41600da" -> "sha256:76683918870e4f83e51ee386f30aa0638be9573d1908e54f660647d752858334" [label=""];
  "sha256:76683918870e4f83e51ee386f30aa0638be9573d1908e54f660647d752858334" -> "sha256:107a194c2e79522209316314006e8f0178a63996025046dd7d0aba88250ac657" [label=""];
  "sha256:107a194c2e79522209316314006e8f0178a63996025046dd7d0aba88250ac657" -> "sha256:68cf372f1af8459ea785e8a2466834900896fbfe4e242120de5e556978aab88d" [label=""];
  "sha256:68cf372f1af8459ea785e8a2466834900896fbfe4e242120de5e556978aab88d" -> "sha256:5af3d774c1f62571653358ed64a95e7f9b16f5e8305fecc340aff8e61a06c508" [label=""];
  "sha256:5af3d774c1f62571653358ed64a95e7f9b16f5e8305fecc340aff8e61a06c508" -> "sha256:a0dafafffb5465873dd7cf13a74cde4c47790bc579276e9e0e54b75b502d516a" [label=""];
}

