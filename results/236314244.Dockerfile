[app/sources/236314244.Dockerfile]
digraph {
  "sha256:a40b8235aa776fdb1d99a42286d6d2a0902809136b680d72986b13bbc7e62859" [label="docker-image://gcr.io/google_containers/kube-cross:KUBE_BUILD_IMAGE_CROSS_TAG" shape="ellipse"];
  "sha256:f4face1eac3bc1fcf94c1c0a601031b47ef37ad627b66be771256c1125ea7352" [label="/bin/sh -c touch /kube-build-image" shape="box"];
  "sha256:cefab69e35718da83be744d30c581bb88ca8583698b77f6c93243edfe3d1aee5" [label="/bin/sh -c chmod -R a+rwx /usr/local/go/pkg ${K8S_PATCHED_GOROOT}/pkg" shape="box"];
  "sha256:15988cf10c07062af9f515e309a31f849366ce6b0bc0183e1f5aa6c3e5b0011f" [label="/bin/sh -c mkdir /var/run/kubernetes && chmod a+rwx /var/run/kubernetes" shape="box"];
  "sha256:7227fd7088f31941459b1a099d8e8bd46c785990ab719dc18a92039f0b46994e" [label="mkdir{path=/go/src/k8s.io/kubernetes}" shape="note"];
  "sha256:f6628a5f7424ca8176fdc1619ebd457d3ad08c1f1ef073d9dce43f1e7fa4eddb" [label="local://context" shape="ellipse"];
  "sha256:fbc9c74754fce969bdc4e3a3bc109d7d0a3b4b4a512baa077265dbca3c0210b9" [label="copy{src=/localtime, dest=/etc/localtime}" shape="note"];
  "sha256:c5d6de8dcc576a14a05a4ebf46bd3df6b7b7ff2a9c80c61463254b6cf4de93c0" [label="/bin/sh -c chmod a+r /etc/localtime" shape="box"];
  "sha256:ea54474ca24360d31652ed1784aa3bbc9ab281af048658857488956a0c52ae46" [label="copy{src=/rsyncd.password, dest=/}" shape="note"];
  "sha256:a7005afb4052d515020a0d0b619ecfb1b3ed475f289a1268830afb662c0af507" [label="/bin/sh -c chmod a+r /rsyncd.password" shape="box"];
  "sha256:d097dcf4c62ebc37e08b9b2144366b8ad3fec9a673d5976873d23f7cfe8c3ceb" [label="copy{src=/rsyncd.sh, dest=/}" shape="note"];
  "sha256:fa327726b60be17ba99594a2c6282963f3e3cb7f7183f89d6e44246ce33b1e1b" [label="/bin/sh -c chmod a+rx /rsyncd.sh" shape="box"];
  "sha256:c86277912ae84f775977ae88698adb4a9b6fc41df2eff21d7daee105e8cd0064" [label="sha256:c86277912ae84f775977ae88698adb4a9b6fc41df2eff21d7daee105e8cd0064" shape="plaintext"];
  "sha256:a40b8235aa776fdb1d99a42286d6d2a0902809136b680d72986b13bbc7e62859" -> "sha256:f4face1eac3bc1fcf94c1c0a601031b47ef37ad627b66be771256c1125ea7352" [label=""];
  "sha256:f4face1eac3bc1fcf94c1c0a601031b47ef37ad627b66be771256c1125ea7352" -> "sha256:cefab69e35718da83be744d30c581bb88ca8583698b77f6c93243edfe3d1aee5" [label=""];
  "sha256:cefab69e35718da83be744d30c581bb88ca8583698b77f6c93243edfe3d1aee5" -> "sha256:15988cf10c07062af9f515e309a31f849366ce6b0bc0183e1f5aa6c3e5b0011f" [label=""];
  "sha256:15988cf10c07062af9f515e309a31f849366ce6b0bc0183e1f5aa6c3e5b0011f" -> "sha256:7227fd7088f31941459b1a099d8e8bd46c785990ab719dc18a92039f0b46994e" [label=""];
  "sha256:7227fd7088f31941459b1a099d8e8bd46c785990ab719dc18a92039f0b46994e" -> "sha256:fbc9c74754fce969bdc4e3a3bc109d7d0a3b4b4a512baa077265dbca3c0210b9" [label=""];
  "sha256:f6628a5f7424ca8176fdc1619ebd457d3ad08c1f1ef073d9dce43f1e7fa4eddb" -> "sha256:fbc9c74754fce969bdc4e3a3bc109d7d0a3b4b4a512baa077265dbca3c0210b9" [label=""];
  "sha256:fbc9c74754fce969bdc4e3a3bc109d7d0a3b4b4a512baa077265dbca3c0210b9" -> "sha256:c5d6de8dcc576a14a05a4ebf46bd3df6b7b7ff2a9c80c61463254b6cf4de93c0" [label=""];
  "sha256:c5d6de8dcc576a14a05a4ebf46bd3df6b7b7ff2a9c80c61463254b6cf4de93c0" -> "sha256:ea54474ca24360d31652ed1784aa3bbc9ab281af048658857488956a0c52ae46" [label=""];
  "sha256:f6628a5f7424ca8176fdc1619ebd457d3ad08c1f1ef073d9dce43f1e7fa4eddb" -> "sha256:ea54474ca24360d31652ed1784aa3bbc9ab281af048658857488956a0c52ae46" [label=""];
  "sha256:ea54474ca24360d31652ed1784aa3bbc9ab281af048658857488956a0c52ae46" -> "sha256:a7005afb4052d515020a0d0b619ecfb1b3ed475f289a1268830afb662c0af507" [label=""];
  "sha256:a7005afb4052d515020a0d0b619ecfb1b3ed475f289a1268830afb662c0af507" -> "sha256:d097dcf4c62ebc37e08b9b2144366b8ad3fec9a673d5976873d23f7cfe8c3ceb" [label=""];
  "sha256:f6628a5f7424ca8176fdc1619ebd457d3ad08c1f1ef073d9dce43f1e7fa4eddb" -> "sha256:d097dcf4c62ebc37e08b9b2144366b8ad3fec9a673d5976873d23f7cfe8c3ceb" [label=""];
  "sha256:d097dcf4c62ebc37e08b9b2144366b8ad3fec9a673d5976873d23f7cfe8c3ceb" -> "sha256:fa327726b60be17ba99594a2c6282963f3e3cb7f7183f89d6e44246ce33b1e1b" [label=""];
  "sha256:fa327726b60be17ba99594a2c6282963f3e3cb7f7183f89d6e44246ce33b1e1b" -> "sha256:c86277912ae84f775977ae88698adb4a9b6fc41df2eff21d7daee105e8cd0064" [label=""];
}

