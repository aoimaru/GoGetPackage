[app/sources/269704577.Dockerfile]
digraph {
  "sha256:07c7ab6b0feaae8d7b19505eaa124f1cbc7cf52ddb48bfa1bae346d678575594" [label="docker-image://docker.io/library/node:slim" shape="ellipse"];
  "sha256:0ea756a19dc6a85bb5507f14d768ab62c02897a513ce1ad86b58a89ed6f11b96" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:6976f6109ea5915360c1add255d934c8ef85582383b545aff1152fede9b65ba4" [label="/bin/sh -c apt-get install -y wget jq" shape="box"];
  "sha256:444ba71d9c6816e3b20f3cae69d955846ee23084ff91bd99ae0e2415f6187f2a" [label="/bin/sh -c wget https://github.com/htacg/tidy-html5/releases/download/5.4.0/tidy-5.4.0-64bit.deb" shape="box"];
  "sha256:8276cad1e4efdb496df78042f7b1193f7b91d13469e18f806fe3a887f558206d" [label="/bin/sh -c dpkg --install tidy-5.4.0-64bit.deb" shape="box"];
  "sha256:ecb2c84fa99bc0a76db0ec840c2a0cc7e6fb3a79a6478f019d2e99fae090096f" [label="/bin/sh -c rm -rf tidy-*" shape="box"];
  "sha256:2a9c573eabbde99eea2a2efba4092fc174a277c7dbcb060774226f0863465c39" [label="/bin/sh -c apt-get install -y gcc" shape="box"];
  "sha256:fa63835cf2b83f25f0da5a12b16a6f1585c227c355ac3f0c9d94199dc0755a46" [label="/bin/sh -c wget http://www.it.uc3m.es/jaf/html2xhtml/downloads/html2xhtml-1.3.tar.gz" shape="box"];
  "sha256:3647edc89b4b407df58fc70a7b37ff938c4ce0d56a0c5656e121169e3fe394a9" [label="/bin/sh -c tar -xvzf html2xhtml-1.3.tar.gz" shape="box"];
  "sha256:e8240ee1fab1e125ec886b2eb739d54e604fe62c89bc590c35fa165519439d7d" [label="mkdir{path=/html2xhtml-1.3}" shape="note"];
  "sha256:05f4d42c74eb334db56a04425c13c0fc8e516f0daa7ccc04deb3d762d92e592a" [label="/bin/sh -c ./configure" shape="box"];
  "sha256:5d570a016b7f91d3a4d8692d8f82aa4aa5aa09dfa9cfa344422d8ef52b1f7b4c" [label="/bin/sh -c apt-get install -y make" shape="box"];
  "sha256:99106e73c9778f56b984842b25ba7bfffc03ad6cb10af68c469178093ede7b49" [label="/bin/sh -c make" shape="box"];
  "sha256:e0b0f690d7ce29cf56e7cd54754177db9b0e10a68b2d0ed5e129fe5dfd27c5d4" [label="/bin/sh -c make install" shape="box"];
  "sha256:3b493ad1d97a119d8247c7b2ede6c39069ac73d368d9aaadc620121c15053908" [label="mkdir{path=/root}" shape="note"];
  "sha256:28e166d9a1f5f4bd589fdad90ce16102d39a9752cb8993a995087fe850e97855" [label="/bin/sh -c rm -rf html2xhtml*" shape="box"];
  "sha256:d4aca559744d57460f66993e44ccc6ccdfbed81088a5ada2b7bae1051a4fc33e" [label="/bin/sh -c wget https://github.com/jgm/pandoc/releases/download/1.19.2.1/pandoc-1.19.2.1-1-amd64.deb" shape="box"];
  "sha256:56f38e73a780ab174b305678735929cd2767a230d5ccbef49ecda38914d0d90a" [label="/bin/sh -c dpkg --install pandoc*deb" shape="box"];
  "sha256:6d835d65dcc8c3f824ba95e6aa21a4d2de71cec722f622bd0cc978ba5191f7a8" [label="/bin/sh -c apt-get install -y zip" shape="box"];
  "sha256:d8ebae6e65f58d2bbb6be13b143a33698ab9306d9f519a29fcfe2fb32e94b610" [label="/bin/sh -c wget https://github.com/mozilla/readability/archive/master.zip" shape="box"];
  "sha256:86256225e5dcc46e82ccec3993f6588986d2deee8eaf8ebbfdb35dcced9eb0e8" [label="/bin/sh -c unzip master.zip" shape="box"];
  "sha256:72aa8cb26e19515b08328d555b3e54cbc62a39b77bb01ebe29419a122324f2c9" [label="/bin/sh -c rm master.zip" shape="box"];
  "sha256:bcc822602ce50c268869d7713b5e4a19859096074a8601d078f18b3216d19ca9" [label="mkdir{path=/root/readability-master}" shape="note"];
  "sha256:9884a5500bc9cd947feac3db19515d545fc494d9e6ade059ddef7b609a1ea1ac" [label="/bin/sh -c npm install" shape="box"];
  "sha256:6e052a91a216d07e00d9a6f83e39f5c756474fc89c567571abdb0de605c71c30" [label="mkdir{path=/root/readability-master/test}" shape="note"];
  "sha256:0c99e400e86248d16909869f6100b7f06d4d986d5cd757e5786abc458b3dc13c" [label="/bin/sh -c apt-get purge -y make gcc zip unzip" shape="box"];
  "sha256:ce81e09c192824b612953275c11d3b81f9581b41b6491d82873b633e0efd681c" [label="/bin/sh -c apt-get autoremove -y" shape="box"];
  "sha256:7a5b5f9b3d3d02af8aefd6b94066393108eb87da18d6a2465f4b0be4cc573468" [label="local://context" shape="ellipse"];
  "sha256:f1a8b9e365538450802f4c49cc018d40e2cf14a27fcb6a6bd5b1a1712c876edb" [label="copy{src=/run.sh, dest=/root/readability-master/test/run.sh}" shape="note"];
  "sha256:5f21de01286bf2061ce4c46c32438608c1d8264a82903c87b47e1c976e9f305a" [label="/bin/sh -c chmod +x /root/readability-master/test/run.sh" shape="box"];
  "sha256:507b41025c147b2757bc83d2935e0ab29b899cba1241c13e7f5a25909ceb6da0" [label="sha256:507b41025c147b2757bc83d2935e0ab29b899cba1241c13e7f5a25909ceb6da0" shape="plaintext"];
  "sha256:07c7ab6b0feaae8d7b19505eaa124f1cbc7cf52ddb48bfa1bae346d678575594" -> "sha256:0ea756a19dc6a85bb5507f14d768ab62c02897a513ce1ad86b58a89ed6f11b96" [label=""];
  "sha256:0ea756a19dc6a85bb5507f14d768ab62c02897a513ce1ad86b58a89ed6f11b96" -> "sha256:6976f6109ea5915360c1add255d934c8ef85582383b545aff1152fede9b65ba4" [label=""];
  "sha256:6976f6109ea5915360c1add255d934c8ef85582383b545aff1152fede9b65ba4" -> "sha256:444ba71d9c6816e3b20f3cae69d955846ee23084ff91bd99ae0e2415f6187f2a" [label=""];
  "sha256:444ba71d9c6816e3b20f3cae69d955846ee23084ff91bd99ae0e2415f6187f2a" -> "sha256:8276cad1e4efdb496df78042f7b1193f7b91d13469e18f806fe3a887f558206d" [label=""];
  "sha256:8276cad1e4efdb496df78042f7b1193f7b91d13469e18f806fe3a887f558206d" -> "sha256:ecb2c84fa99bc0a76db0ec840c2a0cc7e6fb3a79a6478f019d2e99fae090096f" [label=""];
  "sha256:ecb2c84fa99bc0a76db0ec840c2a0cc7e6fb3a79a6478f019d2e99fae090096f" -> "sha256:2a9c573eabbde99eea2a2efba4092fc174a277c7dbcb060774226f0863465c39" [label=""];
  "sha256:2a9c573eabbde99eea2a2efba4092fc174a277c7dbcb060774226f0863465c39" -> "sha256:fa63835cf2b83f25f0da5a12b16a6f1585c227c355ac3f0c9d94199dc0755a46" [label=""];
  "sha256:fa63835cf2b83f25f0da5a12b16a6f1585c227c355ac3f0c9d94199dc0755a46" -> "sha256:3647edc89b4b407df58fc70a7b37ff938c4ce0d56a0c5656e121169e3fe394a9" [label=""];
  "sha256:3647edc89b4b407df58fc70a7b37ff938c4ce0d56a0c5656e121169e3fe394a9" -> "sha256:e8240ee1fab1e125ec886b2eb739d54e604fe62c89bc590c35fa165519439d7d" [label=""];
  "sha256:e8240ee1fab1e125ec886b2eb739d54e604fe62c89bc590c35fa165519439d7d" -> "sha256:05f4d42c74eb334db56a04425c13c0fc8e516f0daa7ccc04deb3d762d92e592a" [label=""];
  "sha256:05f4d42c74eb334db56a04425c13c0fc8e516f0daa7ccc04deb3d762d92e592a" -> "sha256:5d570a016b7f91d3a4d8692d8f82aa4aa5aa09dfa9cfa344422d8ef52b1f7b4c" [label=""];
  "sha256:5d570a016b7f91d3a4d8692d8f82aa4aa5aa09dfa9cfa344422d8ef52b1f7b4c" -> "sha256:99106e73c9778f56b984842b25ba7bfffc03ad6cb10af68c469178093ede7b49" [label=""];
  "sha256:99106e73c9778f56b984842b25ba7bfffc03ad6cb10af68c469178093ede7b49" -> "sha256:e0b0f690d7ce29cf56e7cd54754177db9b0e10a68b2d0ed5e129fe5dfd27c5d4" [label=""];
  "sha256:e0b0f690d7ce29cf56e7cd54754177db9b0e10a68b2d0ed5e129fe5dfd27c5d4" -> "sha256:3b493ad1d97a119d8247c7b2ede6c39069ac73d368d9aaadc620121c15053908" [label=""];
  "sha256:3b493ad1d97a119d8247c7b2ede6c39069ac73d368d9aaadc620121c15053908" -> "sha256:28e166d9a1f5f4bd589fdad90ce16102d39a9752cb8993a995087fe850e97855" [label=""];
  "sha256:28e166d9a1f5f4bd589fdad90ce16102d39a9752cb8993a995087fe850e97855" -> "sha256:d4aca559744d57460f66993e44ccc6ccdfbed81088a5ada2b7bae1051a4fc33e" [label=""];
  "sha256:d4aca559744d57460f66993e44ccc6ccdfbed81088a5ada2b7bae1051a4fc33e" -> "sha256:56f38e73a780ab174b305678735929cd2767a230d5ccbef49ecda38914d0d90a" [label=""];
  "sha256:56f38e73a780ab174b305678735929cd2767a230d5ccbef49ecda38914d0d90a" -> "sha256:6d835d65dcc8c3f824ba95e6aa21a4d2de71cec722f622bd0cc978ba5191f7a8" [label=""];
  "sha256:6d835d65dcc8c3f824ba95e6aa21a4d2de71cec722f622bd0cc978ba5191f7a8" -> "sha256:d8ebae6e65f58d2bbb6be13b143a33698ab9306d9f519a29fcfe2fb32e94b610" [label=""];
  "sha256:d8ebae6e65f58d2bbb6be13b143a33698ab9306d9f519a29fcfe2fb32e94b610" -> "sha256:86256225e5dcc46e82ccec3993f6588986d2deee8eaf8ebbfdb35dcced9eb0e8" [label=""];
  "sha256:86256225e5dcc46e82ccec3993f6588986d2deee8eaf8ebbfdb35dcced9eb0e8" -> "sha256:72aa8cb26e19515b08328d555b3e54cbc62a39b77bb01ebe29419a122324f2c9" [label=""];
  "sha256:72aa8cb26e19515b08328d555b3e54cbc62a39b77bb01ebe29419a122324f2c9" -> "sha256:bcc822602ce50c268869d7713b5e4a19859096074a8601d078f18b3216d19ca9" [label=""];
  "sha256:bcc822602ce50c268869d7713b5e4a19859096074a8601d078f18b3216d19ca9" -> "sha256:9884a5500bc9cd947feac3db19515d545fc494d9e6ade059ddef7b609a1ea1ac" [label=""];
  "sha256:9884a5500bc9cd947feac3db19515d545fc494d9e6ade059ddef7b609a1ea1ac" -> "sha256:6e052a91a216d07e00d9a6f83e39f5c756474fc89c567571abdb0de605c71c30" [label=""];
  "sha256:6e052a91a216d07e00d9a6f83e39f5c756474fc89c567571abdb0de605c71c30" -> "sha256:0c99e400e86248d16909869f6100b7f06d4d986d5cd757e5786abc458b3dc13c" [label=""];
  "sha256:0c99e400e86248d16909869f6100b7f06d4d986d5cd757e5786abc458b3dc13c" -> "sha256:ce81e09c192824b612953275c11d3b81f9581b41b6491d82873b633e0efd681c" [label=""];
  "sha256:ce81e09c192824b612953275c11d3b81f9581b41b6491d82873b633e0efd681c" -> "sha256:f1a8b9e365538450802f4c49cc018d40e2cf14a27fcb6a6bd5b1a1712c876edb" [label=""];
  "sha256:7a5b5f9b3d3d02af8aefd6b94066393108eb87da18d6a2465f4b0be4cc573468" -> "sha256:f1a8b9e365538450802f4c49cc018d40e2cf14a27fcb6a6bd5b1a1712c876edb" [label=""];
  "sha256:f1a8b9e365538450802f4c49cc018d40e2cf14a27fcb6a6bd5b1a1712c876edb" -> "sha256:5f21de01286bf2061ce4c46c32438608c1d8264a82903c87b47e1c976e9f305a" [label=""];
  "sha256:5f21de01286bf2061ce4c46c32438608c1d8264a82903c87b47e1c976e9f305a" -> "sha256:507b41025c147b2757bc83d2935e0ab29b899cba1241c13e7f5a25909ceb6da0" [label=""];
}
