[app/sources/155304013.Dockerfile]
digraph {
  "sha256:38f508c0fe179c21fe1cdf0215951f21b659258e24a9256769e26dbb7a4043fc" [label="docker-image://docker.io/radial/distro:us-west-1" shape="ellipse"];
  "sha256:2d7539bab952f01b30d162e00118640d5355f7489ac56f4fe7087c426526967f" [label="/bin/sh -c apt-get -q update && apt-get -qyV install                     wget                     build-essential                     libncurses-dev                     rsync                     unzip                     bc                     gnupg                     python" shape="box"];
  "sha256:f37330e115bb324e104e7144354b5916ef7359bd595fce5040e5666c0a98f353" [label="/bin/sh -c env --unset=DEBIAN_FRONTEND" shape="box"];
  "sha256:931cbc04e6440db464aa29836b2be5436e9dce202bfa6ecd8a84cb9e76a93e66" [label="/bin/sh -c mkdir -p /tmp/builder" shape="box"];
  "sha256:a9aa3ea8e0bd16a507b2afbb17fea2d3d46fe22384e9077c6e305425539aa2db" [label="mkdir{path=/tmp/builder}" shape="note"];
  "sha256:967260fff46352e24959a32187f7a84eaf2b6caf145501428a76273c3120548d" [label="/bin/sh -c wget -nv http://buildroot.uclibc.org/downloads/buildroot-$BR_VERSION.tar.gz &&                wget -nv http://buildroot.uclibc.org/downloads/buildroot-$BR_VERSION.tar.gz.sign &&                wget -nv http://uclibc.org/~jacmet/pubkey.gpg &&                gpg --import pubkey.gpg &&                gpg --verify buildroot-$BR_VERSION.tar.gz.sign" shape="box"];
  "sha256:f3f529342f98f44253d1c18ca5e64444e2d82a71e819c3e8be34aa340a04eefa" [label="/bin/sh -c tar -zxf buildroot-$BR_VERSION.tar.gz &&                mv buildroot-$BR_VERSION buildroot" shape="box"];
  "sha256:8fecce21425522a3e8e5504eeadb1ff07cd1ed059d48c1d101bd520662000486" [label="mkdir{path=/tmp/builder/buildroot}" shape="note"];
  "sha256:f5a325cdc3b76f2357822713ebecb2c03db6095d7773c986bb25023444b1156b" [label="/bin/sh -c make defconfig" shape="box"];
  "sha256:93fa314ae2e54d83fc3ef976990d637766a5e06e748f837d78e390319a2e9f4a" [label="/bin/sh -c sed -i 's/BR2_i386=y/BR2_x86_64=y/' .config &&                echo BR2_TOOLCHAIN_BUILDROOT_LARGEFILE=y >>.config &&                echo BR2_TOOLCHAIN_BUILDROOT_INET_IPV6=y >>.config &&                echo BR2_TOOLCHAIN_BUILDROOT_WCHAR=y >>.config" shape="box"];
  "sha256:796e14bf376474aa8d95ac8113e7388278c42232e2f8ea24ca32caa749c229d3" [label="/bin/sh -c make oldconfig" shape="box"];
  "sha256:4b07d900af742e31cdaef5f9d758fd97b58cf64f9b741a5b07538fe5e8b89caa" [label="/bin/sh -c make --quiet" shape="box"];
  "sha256:55693e44a104d6ba1e2405080770a8b30dafb02522bc6ba1b83f8b65d023530c" [label="/bin/sh -c cp /tmp/builder/buildroot/output/images/rootfs.tar /tmp/rootfs.tar" shape="box"];
  "sha256:4472ea4c26a8bab3cdaa525b1d65d8f0481cd7a2ae274f8375f4ab282ff47333" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:5daa03e53cc119c73216b69e12a85a3de46f6994382159f4586bfa13b4e1de61" [label="/bin/sh -c md5sum rootfs.tar > rootfs.tar.md5" shape="box"];
  "sha256:d27561f008a07799ba6d8c439434fe6fe8378e674425e0bf49c7999665e3f3af" [label="sha256:d27561f008a07799ba6d8c439434fe6fe8378e674425e0bf49c7999665e3f3af" shape="plaintext"];
  "sha256:38f508c0fe179c21fe1cdf0215951f21b659258e24a9256769e26dbb7a4043fc" -> "sha256:2d7539bab952f01b30d162e00118640d5355f7489ac56f4fe7087c426526967f" [label=""];
  "sha256:2d7539bab952f01b30d162e00118640d5355f7489ac56f4fe7087c426526967f" -> "sha256:f37330e115bb324e104e7144354b5916ef7359bd595fce5040e5666c0a98f353" [label=""];
  "sha256:f37330e115bb324e104e7144354b5916ef7359bd595fce5040e5666c0a98f353" -> "sha256:931cbc04e6440db464aa29836b2be5436e9dce202bfa6ecd8a84cb9e76a93e66" [label=""];
  "sha256:931cbc04e6440db464aa29836b2be5436e9dce202bfa6ecd8a84cb9e76a93e66" -> "sha256:a9aa3ea8e0bd16a507b2afbb17fea2d3d46fe22384e9077c6e305425539aa2db" [label=""];
  "sha256:a9aa3ea8e0bd16a507b2afbb17fea2d3d46fe22384e9077c6e305425539aa2db" -> "sha256:967260fff46352e24959a32187f7a84eaf2b6caf145501428a76273c3120548d" [label=""];
  "sha256:967260fff46352e24959a32187f7a84eaf2b6caf145501428a76273c3120548d" -> "sha256:f3f529342f98f44253d1c18ca5e64444e2d82a71e819c3e8be34aa340a04eefa" [label=""];
  "sha256:f3f529342f98f44253d1c18ca5e64444e2d82a71e819c3e8be34aa340a04eefa" -> "sha256:8fecce21425522a3e8e5504eeadb1ff07cd1ed059d48c1d101bd520662000486" [label=""];
  "sha256:8fecce21425522a3e8e5504eeadb1ff07cd1ed059d48c1d101bd520662000486" -> "sha256:f5a325cdc3b76f2357822713ebecb2c03db6095d7773c986bb25023444b1156b" [label=""];
  "sha256:f5a325cdc3b76f2357822713ebecb2c03db6095d7773c986bb25023444b1156b" -> "sha256:93fa314ae2e54d83fc3ef976990d637766a5e06e748f837d78e390319a2e9f4a" [label=""];
  "sha256:93fa314ae2e54d83fc3ef976990d637766a5e06e748f837d78e390319a2e9f4a" -> "sha256:796e14bf376474aa8d95ac8113e7388278c42232e2f8ea24ca32caa749c229d3" [label=""];
  "sha256:796e14bf376474aa8d95ac8113e7388278c42232e2f8ea24ca32caa749c229d3" -> "sha256:4b07d900af742e31cdaef5f9d758fd97b58cf64f9b741a5b07538fe5e8b89caa" [label=""];
  "sha256:4b07d900af742e31cdaef5f9d758fd97b58cf64f9b741a5b07538fe5e8b89caa" -> "sha256:55693e44a104d6ba1e2405080770a8b30dafb02522bc6ba1b83f8b65d023530c" [label=""];
  "sha256:55693e44a104d6ba1e2405080770a8b30dafb02522bc6ba1b83f8b65d023530c" -> "sha256:4472ea4c26a8bab3cdaa525b1d65d8f0481cd7a2ae274f8375f4ab282ff47333" [label=""];
  "sha256:4472ea4c26a8bab3cdaa525b1d65d8f0481cd7a2ae274f8375f4ab282ff47333" -> "sha256:5daa03e53cc119c73216b69e12a85a3de46f6994382159f4586bfa13b4e1de61" [label=""];
  "sha256:5daa03e53cc119c73216b69e12a85a3de46f6994382159f4586bfa13b4e1de61" -> "sha256:d27561f008a07799ba6d8c439434fe6fe8378e674425e0bf49c7999665e3f3af" [label=""];
}

