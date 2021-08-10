[app/sources/384742547.Dockerfile]
digraph {
  "sha256:c27bd3f57f20112bdcbc8504db1449badfaa14b258faa7279aa7ad4a8cb84c15" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:55907079edf6aed827071c09f034316075db98e59594fae803c51bd3d926edd0" [label="copy{src=/scripts/android-base-apt-get.sh, dest=/scripts/}" shape="note"];
  "sha256:1d09ed0d00c2c4a0b48dc1f743cd4fb24f366d7a0107442ada4d25b32df44fc5" [label="/bin/sh -c sh /scripts/android-base-apt-get.sh" shape="box"];
  "sha256:9992714ed9ff4e3eeaeb90fa45d4c3cf031cdcdeed6e9cbda6845c3e2a28673d" [label="copy{src=/scripts/android-ndk.sh, dest=/scripts/}" shape="note"];
  "sha256:f19bf2d4144b40a4afa6e27bcb22179154087fb623f9f1b835f205fad7f7cfc0" [label="/bin/sh -c . /scripts/android-ndk.sh &&     download_ndk android-ndk-r13b-linux-x86_64.zip &&     make_standalone_toolchain x86 9 &&     make_standalone_toolchain x86 21 &&     remove_ndk" shape="box"];
  "sha256:4052bf1a417b2487757689eb2da552bc5761722536ac4939da5c7d7abe8ef905" [label="/bin/sh -c chmod 777 /android/ndk &&     ln -s /android/ndk/x86-21 /android/ndk/x86" shape="box"];
  "sha256:14bcc3f1b16f2f2e5db865219071d88971165169f7de2b707c1be46aa21ba32b" [label="copy{src=/scripts/sccache.sh, dest=/scripts/}" shape="note"];
  "sha256:5967bfa1ea4be1ab5222b3066182865ff3a081752958981ea6d5575709ad809b" [label="/bin/sh -c sh /scripts/sccache.sh" shape="box"];
  "sha256:26e563799be51c74031b0fecdec3ef7b9470353588c174cba04c2997e0d3b0d0" [label="sha256:26e563799be51c74031b0fecdec3ef7b9470353588c174cba04c2997e0d3b0d0" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:55907079edf6aed827071c09f034316075db98e59594fae803c51bd3d926edd0" [label=""];
  "sha256:c27bd3f57f20112bdcbc8504db1449badfaa14b258faa7279aa7ad4a8cb84c15" -> "sha256:55907079edf6aed827071c09f034316075db98e59594fae803c51bd3d926edd0" [label=""];
  "sha256:55907079edf6aed827071c09f034316075db98e59594fae803c51bd3d926edd0" -> "sha256:1d09ed0d00c2c4a0b48dc1f743cd4fb24f366d7a0107442ada4d25b32df44fc5" [label=""];
  "sha256:1d09ed0d00c2c4a0b48dc1f743cd4fb24f366d7a0107442ada4d25b32df44fc5" -> "sha256:9992714ed9ff4e3eeaeb90fa45d4c3cf031cdcdeed6e9cbda6845c3e2a28673d" [label=""];
  "sha256:c27bd3f57f20112bdcbc8504db1449badfaa14b258faa7279aa7ad4a8cb84c15" -> "sha256:9992714ed9ff4e3eeaeb90fa45d4c3cf031cdcdeed6e9cbda6845c3e2a28673d" [label=""];
  "sha256:9992714ed9ff4e3eeaeb90fa45d4c3cf031cdcdeed6e9cbda6845c3e2a28673d" -> "sha256:f19bf2d4144b40a4afa6e27bcb22179154087fb623f9f1b835f205fad7f7cfc0" [label=""];
  "sha256:f19bf2d4144b40a4afa6e27bcb22179154087fb623f9f1b835f205fad7f7cfc0" -> "sha256:4052bf1a417b2487757689eb2da552bc5761722536ac4939da5c7d7abe8ef905" [label=""];
  "sha256:4052bf1a417b2487757689eb2da552bc5761722536ac4939da5c7d7abe8ef905" -> "sha256:14bcc3f1b16f2f2e5db865219071d88971165169f7de2b707c1be46aa21ba32b" [label=""];
  "sha256:c27bd3f57f20112bdcbc8504db1449badfaa14b258faa7279aa7ad4a8cb84c15" -> "sha256:14bcc3f1b16f2f2e5db865219071d88971165169f7de2b707c1be46aa21ba32b" [label=""];
  "sha256:14bcc3f1b16f2f2e5db865219071d88971165169f7de2b707c1be46aa21ba32b" -> "sha256:5967bfa1ea4be1ab5222b3066182865ff3a081752958981ea6d5575709ad809b" [label=""];
  "sha256:5967bfa1ea4be1ab5222b3066182865ff3a081752958981ea6d5575709ad809b" -> "sha256:26e563799be51c74031b0fecdec3ef7b9470353588c174cba04c2997e0d3b0d0" [label=""];
}

