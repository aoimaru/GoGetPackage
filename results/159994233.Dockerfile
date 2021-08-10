[app/sources/159994233.Dockerfile]
digraph {
  "sha256:b4fc191af1e59fc97ee4a62b7f87ba8895c6ed6b094574453e2cafea664e7c93" [label="docker-image://docker.io/library/buildpack-deps:jessie" shape="ellipse"];
  "sha256:059888de066eacd4ba8efa511d68d48f73f8cceab02be1e49991d64d40aaf095" [label="local://context" shape="ellipse"];
  "sha256:c9f037bf9be0d70f56b4c18c4f13509c138d2dbaba103609d9159b716324df07" [label="copy{src=/*.patch, dest=/usr/src/perl/}" shape="note"];
  "sha256:e566a2b87adb6f548696a717d3572ea3c1711d28282afdde980f19394f56474d" [label="mkdir{path=/usr/src/perl}" shape="note"];
  "sha256:e4c88e9d292b03686e4ea5d3c545c2bd5a0c643cb4819ebeb60f10271d2af381" [label="/bin/sh -c true     && curl -SL https://www.cpan.org/src/5.0/perl-5.8.9.tar.bz2 -o perl-5.8.9.tar.bz2     && echo '1097fbcd48ceccb2bc735d119c9db399a02a8ab9f7dc53e29e47e6a8d0d72e79 *perl-5.8.9.tar.bz2' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.8.9.tar.bz2 -C /usr/src/perl     && rm perl-5.8.9.tar.bz2     && cat *.patch | patch -p1     && gnuArch=\"$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)\"     && archBits=\"$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)\"     && archFlag=\"$([ \"$archBits\" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')\"     && ./Configure -Darchname=\"$gnuArch\" \"$archFlag\" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local -A ccflags=-fwrapv -des     && make -j$(nproc)     && make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && true     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*" shape="box"];
  "sha256:d2ef3be2bba8234f009cd0132917f42d900a4ea3a79ad2af61641d23f01c91c1" [label="mkdir{path=/root}" shape="note"];
  "sha256:d36b6fc26c6cb812fe8d849c8e81baef58efbe1797ff302f0e82068323793e0e" [label="sha256:d36b6fc26c6cb812fe8d849c8e81baef58efbe1797ff302f0e82068323793e0e" shape="plaintext"];
  "sha256:b4fc191af1e59fc97ee4a62b7f87ba8895c6ed6b094574453e2cafea664e7c93" -> "sha256:c9f037bf9be0d70f56b4c18c4f13509c138d2dbaba103609d9159b716324df07" [label=""];
  "sha256:059888de066eacd4ba8efa511d68d48f73f8cceab02be1e49991d64d40aaf095" -> "sha256:c9f037bf9be0d70f56b4c18c4f13509c138d2dbaba103609d9159b716324df07" [label=""];
  "sha256:c9f037bf9be0d70f56b4c18c4f13509c138d2dbaba103609d9159b716324df07" -> "sha256:e566a2b87adb6f548696a717d3572ea3c1711d28282afdde980f19394f56474d" [label=""];
  "sha256:e566a2b87adb6f548696a717d3572ea3c1711d28282afdde980f19394f56474d" -> "sha256:e4c88e9d292b03686e4ea5d3c545c2bd5a0c643cb4819ebeb60f10271d2af381" [label=""];
  "sha256:e4c88e9d292b03686e4ea5d3c545c2bd5a0c643cb4819ebeb60f10271d2af381" -> "sha256:d2ef3be2bba8234f009cd0132917f42d900a4ea3a79ad2af61641d23f01c91c1" [label=""];
  "sha256:d2ef3be2bba8234f009cd0132917f42d900a4ea3a79ad2af61641d23f01c91c1" -> "sha256:d36b6fc26c6cb812fe8d849c8e81baef58efbe1797ff302f0e82068323793e0e" [label=""];
}

