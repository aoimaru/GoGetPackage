[app/sources/231581507.Dockerfile]
digraph {
  "sha256:08534ff54333df3acb886e6bc99c54ea5d4428561cd1ca09adef86de01764ae2" [label="local://context" shape="ellipse"];
  "sha256:37de93cfa30531d03fd12e44387e116c6969a9d27661f8f6f629cd717a8a65b6" [label="docker-image://docker.io/library/kspp-build3rdparty-alpine:latest" shape="ellipse"];
  "sha256:daf07487dd38345418656452f8e865a5bf6e0ddb84f6c864f83a694a5ad86ead" [label="mkdir{path=/src}" shape="note"];
  "sha256:682aab7f80926303e9c71578525e3cbc79ec5534411bece5c356c5110722f189" [label="copy{src=/cmake, dest=/src/cmake}" shape="note"];
  "sha256:e0a8536b4ed4857bef5f777891857c8eb1fb2cfb166c7d50cac6468aa4adad72" [label="copy{src=/examples, dest=/src/examples}" shape="note"];
  "sha256:80a8db5a4882a91f050d92435ce424c67a2098f629dd82121c4a79862bc63822" [label="copy{src=/include, dest=/src/include}" shape="note"];
  "sha256:ccf0bed4ad8f591fc963e40f91037410508e4a5eb2ebc883d49d138da33a1a4c" [label="copy{src=/src, dest=/src/src}" shape="note"];
  "sha256:fde5169a2934eb57647ef7ed8eed0200b4f8df1a56d2b88777d264533b92abd1" [label="copy{src=/tests, dest=/src/tests}" shape="note"];
  "sha256:14a73393e0daba9666c131023e8c4eec0f0f632af3cbd4147508085dd277b4bb" [label="copy{src=/tools, dest=/src/tools}" shape="note"];
  "sha256:65389066e68b3e9663366ad3fcbec17e7ff3ab8fcdf03a3de25d7dd26cf03754" [label="copy{src=/proto, dest=/src/proto}" shape="note"];
  "sha256:2418f1f63972fca0bc4665a150260aec7a28a71881c91c6b3ddcbbcd9e647dd2" [label="copy{src=/CMakeLists.txt, dest=/src/}" shape="note"];
  "sha256:c4d08e8c9be09319f4c7bb13393f662313282506e1843742ab38011d5eb7971b" [label="copy{src=/kspp_config.h.in, dest=/src/}" shape="note"];
  "sha256:3e424b5cd45041a94a12549834e62dd6f62dd6095572333eb99cae113a68fcdb" [label="/bin/sh -c mkdir build &&     cd build &&     cmake  -DCMAKE_BUILD_TYPE=Release -DENABLE_ROCKSDB=ON -DENABLE_POSTGRES=ON -DENABLE_TDS=ON -DENABLE_ELASTICSEARCH=ON -DBUILD_TOOLS=ON -DBUILD_SAMPLES=OFF -DBUILD_TESTS=OFF -DBUILD_STATIC_LIBS=OFF -DBUILD_SHARED_LIBS=ON -DLINK_SHARED=ON .. &&     make -j \"$(getconf _NPROCESSORS_ONLN)\" &&     make install &&     strip --strip-all /usr/local/lib/*.so* &&     strip --strip-unneeded /usr/local/bin/*" shape="box"];
  "sha256:093ba71b0e817557cd98410673cff9b43c20d27469e7447df8e83053597b9614" [label="/bin/sh -c runDeps=\"$(       scanelf --needed --nobanner --recursive /usr/local         | awk '{ gsub(/,/, \"\\nso:\", $2); print \"so:\" $2 }'         | sort -u         | xargs -r apk info --installed         | sort -u       )\" &&      echo \"$runDeps\" > runDeps" shape="box"];
  "sha256:494436f6af64eaf125c942806095406bee6712f522391d937cfab3494b9ab1e7" [label="sha256:494436f6af64eaf125c942806095406bee6712f522391d937cfab3494b9ab1e7" shape="plaintext"];
  "sha256:37de93cfa30531d03fd12e44387e116c6969a9d27661f8f6f629cd717a8a65b6" -> "sha256:daf07487dd38345418656452f8e865a5bf6e0ddb84f6c864f83a694a5ad86ead" [label=""];
  "sha256:daf07487dd38345418656452f8e865a5bf6e0ddb84f6c864f83a694a5ad86ead" -> "sha256:682aab7f80926303e9c71578525e3cbc79ec5534411bece5c356c5110722f189" [label=""];
  "sha256:08534ff54333df3acb886e6bc99c54ea5d4428561cd1ca09adef86de01764ae2" -> "sha256:682aab7f80926303e9c71578525e3cbc79ec5534411bece5c356c5110722f189" [label=""];
  "sha256:682aab7f80926303e9c71578525e3cbc79ec5534411bece5c356c5110722f189" -> "sha256:e0a8536b4ed4857bef5f777891857c8eb1fb2cfb166c7d50cac6468aa4adad72" [label=""];
  "sha256:08534ff54333df3acb886e6bc99c54ea5d4428561cd1ca09adef86de01764ae2" -> "sha256:e0a8536b4ed4857bef5f777891857c8eb1fb2cfb166c7d50cac6468aa4adad72" [label=""];
  "sha256:e0a8536b4ed4857bef5f777891857c8eb1fb2cfb166c7d50cac6468aa4adad72" -> "sha256:80a8db5a4882a91f050d92435ce424c67a2098f629dd82121c4a79862bc63822" [label=""];
  "sha256:08534ff54333df3acb886e6bc99c54ea5d4428561cd1ca09adef86de01764ae2" -> "sha256:80a8db5a4882a91f050d92435ce424c67a2098f629dd82121c4a79862bc63822" [label=""];
  "sha256:80a8db5a4882a91f050d92435ce424c67a2098f629dd82121c4a79862bc63822" -> "sha256:ccf0bed4ad8f591fc963e40f91037410508e4a5eb2ebc883d49d138da33a1a4c" [label=""];
  "sha256:08534ff54333df3acb886e6bc99c54ea5d4428561cd1ca09adef86de01764ae2" -> "sha256:ccf0bed4ad8f591fc963e40f91037410508e4a5eb2ebc883d49d138da33a1a4c" [label=""];
  "sha256:ccf0bed4ad8f591fc963e40f91037410508e4a5eb2ebc883d49d138da33a1a4c" -> "sha256:fde5169a2934eb57647ef7ed8eed0200b4f8df1a56d2b88777d264533b92abd1" [label=""];
  "sha256:08534ff54333df3acb886e6bc99c54ea5d4428561cd1ca09adef86de01764ae2" -> "sha256:fde5169a2934eb57647ef7ed8eed0200b4f8df1a56d2b88777d264533b92abd1" [label=""];
  "sha256:fde5169a2934eb57647ef7ed8eed0200b4f8df1a56d2b88777d264533b92abd1" -> "sha256:14a73393e0daba9666c131023e8c4eec0f0f632af3cbd4147508085dd277b4bb" [label=""];
  "sha256:08534ff54333df3acb886e6bc99c54ea5d4428561cd1ca09adef86de01764ae2" -> "sha256:14a73393e0daba9666c131023e8c4eec0f0f632af3cbd4147508085dd277b4bb" [label=""];
  "sha256:14a73393e0daba9666c131023e8c4eec0f0f632af3cbd4147508085dd277b4bb" -> "sha256:65389066e68b3e9663366ad3fcbec17e7ff3ab8fcdf03a3de25d7dd26cf03754" [label=""];
  "sha256:08534ff54333df3acb886e6bc99c54ea5d4428561cd1ca09adef86de01764ae2" -> "sha256:65389066e68b3e9663366ad3fcbec17e7ff3ab8fcdf03a3de25d7dd26cf03754" [label=""];
  "sha256:65389066e68b3e9663366ad3fcbec17e7ff3ab8fcdf03a3de25d7dd26cf03754" -> "sha256:2418f1f63972fca0bc4665a150260aec7a28a71881c91c6b3ddcbbcd9e647dd2" [label=""];
  "sha256:08534ff54333df3acb886e6bc99c54ea5d4428561cd1ca09adef86de01764ae2" -> "sha256:2418f1f63972fca0bc4665a150260aec7a28a71881c91c6b3ddcbbcd9e647dd2" [label=""];
  "sha256:2418f1f63972fca0bc4665a150260aec7a28a71881c91c6b3ddcbbcd9e647dd2" -> "sha256:c4d08e8c9be09319f4c7bb13393f662313282506e1843742ab38011d5eb7971b" [label=""];
  "sha256:08534ff54333df3acb886e6bc99c54ea5d4428561cd1ca09adef86de01764ae2" -> "sha256:c4d08e8c9be09319f4c7bb13393f662313282506e1843742ab38011d5eb7971b" [label=""];
  "sha256:c4d08e8c9be09319f4c7bb13393f662313282506e1843742ab38011d5eb7971b" -> "sha256:3e424b5cd45041a94a12549834e62dd6f62dd6095572333eb99cae113a68fcdb" [label=""];
  "sha256:3e424b5cd45041a94a12549834e62dd6f62dd6095572333eb99cae113a68fcdb" -> "sha256:093ba71b0e817557cd98410673cff9b43c20d27469e7447df8e83053597b9614" [label=""];
  "sha256:093ba71b0e817557cd98410673cff9b43c20d27469e7447df8e83053597b9614" -> "sha256:494436f6af64eaf125c942806095406bee6712f522391d937cfab3494b9ab1e7" [label=""];
}

