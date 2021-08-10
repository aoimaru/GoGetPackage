[app/sources/254831049.Dockerfile]
digraph {
  "sha256:866e956df07b912c70330315dda0697111eff771a927c652d7e16e5b8c7fa33d" [label="local://context" shape="ellipse"];
  "sha256:6a7e8683d4fd3d6ce668362b32d61daef252c26bd085bd7720f6c45ced033b75" [label="docker-image://docker.io/snapcraft/ubuntu-base:armhf-16.04.1@sha256:96d23d78985f1901a8775cb9cdc41bbef612bad9d269942623df7057fcffa18d" shape="ellipse"];
  "sha256:378d9d5841d3af1eb861e33b167585963bf64fcf814940e1cd33dd9838c01d7b" [label="copy{src=/qemu-arm-static, dest=/usr/bin/qemu-arm-static}" shape="note"];
  "sha256:a8f4aeaca93d37aaa44035b3d34a14bf8882a8fb977a48298cb8e96841518883" [label="/bin/sh -c sed -i \"/^# deb.*universe/ s/^# //\" /etc/apt/sources.list" shape="box"];
  "sha256:377ec26adea238e9543783bddfda9ce292b5bf70979447f1b62d62f22f5ef73f" [label="/bin/sh -c sed -i \"/^# deb.*multiverse/ s/^# //\" /etc/apt/sources.list" shape="box"];
  "sha256:6277f5dfa43bd2cbfbf4d37afb522ad3fe2c23f6d026788d6d47f7330341fff9" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:0fa54beace75335ebb21e22efa773795de640dcf37bb31c99ee9ca0f1eafcf72" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:c3f2e0b5481fb17cb00475dae191a73f17a15d670751fc831b6299cd40817776" [label="/bin/sh -c apt-get install -y --no-install-recommends         devscripts         equivs         git \tca-certificates \tcurl" shape="box"];
  "sha256:fa8dc5e6bcecb0775618fa6dfc520f07368a893a234b525a1ffdead906db32aa" [label="/bin/sh -c git clone --depth 1 --branch ${SNAPCRAFT_VERSION} https://github.com/snapcore/snapcraft" shape="box"];
  "sha256:91e3b4bf6a7559baf39ba13583c623e29d3dd2629e24c6a5080f35f43bc16d6f" [label="/bin/sh -c cd snapcraft  && echo \"override_dh_auto_test:\" >> debian/rules  && mk-build-deps debian/control -i --tool 'apt-get -y --no-install-recommends'  && dpkg-buildpackage -us -uc" shape="box"];
  "sha256:afc788acb6de4e924ab09c4efb4fac7f3b97214f21c82d4dee5ed356c951bf19" [label="/bin/sh -c apt-get install -y ./*.deb  && apt-get remove --purge -y devscripts equivs git python3-fixtures python3-responses python3-setuptools python3-testscenarios python3-testtools  && apt-get autoremove -y  && apt-get clean -y" shape="box"];
  "sha256:2fc425e84dd169ad836d616d8f5cd9dd5229520534a4db941788216930373f02" [label="/bin/sh -c rm -rf /tmp/* /var/tmp/*" shape="box"];
  "sha256:092ef0269ced51c4d0a0d9df55bbb085683d2e6a2c3ebb2897b83a7eb4fe41ef" [label="/bin/sh -c apt-get install -y sudo" shape="box"];
  "sha256:bd3339362d4f0d1f46c3ac538b1989c5880314de0939dba95d3f937baebecae2" [label="/bin/sh -c echo \"ALL ALL=NOPASSWD: /usr/bin/apt-get\" >> /etc/sudoers.d/apt-get  && chmod 0440 /etc/sudoers.d/apt-get" shape="box"];
  "sha256:15c472a0f154833ff1ebdde2f9e96645257344ad08bff1541bfae77529f451d8" [label="/bin/sh -c for i in $(seq 500 1100); do echo snapper:x:$i:100:a build user:/build:/bin/bash ; done | tee -a /etc/passwd" shape="box"];
  "sha256:6c592e32f6d162b354b215c3fd411b4f23269f5bcd44b3756ad7d87d9bf7b9b7" [label="/bin/sh -c apt-get clean" shape="box"];
  "sha256:cd20c12b66c23b26c01e5ea339c2deee160bc931376812ad942dee999611ed5d" [label="mkdir{path=/build}" shape="note"];
  "sha256:c2fcbbffe3d6847e90a62ebe2b46aeed581a2a20ab3e7f09a0df9fac9c6589e9" [label="copy{src=/docker-entrypoint.sh, dest=/usr/local/bin}" shape="note"];
  "sha256:98cb8c91bb57df8672540f49ece76bf69e57f29b47561c311947620f4f6c0ff2" [label="/bin/sh -c chmod 755 /usr/local/bin/docker-entrypoint.sh" shape="box"];
  "sha256:b1b184e6172ce8440f6c80ab94b3c9a7e83d3e8ae87c7873ba576ad1b3602c4e" [label="sha256:b1b184e6172ce8440f6c80ab94b3c9a7e83d3e8ae87c7873ba576ad1b3602c4e" shape="plaintext"];
  "sha256:6a7e8683d4fd3d6ce668362b32d61daef252c26bd085bd7720f6c45ced033b75" -> "sha256:378d9d5841d3af1eb861e33b167585963bf64fcf814940e1cd33dd9838c01d7b" [label=""];
  "sha256:866e956df07b912c70330315dda0697111eff771a927c652d7e16e5b8c7fa33d" -> "sha256:378d9d5841d3af1eb861e33b167585963bf64fcf814940e1cd33dd9838c01d7b" [label=""];
  "sha256:378d9d5841d3af1eb861e33b167585963bf64fcf814940e1cd33dd9838c01d7b" -> "sha256:a8f4aeaca93d37aaa44035b3d34a14bf8882a8fb977a48298cb8e96841518883" [label=""];
  "sha256:a8f4aeaca93d37aaa44035b3d34a14bf8882a8fb977a48298cb8e96841518883" -> "sha256:377ec26adea238e9543783bddfda9ce292b5bf70979447f1b62d62f22f5ef73f" [label=""];
  "sha256:377ec26adea238e9543783bddfda9ce292b5bf70979447f1b62d62f22f5ef73f" -> "sha256:6277f5dfa43bd2cbfbf4d37afb522ad3fe2c23f6d026788d6d47f7330341fff9" [label=""];
  "sha256:6277f5dfa43bd2cbfbf4d37afb522ad3fe2c23f6d026788d6d47f7330341fff9" -> "sha256:0fa54beace75335ebb21e22efa773795de640dcf37bb31c99ee9ca0f1eafcf72" [label=""];
  "sha256:0fa54beace75335ebb21e22efa773795de640dcf37bb31c99ee9ca0f1eafcf72" -> "sha256:c3f2e0b5481fb17cb00475dae191a73f17a15d670751fc831b6299cd40817776" [label=""];
  "sha256:c3f2e0b5481fb17cb00475dae191a73f17a15d670751fc831b6299cd40817776" -> "sha256:fa8dc5e6bcecb0775618fa6dfc520f07368a893a234b525a1ffdead906db32aa" [label=""];
  "sha256:fa8dc5e6bcecb0775618fa6dfc520f07368a893a234b525a1ffdead906db32aa" -> "sha256:91e3b4bf6a7559baf39ba13583c623e29d3dd2629e24c6a5080f35f43bc16d6f" [label=""];
  "sha256:91e3b4bf6a7559baf39ba13583c623e29d3dd2629e24c6a5080f35f43bc16d6f" -> "sha256:afc788acb6de4e924ab09c4efb4fac7f3b97214f21c82d4dee5ed356c951bf19" [label=""];
  "sha256:afc788acb6de4e924ab09c4efb4fac7f3b97214f21c82d4dee5ed356c951bf19" -> "sha256:2fc425e84dd169ad836d616d8f5cd9dd5229520534a4db941788216930373f02" [label=""];
  "sha256:2fc425e84dd169ad836d616d8f5cd9dd5229520534a4db941788216930373f02" -> "sha256:092ef0269ced51c4d0a0d9df55bbb085683d2e6a2c3ebb2897b83a7eb4fe41ef" [label=""];
  "sha256:092ef0269ced51c4d0a0d9df55bbb085683d2e6a2c3ebb2897b83a7eb4fe41ef" -> "sha256:bd3339362d4f0d1f46c3ac538b1989c5880314de0939dba95d3f937baebecae2" [label=""];
  "sha256:bd3339362d4f0d1f46c3ac538b1989c5880314de0939dba95d3f937baebecae2" -> "sha256:15c472a0f154833ff1ebdde2f9e96645257344ad08bff1541bfae77529f451d8" [label=""];
  "sha256:15c472a0f154833ff1ebdde2f9e96645257344ad08bff1541bfae77529f451d8" -> "sha256:6c592e32f6d162b354b215c3fd411b4f23269f5bcd44b3756ad7d87d9bf7b9b7" [label=""];
  "sha256:6c592e32f6d162b354b215c3fd411b4f23269f5bcd44b3756ad7d87d9bf7b9b7" -> "sha256:cd20c12b66c23b26c01e5ea339c2deee160bc931376812ad942dee999611ed5d" [label=""];
  "sha256:cd20c12b66c23b26c01e5ea339c2deee160bc931376812ad942dee999611ed5d" -> "sha256:c2fcbbffe3d6847e90a62ebe2b46aeed581a2a20ab3e7f09a0df9fac9c6589e9" [label=""];
  "sha256:866e956df07b912c70330315dda0697111eff771a927c652d7e16e5b8c7fa33d" -> "sha256:c2fcbbffe3d6847e90a62ebe2b46aeed581a2a20ab3e7f09a0df9fac9c6589e9" [label=""];
  "sha256:c2fcbbffe3d6847e90a62ebe2b46aeed581a2a20ab3e7f09a0df9fac9c6589e9" -> "sha256:98cb8c91bb57df8672540f49ece76bf69e57f29b47561c311947620f4f6c0ff2" [label=""];
  "sha256:98cb8c91bb57df8672540f49ece76bf69e57f29b47561c311947620f4f6c0ff2" -> "sha256:b1b184e6172ce8440f6c80ab94b3c9a7e83d3e8ae87c7873ba576ad1b3602c4e" [label=""];
}

