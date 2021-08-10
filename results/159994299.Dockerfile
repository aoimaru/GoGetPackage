[app/sources/159994299.Dockerfile]
digraph {
  "sha256:13d1f36d6b66a065b48adaefd703bc12dcf664506fdee7c8233c7ba126244d72" [label="docker-image://docker.io/library/buildpack-deps:stretch" shape="ellipse"];
  "sha256:6e9e2e550a093229191fb305b281fd8b4fb544529126fc96ed6fabc3701c9aff" [label="local://context" shape="ellipse"];
  "sha256:536c91d7c3cd21410743b14e65faec72180d48faebd9d1e210d272a550395c08" [label="copy{src=/*.patch, dest=/usr/src/perl/}" shape="note"];
  "sha256:3b9754c1400b4373adf80f828bc1bf92d3dfc92fa5f2788e8daa23cd3ebe25be" [label="mkdir{path=/usr/src/perl}" shape="note"];
  "sha256:261b3c113550d222ae5ad7041980c6d36ce013ca3965ee89fb9cd075eb9fd113" [label="/bin/sh -c true     && curl -SL https://www.cpan.org/src/5.0/perl-5.24.4.tar.bz2 -o perl-5.24.4.tar.bz2     && echo 'e34ff38c54857f431f37403b757267c9998152bf46b5c750b462f62461279b10 *perl-5.24.4.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.24.4.tar.bz2 -C /usr/src/perl     && rm perl-5.24.4.tar.bz2     && cat *.patch | patch -p1     && gnuArch=\"$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)\"     && archBits=\"$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)\"     && archFlag=\"$([ \"$archBits\" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')\"     && ./Configure -Darchname=\"$gnuArch\" \"$archFlag\" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*" shape="box"];
  "sha256:dd14c027721a5c852d933fa78b70f99a992559aa361713e4fd57ef600236706c" [label="mkdir{path=/root}" shape="note"];
  "sha256:87fa2ec4f0f05ff8e9579639dd1309e439a978de3b5aff90e46dbfbf4a226d00" [label="sha256:87fa2ec4f0f05ff8e9579639dd1309e439a978de3b5aff90e46dbfbf4a226d00" shape="plaintext"];
  "sha256:13d1f36d6b66a065b48adaefd703bc12dcf664506fdee7c8233c7ba126244d72" -> "sha256:536c91d7c3cd21410743b14e65faec72180d48faebd9d1e210d272a550395c08" [label=""];
  "sha256:6e9e2e550a093229191fb305b281fd8b4fb544529126fc96ed6fabc3701c9aff" -> "sha256:536c91d7c3cd21410743b14e65faec72180d48faebd9d1e210d272a550395c08" [label=""];
  "sha256:536c91d7c3cd21410743b14e65faec72180d48faebd9d1e210d272a550395c08" -> "sha256:3b9754c1400b4373adf80f828bc1bf92d3dfc92fa5f2788e8daa23cd3ebe25be" [label=""];
  "sha256:3b9754c1400b4373adf80f828bc1bf92d3dfc92fa5f2788e8daa23cd3ebe25be" -> "sha256:261b3c113550d222ae5ad7041980c6d36ce013ca3965ee89fb9cd075eb9fd113" [label=""];
  "sha256:261b3c113550d222ae5ad7041980c6d36ce013ca3965ee89fb9cd075eb9fd113" -> "sha256:dd14c027721a5c852d933fa78b70f99a992559aa361713e4fd57ef600236706c" [label=""];
  "sha256:dd14c027721a5c852d933fa78b70f99a992559aa361713e4fd57ef600236706c" -> "sha256:87fa2ec4f0f05ff8e9579639dd1309e439a978de3b5aff90e46dbfbf4a226d00" [label=""];
}

