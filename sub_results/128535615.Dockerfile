[app/sub_sources/128535615.Dockerfile]
digraph {
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" [label="docker-image://docker.io/library/ubuntu:16.04@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:472f3f549e672b028aaedf2d84309c71b3ff2de5d01ba240c998c5d779957b6a" [label="local://context" shape="ellipse"];
  "sha256:d0d607c9e4bf6c8874eabd921ccf10172168c0577825fac1a6f1de52c2f12218" [label="copy{src=/scripts/android-base-apt-get.sh, dest=/scripts/}" shape="note"];
  "sha256:137ba8180cd230ef2f294b5e378df2a46f68d7c3391ac3fbb156ca39922e93a0" [label="/bin/sh -c sh /scripts/android-base-apt-get.sh" shape="box"];
  "sha256:cd3f577cac0fe016e95159832f217cf6cabacb4d19ebfee7e9f53908ad9ebfad" [label="copy{src=/scripts/android-ndk.sh, dest=/scripts/}" shape="note"];
  "sha256:34f6669a1cdf1a9558fe0329543dd54ce44363fa7e80d2c91e1ceb93a13be2e3" [label="/bin/sh -c . /scripts/android-ndk.sh &&     download_ndk android-ndk-r15c-linux-x86_64.zip &&     make_standalone_toolchain x86 14 &&     make_standalone_toolchain x86 21 &&     remove_ndk" shape="box"];
  "sha256:11e881ac93aaedca287e66525dc2c6978d50f431407ee59ac92f85463756d349" [label="/bin/sh -c chmod 777 /android/ndk &&     ln -s /android/ndk/x86-21 /android/ndk/x86" shape="box"];
  "sha256:8cc6bb1a40802c47753cae91807e1d26a550a23ade1050a6af0957addff504a5" [label="copy{src=/scripts/sccache.sh, dest=/scripts/}" shape="note"];
  "sha256:a4a483767fede791ea50dbfbbf406b691eca85f7f7985370277bf59e414ecb5e" [label="/bin/sh -c sh /scripts/sccache.sh" shape="box"];
  "sha256:0734b4b79827d366f6ecbf333fc4af3def3d8f0a8c3115fd413c45cfd170985e" [label="sha256:0734b4b79827d366f6ecbf333fc4af3def3d8f0a8c3115fd413c45cfd170985e" shape="plaintext"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" -> "sha256:d0d607c9e4bf6c8874eabd921ccf10172168c0577825fac1a6f1de52c2f12218" [label=""];
  "sha256:472f3f549e672b028aaedf2d84309c71b3ff2de5d01ba240c998c5d779957b6a" -> "sha256:d0d607c9e4bf6c8874eabd921ccf10172168c0577825fac1a6f1de52c2f12218" [label=""];
  "sha256:d0d607c9e4bf6c8874eabd921ccf10172168c0577825fac1a6f1de52c2f12218" -> "sha256:137ba8180cd230ef2f294b5e378df2a46f68d7c3391ac3fbb156ca39922e93a0" [label=""];
  "sha256:137ba8180cd230ef2f294b5e378df2a46f68d7c3391ac3fbb156ca39922e93a0" -> "sha256:cd3f577cac0fe016e95159832f217cf6cabacb4d19ebfee7e9f53908ad9ebfad" [label=""];
  "sha256:472f3f549e672b028aaedf2d84309c71b3ff2de5d01ba240c998c5d779957b6a" -> "sha256:cd3f577cac0fe016e95159832f217cf6cabacb4d19ebfee7e9f53908ad9ebfad" [label=""];
  "sha256:cd3f577cac0fe016e95159832f217cf6cabacb4d19ebfee7e9f53908ad9ebfad" -> "sha256:34f6669a1cdf1a9558fe0329543dd54ce44363fa7e80d2c91e1ceb93a13be2e3" [label=""];
  "sha256:34f6669a1cdf1a9558fe0329543dd54ce44363fa7e80d2c91e1ceb93a13be2e3" -> "sha256:11e881ac93aaedca287e66525dc2c6978d50f431407ee59ac92f85463756d349" [label=""];
  "sha256:11e881ac93aaedca287e66525dc2c6978d50f431407ee59ac92f85463756d349" -> "sha256:8cc6bb1a40802c47753cae91807e1d26a550a23ade1050a6af0957addff504a5" [label=""];
  "sha256:472f3f549e672b028aaedf2d84309c71b3ff2de5d01ba240c998c5d779957b6a" -> "sha256:8cc6bb1a40802c47753cae91807e1d26a550a23ade1050a6af0957addff504a5" [label=""];
  "sha256:8cc6bb1a40802c47753cae91807e1d26a550a23ade1050a6af0957addff504a5" -> "sha256:a4a483767fede791ea50dbfbbf406b691eca85f7f7985370277bf59e414ecb5e" [label=""];
  "sha256:a4a483767fede791ea50dbfbbf406b691eca85f7f7985370277bf59e414ecb5e" -> "sha256:0734b4b79827d366f6ecbf333fc4af3def3d8f0a8c3115fd413c45cfd170985e" [label=""];
}

