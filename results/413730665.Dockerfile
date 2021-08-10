[app/sources/413730665.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:a16018b3a178c50b3d98e4c7883a79ddaf7c12dd98ca116514fb026cd9f9008d" [label="/bin/sh -c apt-get update && apt-get install -y software-properties-common && add-apt-repository ppa:george-edison55/cmake-3.x && apt-get clean" shape="box"];
  "sha256:97fa152a822cf08c4dcc891318fd032e552fd04da5d5611a5ff25a71bfc97476" [label="/bin/sh -c apt-get update && apt-get install -y     automake     build-essential     wget     p7zip-full     bash     curl     cmake     git     vim     zip     && apt-get clean" shape="box"];
  "sha256:eb071ff15b2e1e519a2b868a42bd535c7b8bf1e5d866c5ad6e84d9efcb3f693e" [label="/bin/sh -c mkdir -p build/output" shape="box"];
  "sha256:c5ba5fd23d0312248abef1201c2208c6902cee1e1977a86f25c560e615cf3e4f" [label="mkdir{path=/build/resources}" shape="note"];
  "sha256:fab2941290196b0c6c5b9ac9a66a9eb3707ba3728f5df515214e50f1644014b3" [label="/bin/sh -c curl -L -O http://dl.google.com/android/ndk/android-ndk-r10e-linux-x86_64.bin && \tchmod a+x android-ndk-r10e-linux-x86_64.bin && \t7z x android-ndk-r10e-linux-x86_64.bin  > /dev/null && \tbash android-ndk-r10e/build/tools/make-standalone-toolchain.sh --verbose --platform=$PLATFORM --install-dir=$ANDROID_STANDALONE_TOOLCHAIN --arch=arm --toolchain=arm-linux-androideabi-4.9 --system=linux-x86_64" shape="box"];
  "sha256:4571eab09a329db69decdd2fd332fa9078d32e8e535455bf5eb504be07f14700" [label="/bin/sh -c curl -L -O http://downloads.sourceforge.net/libuuid/libuuid-1.0.3.tar.gz && \ttar -xvzf libuuid-1.0.3.tar.gz && \tcd libuuid-1.0.3 && \t./configure --host=arm-linux-androideabi  --disable-shared --enable-static --prefix=/build/output/uuid && \tmake && make install" shape="box"];
  "sha256:252b9a3e2a7277d2f8f6849cca031284d90b5ee7353041b65b3d16efe79b1d74" [label="/bin/sh -c curl -L -O http://zlib.net/zlib-1.2.11.tar.gz && \ttar -xvzf zlib-*.tar.gz && \tcd zlib-* && \t./configure --prefix=/build/output/zlib && make && make install" shape="box"];
  "sha256:0100d849c54825286a13a500b60ede4812f6d4992e6e66805d2fc47eaceb10ee" [label="/bin/sh -c curl -L -O http://curl.haxx.se/download/curl-7.38.0.tar.gz && \ttar -xvzf curl-7.38.0.tar.gz && \tcd curl-7.38.0 && \t./configure --host=arm-linux-androideabi --disable-shared --enable-static --disable-dependency-tracking --with-zlib=`pwd`/../../output/zlib --without-ca-bundle --without-ca-path --disable-ftp --disable-file --disable-ldap --disable-ldaps --disable-rtsp --disable-proxy --disable-dict --disable-telnet --disable-tftp --disable-pop3 --disable-imap --disable-smtp --disable-gopher --disable-sspi --disable-manual --target=arm-linux-androideabi --build=x86_64-unknown-linux-gnu --prefix=/build/output/curl && \tmake && make install" shape="box"];
  "sha256:1141f908a4a80c9f21860671f4c90ae6064d56e8d871324f99e02f653f1c629b" [label="/bin/sh -c curl -L -O http://www.digip.org/jansson/releases/jansson-2.7.tar.bz2 && \ttar -xvjf jansson-2.7.tar.bz2 && \tcd jansson-2.7 && ./configure --host=arm-linux-androideabi  --disable-shared --enable-static --prefix=/build/output/jansson && \tmake && make install" shape="box"];
  "sha256:e19491ada1edbc78a1e8b1789e79a06f5855ea9450c5d1af7231ce783d104a9f" [label="/bin/sh -c curl -L -O http://xmlsoft.org/sources/libxml2-2.7.2.tar.gz && \tcurl -L -O https://raw.githubusercontent.com/bpetri/libxml2_android/master/config.guess && \tcurl -L -O https://raw.githubusercontent.com/bpetri/libxml2_android/master/config.sub && \tcurl -L -O https://raw.githubusercontent.com/bpetri/libxml2_android/master/libxml2.patch && \ttar -xvzf libxml2-2.7.2.tar.gz && cp config.guess config.sub libxml2-2.7.2 && \tpatch -p1 < libxml2.patch && \tcd libxml2-2.7.2 && \t./configure --host=arm-linux-androideabi  --disable-shared --enable-static --prefix=/build/output/libxml2 && \tmake && make install" shape="box"];
  "sha256:560dfcb2d9bbba527ace1b6e1d129ff126c3986ab8512adae5aac21a5d609328" [label="/bin/sh -c curl -L -O ftp://sourceware.org/pub/libffi/libffi-3.2.1.tar.gz && \ttar -xvzf libffi-3.2.1.tar.gz  && \tcd libffi-3.2.1 && ./configure --host=arm-linux-androideabi  --disable-shared --enable-static --prefix=/build/output/libffi &&   \techo \"#define FFI_MMAP_EXEC_WRIT 1\" >> ./arm-unknown-linux-androideabi/fficonfig.h &&   \techo \"#define FFI_MMAP_EXEC_SELINUX 0\" >> ./arm-unknown-linux-androideabi/fficonfig.h && \tmake && make install" shape="box"];
  "sha256:0987b334473f268d84113c497e25a02024c93771f593502ec94ed7a87ef04f34" [label="/bin/sh -c git clone -b develop --single-branch https://github.com/apache/celix.git celix" shape="box"];
  "sha256:ca8a4c143fe2c199fa8c77a7d21be7e856a254d0b583a1a258f62148dc464602" [label="sha256:ca8a4c143fe2c199fa8c77a7d21be7e856a254d0b583a1a258f62148dc464602" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:a16018b3a178c50b3d98e4c7883a79ddaf7c12dd98ca116514fb026cd9f9008d" [label=""];
  "sha256:a16018b3a178c50b3d98e4c7883a79ddaf7c12dd98ca116514fb026cd9f9008d" -> "sha256:97fa152a822cf08c4dcc891318fd032e552fd04da5d5611a5ff25a71bfc97476" [label=""];
  "sha256:97fa152a822cf08c4dcc891318fd032e552fd04da5d5611a5ff25a71bfc97476" -> "sha256:eb071ff15b2e1e519a2b868a42bd535c7b8bf1e5d866c5ad6e84d9efcb3f693e" [label=""];
  "sha256:eb071ff15b2e1e519a2b868a42bd535c7b8bf1e5d866c5ad6e84d9efcb3f693e" -> "sha256:c5ba5fd23d0312248abef1201c2208c6902cee1e1977a86f25c560e615cf3e4f" [label=""];
  "sha256:c5ba5fd23d0312248abef1201c2208c6902cee1e1977a86f25c560e615cf3e4f" -> "sha256:fab2941290196b0c6c5b9ac9a66a9eb3707ba3728f5df515214e50f1644014b3" [label=""];
  "sha256:fab2941290196b0c6c5b9ac9a66a9eb3707ba3728f5df515214e50f1644014b3" -> "sha256:4571eab09a329db69decdd2fd332fa9078d32e8e535455bf5eb504be07f14700" [label=""];
  "sha256:4571eab09a329db69decdd2fd332fa9078d32e8e535455bf5eb504be07f14700" -> "sha256:252b9a3e2a7277d2f8f6849cca031284d90b5ee7353041b65b3d16efe79b1d74" [label=""];
  "sha256:252b9a3e2a7277d2f8f6849cca031284d90b5ee7353041b65b3d16efe79b1d74" -> "sha256:0100d849c54825286a13a500b60ede4812f6d4992e6e66805d2fc47eaceb10ee" [label=""];
  "sha256:0100d849c54825286a13a500b60ede4812f6d4992e6e66805d2fc47eaceb10ee" -> "sha256:1141f908a4a80c9f21860671f4c90ae6064d56e8d871324f99e02f653f1c629b" [label=""];
  "sha256:1141f908a4a80c9f21860671f4c90ae6064d56e8d871324f99e02f653f1c629b" -> "sha256:e19491ada1edbc78a1e8b1789e79a06f5855ea9450c5d1af7231ce783d104a9f" [label=""];
  "sha256:e19491ada1edbc78a1e8b1789e79a06f5855ea9450c5d1af7231ce783d104a9f" -> "sha256:560dfcb2d9bbba527ace1b6e1d129ff126c3986ab8512adae5aac21a5d609328" [label=""];
  "sha256:560dfcb2d9bbba527ace1b6e1d129ff126c3986ab8512adae5aac21a5d609328" -> "sha256:0987b334473f268d84113c497e25a02024c93771f593502ec94ed7a87ef04f34" [label=""];
  "sha256:0987b334473f268d84113c497e25a02024c93771f593502ec94ed7a87ef04f34" -> "sha256:ca8a4c143fe2c199fa8c77a7d21be7e856a254d0b583a1a258f62148dc464602" [label=""];
}

