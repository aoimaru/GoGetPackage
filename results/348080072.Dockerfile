[app/sources/348080072.Dockerfile]
digraph {
  "sha256:3601e5ff43d0071cb86b3a24d6e52e69d0ad91f489c172427c8e1ae29a42be9f" [label="docker-image://docker.io/opennsm/debian:latest" shape="ellipse"];
  "sha256:2136fe776f1d9d21c33a280dd210ebd33bbd7f8f170b8336fd417b60f53a3d0a" [label="/bin/sh -c apt-get update -qq" shape="box"];
  "sha256:b49a90079f364281077319e3ca877e3f35ab27ce21973ecd5f0d74b1e1513a9f" [label="/bin/sh -c apt-get install -yq build-essential libpcre3-dev   bison flex zlib1g-dev autoconf libtool --no-install-recommends" shape="box"];
  "sha256:68f05fb9b0e14de5e33789b9a89f337ae5bda40a6d8e58d66bf78c4467d74b27" [label="/bin/sh -c wget http://www.tcpdump.org/release/$LVERS.$EXT" shape="box"];
  "sha256:92aea78acfec7116301f0864414f740e91d55facb003c2b789f8762b48b7bac4" [label="/bin/sh -c tar zxf $LVERS.$EXT && cd $LVERS && ./configure --prefix=/usr && make && make install" shape="box"];
  "sha256:d9e24f81a37888aad5acb8b0d0ecb91a6d60e5324bcde380a0df47593c6f3d15" [label="/bin/sh -c wget http://libdnet.googlecode.com/files/$LDVERS.tgz" shape="box"];
  "sha256:2c557e87081725f22885ee98ea7df4ce1117ac5ee4922ea0710a5e8746ee0b45" [label="/bin/sh -c tar zxf $LDVERS.tgz && cd $LDVERS && ./configure --prefix=/usr --enable-shared && make && make install" shape="box"];
  "sha256:f034ef0baad2d4bc9718aaee8a06b8599701e31d0110b88f57cdd4fe7da86a18" [label="/bin/sh -c echo >> /etc/ld.so.conf /usr/lib && echo >> /etc/ld.so.conf /usr/local/lib" shape="box"];
  "sha256:f81334fa758edf1064827428ca25bccdb0059103817542e19819443031dc31c6" [label="/bin/sh -c wget --no-check-certificate https://www.snort.org/downloads/snort/$DVERS.$EXT" shape="box"];
  "sha256:0921552ec024ea0f3322ef49e20a669e2f754c8e59b5ef132f44b2da6aec8852" [label="/bin/sh -c tar zxf $DVERS.$EXT && cd $DVERS && ./configure && make && make install" shape="box"];
  "sha256:b7877dee7077c2ba6bce0502c98e4f98ebac387b1c602fc2a7d938e48a706026" [label="mkdir{path=/home/opennsm}" shape="note"];
  "sha256:ccdb4c0135cfc80457c15acb60684a0f61d3e68a6054bda933a57f749486750a" [label="/bin/sh -c wget http://sourceforge.net/projects/snort/files/OLD%20STUFF%20THAT%20YOU%20SHOULDNT%20USE/$PROG-$VERS.$EXT" shape="box"];
  "sha256:00344a58638c706d4d255d70a708c2e232c1e0d72226be977ad31318157efedf" [label="/bin/sh -c tar -zxf $PROG-$VERS.$EXT" shape="box"];
  "sha256:aecea80bf45f96b1f3d4ba5c544c55d3191f161dcb83d4c502d1665978cb573f" [label="mkdir{path=/home/opennsm/snort-2.9.4.5}" shape="note"];
  "sha256:ce9edca284c796441d5abad715789ff3657f969557198d1578e01403d5b84074" [label="/bin/sh -c ./configure --prefix=$PREFIX --enable-sourcefire --enable-large-pcap --enable-profile --enable-gdb --enable-linux-smp-stats && make" shape="box"];
  "sha256:0de6b75a0982b8a4aeda06039c43e11079f896b932fee56017269656ddf51087" [label="/bin/sh -c make install && ldconfig" shape="box"];
  "sha256:8043a3ee264a8c5d6cd0ddd6c73f143d97c335883fbecc71b71b476e1f8c083c" [label="/bin/sh -c chmod u+s $PREFIX/bin/snort" shape="box"];
  "sha256:56b03c7d4551ba94192cc67ae230109babc0601d8f68a849e6eb404904519215" [label="/bin/sh -c rm -rf /home/$VIRTUSER/$PROG-$VERS" shape="box"];
  "sha256:2ffee9e900043f9847d5a2d241622b39c15bcf0f53cae221d2eccaf5347d250e" [label="/bin/sh -c rm -rf /root/$DVERS" shape="box"];
  "sha256:b4784d75a44fb5c288af65e529e2f22fdf29a960b15829b64e8c0d59ebe84029" [label="/bin/sh -c rm -rf /root/$LVERS" shape="box"];
  "sha256:a1cdd838e661d720ef89911623937bd0a0275e236c7541f8eb74910ed5700444" [label="/bin/sh -c rm -rf /root/$LDVERS" shape="box"];
  "sha256:e4d6da4fb48a2d78bc2d232887a69a6d5c26f217b73499447972018058a4aadf" [label="mkdir{path=/home/opennsm}" shape="note"];
  "sha256:35c31243b5aa561a49282a020e8cadb733c7d38ef871924a27b2f83b9d7f3fa6" [label="sha256:35c31243b5aa561a49282a020e8cadb733c7d38ef871924a27b2f83b9d7f3fa6" shape="plaintext"];
  "sha256:3601e5ff43d0071cb86b3a24d6e52e69d0ad91f489c172427c8e1ae29a42be9f" -> "sha256:2136fe776f1d9d21c33a280dd210ebd33bbd7f8f170b8336fd417b60f53a3d0a" [label=""];
  "sha256:2136fe776f1d9d21c33a280dd210ebd33bbd7f8f170b8336fd417b60f53a3d0a" -> "sha256:b49a90079f364281077319e3ca877e3f35ab27ce21973ecd5f0d74b1e1513a9f" [label=""];
  "sha256:b49a90079f364281077319e3ca877e3f35ab27ce21973ecd5f0d74b1e1513a9f" -> "sha256:68f05fb9b0e14de5e33789b9a89f337ae5bda40a6d8e58d66bf78c4467d74b27" [label=""];
  "sha256:68f05fb9b0e14de5e33789b9a89f337ae5bda40a6d8e58d66bf78c4467d74b27" -> "sha256:92aea78acfec7116301f0864414f740e91d55facb003c2b789f8762b48b7bac4" [label=""];
  "sha256:92aea78acfec7116301f0864414f740e91d55facb003c2b789f8762b48b7bac4" -> "sha256:d9e24f81a37888aad5acb8b0d0ecb91a6d60e5324bcde380a0df47593c6f3d15" [label=""];
  "sha256:d9e24f81a37888aad5acb8b0d0ecb91a6d60e5324bcde380a0df47593c6f3d15" -> "sha256:2c557e87081725f22885ee98ea7df4ce1117ac5ee4922ea0710a5e8746ee0b45" [label=""];
  "sha256:2c557e87081725f22885ee98ea7df4ce1117ac5ee4922ea0710a5e8746ee0b45" -> "sha256:f034ef0baad2d4bc9718aaee8a06b8599701e31d0110b88f57cdd4fe7da86a18" [label=""];
  "sha256:f034ef0baad2d4bc9718aaee8a06b8599701e31d0110b88f57cdd4fe7da86a18" -> "sha256:f81334fa758edf1064827428ca25bccdb0059103817542e19819443031dc31c6" [label=""];
  "sha256:f81334fa758edf1064827428ca25bccdb0059103817542e19819443031dc31c6" -> "sha256:0921552ec024ea0f3322ef49e20a669e2f754c8e59b5ef132f44b2da6aec8852" [label=""];
  "sha256:0921552ec024ea0f3322ef49e20a669e2f754c8e59b5ef132f44b2da6aec8852" -> "sha256:b7877dee7077c2ba6bce0502c98e4f98ebac387b1c602fc2a7d938e48a706026" [label=""];
  "sha256:b7877dee7077c2ba6bce0502c98e4f98ebac387b1c602fc2a7d938e48a706026" -> "sha256:ccdb4c0135cfc80457c15acb60684a0f61d3e68a6054bda933a57f749486750a" [label=""];
  "sha256:ccdb4c0135cfc80457c15acb60684a0f61d3e68a6054bda933a57f749486750a" -> "sha256:00344a58638c706d4d255d70a708c2e232c1e0d72226be977ad31318157efedf" [label=""];
  "sha256:00344a58638c706d4d255d70a708c2e232c1e0d72226be977ad31318157efedf" -> "sha256:aecea80bf45f96b1f3d4ba5c544c55d3191f161dcb83d4c502d1665978cb573f" [label=""];
  "sha256:aecea80bf45f96b1f3d4ba5c544c55d3191f161dcb83d4c502d1665978cb573f" -> "sha256:ce9edca284c796441d5abad715789ff3657f969557198d1578e01403d5b84074" [label=""];
  "sha256:ce9edca284c796441d5abad715789ff3657f969557198d1578e01403d5b84074" -> "sha256:0de6b75a0982b8a4aeda06039c43e11079f896b932fee56017269656ddf51087" [label=""];
  "sha256:0de6b75a0982b8a4aeda06039c43e11079f896b932fee56017269656ddf51087" -> "sha256:8043a3ee264a8c5d6cd0ddd6c73f143d97c335883fbecc71b71b476e1f8c083c" [label=""];
  "sha256:8043a3ee264a8c5d6cd0ddd6c73f143d97c335883fbecc71b71b476e1f8c083c" -> "sha256:56b03c7d4551ba94192cc67ae230109babc0601d8f68a849e6eb404904519215" [label=""];
  "sha256:56b03c7d4551ba94192cc67ae230109babc0601d8f68a849e6eb404904519215" -> "sha256:2ffee9e900043f9847d5a2d241622b39c15bcf0f53cae221d2eccaf5347d250e" [label=""];
  "sha256:2ffee9e900043f9847d5a2d241622b39c15bcf0f53cae221d2eccaf5347d250e" -> "sha256:b4784d75a44fb5c288af65e529e2f22fdf29a960b15829b64e8c0d59ebe84029" [label=""];
  "sha256:b4784d75a44fb5c288af65e529e2f22fdf29a960b15829b64e8c0d59ebe84029" -> "sha256:a1cdd838e661d720ef89911623937bd0a0275e236c7541f8eb74910ed5700444" [label=""];
  "sha256:a1cdd838e661d720ef89911623937bd0a0275e236c7541f8eb74910ed5700444" -> "sha256:e4d6da4fb48a2d78bc2d232887a69a6d5c26f217b73499447972018058a4aadf" [label=""];
  "sha256:e4d6da4fb48a2d78bc2d232887a69a6d5c26f217b73499447972018058a4aadf" -> "sha256:35c31243b5aa561a49282a020e8cadb733c7d38ef871924a27b2f83b9d7f3fa6" [label=""];
}

