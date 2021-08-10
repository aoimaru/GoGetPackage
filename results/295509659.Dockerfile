[app/sources/295509659.Dockerfile]
digraph {
  "sha256:b16cc233de7d602fbbeb322549e1a80138ecff3faa3a810ec6f5a268736ce655" [label="local://context" shape="ellipse"];
  "sha256:b55c7f1e5f1df17c65ca0bc8dc50f83127addebe84a1374b0cdfa570d931ec39" [label="docker-image://registry.access.redhat.com/rhel7:latest" shape="ellipse"];
  "sha256:12f57cfef582ed5d58a527ae8dfabd98ecc22a1a1e1a22d9682026a3fe50d577" [label="copy{src=/redhat/atomic/pgo_backrest_repo/help.1, dest=/help.1}" shape="note"];
  "sha256:d9493fc8a8085cf1fdfe57e67957145cd792cfed7efc3333f8f655f76707692c" [label="copy{src=/redhat/atomic/pgo_backrest_repo/help.md, dest=/help.md}" shape="note"];
  "sha256:8ed35a69739ee540c5b10b1a5e12ab78b819d80469bd0a1da9c70310eaae3194" [label="copy{src=/redhat/licenses, dest=/licenses}" shape="note"];
  "sha256:4f553c26f8934c571d8a076e2ccbe064c37fad6b4904aaaff532f346770c85b9" [label="copy{src=/conf/RPM-GPG-KEY-crunchydata, dest=/}" shape="note"];
  "sha256:6a7b2db79a1a8fc939bc96d4ad6b0df9c3f704aa7733be0db92e94967bfbb506" [label="copy{src=/conf/crunchypg11.repo, dest=/etc/yum.repos.d/}" shape="note"];
  "sha256:19521a996f9db1fb64dee7afe211a620dcf24f28e9e0d6fe6fa237a33270a069" [label="/bin/sh -c rpm --import RPM-GPG-KEY-crunchydata" shape="box"];
  "sha256:a8798f3504ae9a5e79b491d585aa8f2658ce61cbee18f5c4a223b2f311793fe7" [label="/bin/sh -c yum -y --enablerepo=rhel-7-server-ose-3.11-rpms --disablerepo=crunchy* update && yum -y install psmisc openssh-server openssh-clients crunchy-backrest-\"${BACKREST_VERSION}\" hostname pgocps-ng && yum -y clean all" shape="box"];
  "sha256:0401a3a8fc33fab5bff061d053dc6422990101fe26f975b67530117a5b2c31a2" [label="/bin/sh -c groupadd pgbackrest -g 2000 && useradd pgbackrest -u 2000 -g 2000" shape="box"];
  "sha256:62131fe71d690337166c0f656ef85482ed6633395980ad234ea99f42d2788153" [label="copy{src=/bin/pgo-backrest-repo/pgo-backrest-repo.sh, dest=/usr/local/bin}" shape="note"];
  "sha256:c0f43b39cbec5a75afa4acc7612e991809fdcca3a945485d960bf1402de7af4a" [label="/bin/sh -c chmod +x /usr/local/bin/pgo-backrest-repo.sh && mkdir -p /opt/cpm/bin && chown -R pgbackrest:pgbackrest /opt/cpm" shape="box"];
  "sha256:80431e776dfa38fc9acaac1d782834cf1ffe82d150333dfe074b5c5f256ae761" [label="copy{src=/bin/uid_pgbackrest.sh, dest=/opt/cpm/bin}" shape="note"];
  "sha256:85b21c3304f977c850a61b397c8045c408858a4cb579e08986e38c9883d6f50f" [label="copy{src=/conf/pgo-backrest-repo/.bashrc, dest=/}" shape="note"];
  "sha256:a48993d3f04399abd54c30a77eb12b1b2527e4ecc49143e30ee3021104036a2a" [label="/bin/sh -c chmod g=u /etc/passwd &&         chmod g=u /etc/group" shape="box"];
  "sha256:cda667d11a2711690886b919611c4773e8a3a1b77e7c71a79b8e12262e2dbfc9" [label="/bin/sh -c mkdir /.ssh && chown pgbackrest:pgbackrest /.ssh && chmod o+rwx /.ssh" shape="box"];
  "sha256:bcb6acf1d214e3f1b8241928e51c1e5f6a2f4d22cd4ae862b8049c971f746986" [label="sha256:bcb6acf1d214e3f1b8241928e51c1e5f6a2f4d22cd4ae862b8049c971f746986" shape="plaintext"];
  "sha256:b55c7f1e5f1df17c65ca0bc8dc50f83127addebe84a1374b0cdfa570d931ec39" -> "sha256:12f57cfef582ed5d58a527ae8dfabd98ecc22a1a1e1a22d9682026a3fe50d577" [label=""];
  "sha256:b16cc233de7d602fbbeb322549e1a80138ecff3faa3a810ec6f5a268736ce655" -> "sha256:12f57cfef582ed5d58a527ae8dfabd98ecc22a1a1e1a22d9682026a3fe50d577" [label=""];
  "sha256:12f57cfef582ed5d58a527ae8dfabd98ecc22a1a1e1a22d9682026a3fe50d577" -> "sha256:d9493fc8a8085cf1fdfe57e67957145cd792cfed7efc3333f8f655f76707692c" [label=""];
  "sha256:b16cc233de7d602fbbeb322549e1a80138ecff3faa3a810ec6f5a268736ce655" -> "sha256:d9493fc8a8085cf1fdfe57e67957145cd792cfed7efc3333f8f655f76707692c" [label=""];
  "sha256:d9493fc8a8085cf1fdfe57e67957145cd792cfed7efc3333f8f655f76707692c" -> "sha256:8ed35a69739ee540c5b10b1a5e12ab78b819d80469bd0a1da9c70310eaae3194" [label=""];
  "sha256:b16cc233de7d602fbbeb322549e1a80138ecff3faa3a810ec6f5a268736ce655" -> "sha256:8ed35a69739ee540c5b10b1a5e12ab78b819d80469bd0a1da9c70310eaae3194" [label=""];
  "sha256:8ed35a69739ee540c5b10b1a5e12ab78b819d80469bd0a1da9c70310eaae3194" -> "sha256:4f553c26f8934c571d8a076e2ccbe064c37fad6b4904aaaff532f346770c85b9" [label=""];
  "sha256:b16cc233de7d602fbbeb322549e1a80138ecff3faa3a810ec6f5a268736ce655" -> "sha256:4f553c26f8934c571d8a076e2ccbe064c37fad6b4904aaaff532f346770c85b9" [label=""];
  "sha256:4f553c26f8934c571d8a076e2ccbe064c37fad6b4904aaaff532f346770c85b9" -> "sha256:6a7b2db79a1a8fc939bc96d4ad6b0df9c3f704aa7733be0db92e94967bfbb506" [label=""];
  "sha256:b16cc233de7d602fbbeb322549e1a80138ecff3faa3a810ec6f5a268736ce655" -> "sha256:6a7b2db79a1a8fc939bc96d4ad6b0df9c3f704aa7733be0db92e94967bfbb506" [label=""];
  "sha256:6a7b2db79a1a8fc939bc96d4ad6b0df9c3f704aa7733be0db92e94967bfbb506" -> "sha256:19521a996f9db1fb64dee7afe211a620dcf24f28e9e0d6fe6fa237a33270a069" [label=""];
  "sha256:19521a996f9db1fb64dee7afe211a620dcf24f28e9e0d6fe6fa237a33270a069" -> "sha256:a8798f3504ae9a5e79b491d585aa8f2658ce61cbee18f5c4a223b2f311793fe7" [label=""];
  "sha256:a8798f3504ae9a5e79b491d585aa8f2658ce61cbee18f5c4a223b2f311793fe7" -> "sha256:0401a3a8fc33fab5bff061d053dc6422990101fe26f975b67530117a5b2c31a2" [label=""];
  "sha256:0401a3a8fc33fab5bff061d053dc6422990101fe26f975b67530117a5b2c31a2" -> "sha256:62131fe71d690337166c0f656ef85482ed6633395980ad234ea99f42d2788153" [label=""];
  "sha256:b16cc233de7d602fbbeb322549e1a80138ecff3faa3a810ec6f5a268736ce655" -> "sha256:62131fe71d690337166c0f656ef85482ed6633395980ad234ea99f42d2788153" [label=""];
  "sha256:62131fe71d690337166c0f656ef85482ed6633395980ad234ea99f42d2788153" -> "sha256:c0f43b39cbec5a75afa4acc7612e991809fdcca3a945485d960bf1402de7af4a" [label=""];
  "sha256:c0f43b39cbec5a75afa4acc7612e991809fdcca3a945485d960bf1402de7af4a" -> "sha256:80431e776dfa38fc9acaac1d782834cf1ffe82d150333dfe074b5c5f256ae761" [label=""];
  "sha256:b16cc233de7d602fbbeb322549e1a80138ecff3faa3a810ec6f5a268736ce655" -> "sha256:80431e776dfa38fc9acaac1d782834cf1ffe82d150333dfe074b5c5f256ae761" [label=""];
  "sha256:80431e776dfa38fc9acaac1d782834cf1ffe82d150333dfe074b5c5f256ae761" -> "sha256:85b21c3304f977c850a61b397c8045c408858a4cb579e08986e38c9883d6f50f" [label=""];
  "sha256:b16cc233de7d602fbbeb322549e1a80138ecff3faa3a810ec6f5a268736ce655" -> "sha256:85b21c3304f977c850a61b397c8045c408858a4cb579e08986e38c9883d6f50f" [label=""];
  "sha256:85b21c3304f977c850a61b397c8045c408858a4cb579e08986e38c9883d6f50f" -> "sha256:a48993d3f04399abd54c30a77eb12b1b2527e4ecc49143e30ee3021104036a2a" [label=""];
  "sha256:a48993d3f04399abd54c30a77eb12b1b2527e4ecc49143e30ee3021104036a2a" -> "sha256:cda667d11a2711690886b919611c4773e8a3a1b77e7c71a79b8e12262e2dbfc9" [label=""];
  "sha256:cda667d11a2711690886b919611c4773e8a3a1b77e7c71a79b8e12262e2dbfc9" -> "sha256:bcb6acf1d214e3f1b8241928e51c1e5f6a2f4d22cd4ae862b8049c971f746986" [label=""];
}

