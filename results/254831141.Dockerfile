[app/sources/254831141.Dockerfile]
digraph {
  "sha256:f55725d105db81e284a02bc5e533cb0cd7a359627dda86f94111bd15d04e148d" [label="docker-image://docker.io/snapcraft/ubuntu-base:i386-16.04.2" shape="ellipse"];
  "sha256:ce64c99f7e243eb834d0977d0a2f466d28dc9fed4c9f5349e16e2f0586b7d7d7" [label="/bin/sh -c sed -i \"/^# deb.*universe/ s/^# //\" /etc/apt/sources.list" shape="box"];
  "sha256:8ab34d60e3530ebcd4aad17bc4a69f458693eb4c8a3ec28380281dd54dccb994" [label="/bin/sh -c sed -i \"/^# deb.*multiverse/ s/^# //\" /etc/apt/sources.list" shape="box"];
  "sha256:c3ccf6033e6bd97fc7c346023a54e00dd6b9a4c610d1d9a9099806e93bd8742b" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:9f9cec486ef403b0abb40de026174d2c512d3acab9f18a41ac8a2d92a3f1aa82" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:c6271690c3c90d4ece961d111ce985e7f154c80b6fa20610669088704a17f5d7" [label="/bin/sh -c apt-get install -y --no-install-recommends         devscripts         equivs         git         ca-certificates         curl" shape="box"];
  "sha256:2f90dd86d560d531cff877cffa4b05903667833b4efc08656b6fca4bda9992ff" [label="/bin/sh -c git clone --depth 1 --branch ${SNAPCRAFT_VERSION} https://github.com/snapcore/snapcraft  && cd snapcraft  && rm -f snapcraft/tests/plugins/test_rust.py  && mk-build-deps debian/control -i --tool 'apt-get -y --no-install-recommends'  && dpkg-buildpackage -us -uc  && apt-get install -y ../*.deb  && apt-get remove --purge -y devscripts equivs git python3-fixtures python3-responses python3-setuptools python3-testscenarios python3-testtools  && apt-get autoremove -y  && apt-get clean -y" shape="box"];
  "sha256:a7c92731fd45362dabb569c70765c7fb7e2b87e3b94dd4aeced3c89187f5ce3b" [label="/bin/sh -c rm -rf /tmp/* /var/tmp/*" shape="box"];
  "sha256:21bbc78bb90f687d997d5ce64aa9c575b96da25fa0c32d171b6bbd9b8748bf2d" [label="/bin/sh -c apt-get install -y sudo" shape="box"];
  "sha256:f4eecd926ea7ae9d0cffd0754da3b4294376b097b477c519640377b0e7d9396c" [label="/bin/sh -c echo \"ALL ALL=NOPASSWD: /usr/bin/apt-get,/usr/bin/apt-mark\" >> /etc/sudoers.d/apt-get  && chmod 0440 /etc/sudoers.d/apt-get" shape="box"];
  "sha256:4be9e7cae1069ea6e72b2dbcb53c798cb2c6c963a6887070da3116df4444e6a8" [label="/bin/sh -c for i in $(seq 500 1100); do echo snapper:x:$i:100:a build user:/build:/bin/bash ; done | tee -a /etc/passwd" shape="box"];
  "sha256:4d9729ea9afd1c6dcf01421f1a1df2f57f7815ddeee6be1fc373a20de4b93557" [label="/bin/sh -c apt-get clean" shape="box"];
  "sha256:c9e8c562e04adfea07a2a9c05dc30b8aa82b741930f11ae4f67790699c83e29d" [label="/bin/sh -c chgrp -R 100 /home  && chmod g+rwx /home" shape="box"];
  "sha256:f5d39149a46a83854cb63950c2e487cb181b3e080e58e189ca03885a9e8b077c" [label="mkdir{path=/build}" shape="note"];
  "sha256:dd4437c813042c731ed8f8834d268ca4ec40aacb73d5e0c2aad297e91c041055" [label="local://context" shape="ellipse"];
  "sha256:e5ece686e088309d2522f4c461118f4ad3d9935ade40c971eeab8fba3f264224" [label="copy{src=/docker-entrypoint.sh, dest=/usr/local/bin}" shape="note"];
  "sha256:f903bb3adda249c28c288d883ac86852e7de845a5a891cc2b49d39e763d1d077" [label="/bin/sh -c chmod 755 /usr/local/bin/docker-entrypoint.sh" shape="box"];
  "sha256:6b0a068a3e9b637dedf2024c8d91dea7fd4ce2f62e11edc322023836a609b7f4" [label="sha256:6b0a068a3e9b637dedf2024c8d91dea7fd4ce2f62e11edc322023836a609b7f4" shape="plaintext"];
  "sha256:f55725d105db81e284a02bc5e533cb0cd7a359627dda86f94111bd15d04e148d" -> "sha256:ce64c99f7e243eb834d0977d0a2f466d28dc9fed4c9f5349e16e2f0586b7d7d7" [label=""];
  "sha256:ce64c99f7e243eb834d0977d0a2f466d28dc9fed4c9f5349e16e2f0586b7d7d7" -> "sha256:8ab34d60e3530ebcd4aad17bc4a69f458693eb4c8a3ec28380281dd54dccb994" [label=""];
  "sha256:8ab34d60e3530ebcd4aad17bc4a69f458693eb4c8a3ec28380281dd54dccb994" -> "sha256:c3ccf6033e6bd97fc7c346023a54e00dd6b9a4c610d1d9a9099806e93bd8742b" [label=""];
  "sha256:c3ccf6033e6bd97fc7c346023a54e00dd6b9a4c610d1d9a9099806e93bd8742b" -> "sha256:9f9cec486ef403b0abb40de026174d2c512d3acab9f18a41ac8a2d92a3f1aa82" [label=""];
  "sha256:9f9cec486ef403b0abb40de026174d2c512d3acab9f18a41ac8a2d92a3f1aa82" -> "sha256:c6271690c3c90d4ece961d111ce985e7f154c80b6fa20610669088704a17f5d7" [label=""];
  "sha256:c6271690c3c90d4ece961d111ce985e7f154c80b6fa20610669088704a17f5d7" -> "sha256:2f90dd86d560d531cff877cffa4b05903667833b4efc08656b6fca4bda9992ff" [label=""];
  "sha256:2f90dd86d560d531cff877cffa4b05903667833b4efc08656b6fca4bda9992ff" -> "sha256:a7c92731fd45362dabb569c70765c7fb7e2b87e3b94dd4aeced3c89187f5ce3b" [label=""];
  "sha256:a7c92731fd45362dabb569c70765c7fb7e2b87e3b94dd4aeced3c89187f5ce3b" -> "sha256:21bbc78bb90f687d997d5ce64aa9c575b96da25fa0c32d171b6bbd9b8748bf2d" [label=""];
  "sha256:21bbc78bb90f687d997d5ce64aa9c575b96da25fa0c32d171b6bbd9b8748bf2d" -> "sha256:f4eecd926ea7ae9d0cffd0754da3b4294376b097b477c519640377b0e7d9396c" [label=""];
  "sha256:f4eecd926ea7ae9d0cffd0754da3b4294376b097b477c519640377b0e7d9396c" -> "sha256:4be9e7cae1069ea6e72b2dbcb53c798cb2c6c963a6887070da3116df4444e6a8" [label=""];
  "sha256:4be9e7cae1069ea6e72b2dbcb53c798cb2c6c963a6887070da3116df4444e6a8" -> "sha256:4d9729ea9afd1c6dcf01421f1a1df2f57f7815ddeee6be1fc373a20de4b93557" [label=""];
  "sha256:4d9729ea9afd1c6dcf01421f1a1df2f57f7815ddeee6be1fc373a20de4b93557" -> "sha256:c9e8c562e04adfea07a2a9c05dc30b8aa82b741930f11ae4f67790699c83e29d" [label=""];
  "sha256:c9e8c562e04adfea07a2a9c05dc30b8aa82b741930f11ae4f67790699c83e29d" -> "sha256:f5d39149a46a83854cb63950c2e487cb181b3e080e58e189ca03885a9e8b077c" [label=""];
  "sha256:f5d39149a46a83854cb63950c2e487cb181b3e080e58e189ca03885a9e8b077c" -> "sha256:e5ece686e088309d2522f4c461118f4ad3d9935ade40c971eeab8fba3f264224" [label=""];
  "sha256:dd4437c813042c731ed8f8834d268ca4ec40aacb73d5e0c2aad297e91c041055" -> "sha256:e5ece686e088309d2522f4c461118f4ad3d9935ade40c971eeab8fba3f264224" [label=""];
  "sha256:e5ece686e088309d2522f4c461118f4ad3d9935ade40c971eeab8fba3f264224" -> "sha256:f903bb3adda249c28c288d883ac86852e7de845a5a891cc2b49d39e763d1d077" [label=""];
  "sha256:f903bb3adda249c28c288d883ac86852e7de845a5a891cc2b49d39e763d1d077" -> "sha256:6b0a068a3e9b637dedf2024c8d91dea7fd4ce2f62e11edc322023836a609b7f4" [label=""];
}

