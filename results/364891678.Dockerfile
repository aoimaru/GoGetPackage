[app/sources/364891678.Dockerfile]
digraph {
  "sha256:a2ee2b563f72d08a80b1057cce0fd71ae31a2514b78648a1c446c823bc6dc736" [label="docker-image://docker.io/library/debian:stable" shape="ellipse"];
  "sha256:06c8ce23b73feac461a878b052ead989900d7ebe203248fc484913f42e2071f8" [label="/bin/sh -c apt-get update && apt-get install -y \tbc \tbzip2 \tcpio \tfile \tgcc \tg++ \tgit \tgzip \tmake \tncurses-dev \tpython \tunzip \twget \tautotools-dev \tautomake \tlibtool" shape="box"];
  "sha256:63867873d656c20ad8d2b351511cc79e5c8371c8721e97bd6c45ca4b030d8ec2" [label="mkdir{path=/root}" shape="note"];
  "sha256:b25a67495c08a218557bf3b8a33e92a437e157b88f387196a5dba88df2b02a1a" [label="/bin/sh -c wget https://buildroot.org/downloads/buildroot-2017.08.tar.gz" shape="box"];
  "sha256:1d805ddadb4ddb5d681196d38785145b2f8d7628946042fe4e36839b9ac4547f" [label="/bin/sh -c tar zxvf buildroot-2017.08.tar.gz && mv buildroot-2017.08 buildroot-precompiled-2017.08" shape="box"];
  "sha256:3134ad11045f3f1647061305482be43befcf19afdacae396258f8b85a85108f7" [label="mkdir{path=/root/buildroot-precompiled-2017.08}" shape="note"];
  "sha256:ee1e27c5ce6d1b1a6691194d984eedc092bb39ed4bc2ce2fcbec5392ba269f15" [label="local://context" shape="ellipse"];
  "sha256:1b82c1fca8172e3af421921ff84f7062cc13a468c85c9caf5849e7f7047af100" [label="copy{src=/users.tables, dest=/root/buildroot-precompiled-2017.08/users.tables}" shape="note"];
  "sha256:d7f101496933769d2b27ecf863d27c2af7a3c22d66779e63f49d4d2e98a89b82" [label="copy{src=/defconfig, dest=/root/buildroot-precompiled-2017.08/configs/embsys_defconfig}" shape="note"];
  "sha256:df1045aeb3ce1b23e84a66a6d0717eb32e9952bf3cf926e6a2253058067c0659" [label="copy{src=/busybox.config, dest=/root/buildroot-precompiled-2017.08/busybox.config}" shape="note"];
  "sha256:8575ed163468de811c94915d126d4cd6c7142e6384957506dfe654aa26261e04" [label="/bin/sh -c make embsys_defconfig && make && rm -rf dl/* && rm -rf output/build/*" shape="box"];
  "sha256:2ff7163085b5b5206c67f0660ecda8631d4bf31052166bc8cc92889c5004c9e4" [label="mkdir{path=/root}" shape="note"];
  "sha256:86609d90c10aaaf574b9dc0a4fd8d8723bf4c3619a67c0387e590d6ccc7162b9" [label="/bin/sh -c tar zcvf buildroot-precompiled-2017.08.tar.gz buildroot-precompiled-2017.08" shape="box"];
  "sha256:10107de7de69b41f96c3bb0a6d257cbed76b341bc6ae7acda81feb0c386ad364" [label="sha256:10107de7de69b41f96c3bb0a6d257cbed76b341bc6ae7acda81feb0c386ad364" shape="plaintext"];
  "sha256:a2ee2b563f72d08a80b1057cce0fd71ae31a2514b78648a1c446c823bc6dc736" -> "sha256:06c8ce23b73feac461a878b052ead989900d7ebe203248fc484913f42e2071f8" [label=""];
  "sha256:06c8ce23b73feac461a878b052ead989900d7ebe203248fc484913f42e2071f8" -> "sha256:63867873d656c20ad8d2b351511cc79e5c8371c8721e97bd6c45ca4b030d8ec2" [label=""];
  "sha256:63867873d656c20ad8d2b351511cc79e5c8371c8721e97bd6c45ca4b030d8ec2" -> "sha256:b25a67495c08a218557bf3b8a33e92a437e157b88f387196a5dba88df2b02a1a" [label=""];
  "sha256:b25a67495c08a218557bf3b8a33e92a437e157b88f387196a5dba88df2b02a1a" -> "sha256:1d805ddadb4ddb5d681196d38785145b2f8d7628946042fe4e36839b9ac4547f" [label=""];
  "sha256:1d805ddadb4ddb5d681196d38785145b2f8d7628946042fe4e36839b9ac4547f" -> "sha256:3134ad11045f3f1647061305482be43befcf19afdacae396258f8b85a85108f7" [label=""];
  "sha256:3134ad11045f3f1647061305482be43befcf19afdacae396258f8b85a85108f7" -> "sha256:1b82c1fca8172e3af421921ff84f7062cc13a468c85c9caf5849e7f7047af100" [label=""];
  "sha256:ee1e27c5ce6d1b1a6691194d984eedc092bb39ed4bc2ce2fcbec5392ba269f15" -> "sha256:1b82c1fca8172e3af421921ff84f7062cc13a468c85c9caf5849e7f7047af100" [label=""];
  "sha256:1b82c1fca8172e3af421921ff84f7062cc13a468c85c9caf5849e7f7047af100" -> "sha256:d7f101496933769d2b27ecf863d27c2af7a3c22d66779e63f49d4d2e98a89b82" [label=""];
  "sha256:ee1e27c5ce6d1b1a6691194d984eedc092bb39ed4bc2ce2fcbec5392ba269f15" -> "sha256:d7f101496933769d2b27ecf863d27c2af7a3c22d66779e63f49d4d2e98a89b82" [label=""];
  "sha256:d7f101496933769d2b27ecf863d27c2af7a3c22d66779e63f49d4d2e98a89b82" -> "sha256:df1045aeb3ce1b23e84a66a6d0717eb32e9952bf3cf926e6a2253058067c0659" [label=""];
  "sha256:ee1e27c5ce6d1b1a6691194d984eedc092bb39ed4bc2ce2fcbec5392ba269f15" -> "sha256:df1045aeb3ce1b23e84a66a6d0717eb32e9952bf3cf926e6a2253058067c0659" [label=""];
  "sha256:df1045aeb3ce1b23e84a66a6d0717eb32e9952bf3cf926e6a2253058067c0659" -> "sha256:8575ed163468de811c94915d126d4cd6c7142e6384957506dfe654aa26261e04" [label=""];
  "sha256:8575ed163468de811c94915d126d4cd6c7142e6384957506dfe654aa26261e04" -> "sha256:2ff7163085b5b5206c67f0660ecda8631d4bf31052166bc8cc92889c5004c9e4" [label=""];
  "sha256:2ff7163085b5b5206c67f0660ecda8631d4bf31052166bc8cc92889c5004c9e4" -> "sha256:86609d90c10aaaf574b9dc0a4fd8d8723bf4c3619a67c0387e590d6ccc7162b9" [label=""];
  "sha256:86609d90c10aaaf574b9dc0a4fd8d8723bf4c3619a67c0387e590d6ccc7162b9" -> "sha256:10107de7de69b41f96c3bb0a6d257cbed76b341bc6ae7acda81feb0c386ad364" [label=""];
}

