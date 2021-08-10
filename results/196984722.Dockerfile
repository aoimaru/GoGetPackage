[app/sources/196984722.Dockerfile]
digraph {
  "sha256:97c86bbb684879922f5cb6a7fd8b52759941b961bc6a979a4e0ed55867650197" [label="local://context" shape="ellipse"];
  "sha256:a40b8235aa776fdb1d99a42286d6d2a0902809136b680d72986b13bbc7e62859" [label="docker-image://gcr.io/google_containers/kube-cross:KUBE_BUILD_IMAGE_CROSS_TAG" shape="ellipse"];
  "sha256:f4face1eac3bc1fcf94c1c0a601031b47ef37ad627b66be771256c1125ea7352" [label="/bin/sh -c touch /kube-build-image" shape="box"];
  "sha256:cefab69e35718da83be744d30c581bb88ca8583698b77f6c93243edfe3d1aee5" [label="/bin/sh -c chmod -R a+rwx /usr/local/go/pkg ${K8S_PATCHED_GOROOT}/pkg" shape="box"];
  "sha256:15988cf10c07062af9f515e309a31f849366ce6b0bc0183e1f5aa6c3e5b0011f" [label="/bin/sh -c mkdir /var/run/kubernetes && chmod a+rwx /var/run/kubernetes" shape="box"];
  "sha256:7227fd7088f31941459b1a099d8e8bd46c785990ab719dc18a92039f0b46994e" [label="mkdir{path=/go/src/k8s.io/kubernetes}" shape="note"];
  "sha256:d93932a35f7eaeb074d99d66725d81fa5d78636862232cf3b398610d4a851200" [label="copy{src=/localtime, dest=/etc/localtime}" shape="note"];
  "sha256:16e7a0909d52bdec44706c8dca4969cb2867f8965979fdade341dc98bd560486" [label="/bin/sh -c chmod a+r /etc/localtime" shape="box"];
  "sha256:033af34c12a4885bc8d7a121524578f1bf32e681abfd39c9afc2bba692470140" [label="copy{src=/rsyncd.password, dest=/}" shape="note"];
  "sha256:25f1aa9816bd91b8df57ab6384eeecf7cd0cf145180ee6828f2b72917c13b408" [label="/bin/sh -c chmod a+r /rsyncd.password" shape="box"];
  "sha256:965a032911eae82e10de874bcadda86ebbf6cb670c192dcd3b6a068aae30ed6a" [label="copy{src=/rsyncd.sh, dest=/}" shape="note"];
  "sha256:3c3e7d205a41f785cefa2f2d772e48cd9630e45feb642cbbce0234b1cd06b8a6" [label="/bin/sh -c chmod a+rx /rsyncd.sh" shape="box"];
  "sha256:7c60c587a3bb75c11ef980fb35c48e77c1e2461f213f56598f6203b921f72280" [label="sha256:7c60c587a3bb75c11ef980fb35c48e77c1e2461f213f56598f6203b921f72280" shape="plaintext"];
  "sha256:a40b8235aa776fdb1d99a42286d6d2a0902809136b680d72986b13bbc7e62859" -> "sha256:f4face1eac3bc1fcf94c1c0a601031b47ef37ad627b66be771256c1125ea7352" [label=""];
  "sha256:f4face1eac3bc1fcf94c1c0a601031b47ef37ad627b66be771256c1125ea7352" -> "sha256:cefab69e35718da83be744d30c581bb88ca8583698b77f6c93243edfe3d1aee5" [label=""];
  "sha256:cefab69e35718da83be744d30c581bb88ca8583698b77f6c93243edfe3d1aee5" -> "sha256:15988cf10c07062af9f515e309a31f849366ce6b0bc0183e1f5aa6c3e5b0011f" [label=""];
  "sha256:15988cf10c07062af9f515e309a31f849366ce6b0bc0183e1f5aa6c3e5b0011f" -> "sha256:7227fd7088f31941459b1a099d8e8bd46c785990ab719dc18a92039f0b46994e" [label=""];
  "sha256:7227fd7088f31941459b1a099d8e8bd46c785990ab719dc18a92039f0b46994e" -> "sha256:d93932a35f7eaeb074d99d66725d81fa5d78636862232cf3b398610d4a851200" [label=""];
  "sha256:97c86bbb684879922f5cb6a7fd8b52759941b961bc6a979a4e0ed55867650197" -> "sha256:d93932a35f7eaeb074d99d66725d81fa5d78636862232cf3b398610d4a851200" [label=""];
  "sha256:d93932a35f7eaeb074d99d66725d81fa5d78636862232cf3b398610d4a851200" -> "sha256:16e7a0909d52bdec44706c8dca4969cb2867f8965979fdade341dc98bd560486" [label=""];
  "sha256:16e7a0909d52bdec44706c8dca4969cb2867f8965979fdade341dc98bd560486" -> "sha256:033af34c12a4885bc8d7a121524578f1bf32e681abfd39c9afc2bba692470140" [label=""];
  "sha256:97c86bbb684879922f5cb6a7fd8b52759941b961bc6a979a4e0ed55867650197" -> "sha256:033af34c12a4885bc8d7a121524578f1bf32e681abfd39c9afc2bba692470140" [label=""];
  "sha256:033af34c12a4885bc8d7a121524578f1bf32e681abfd39c9afc2bba692470140" -> "sha256:25f1aa9816bd91b8df57ab6384eeecf7cd0cf145180ee6828f2b72917c13b408" [label=""];
  "sha256:25f1aa9816bd91b8df57ab6384eeecf7cd0cf145180ee6828f2b72917c13b408" -> "sha256:965a032911eae82e10de874bcadda86ebbf6cb670c192dcd3b6a068aae30ed6a" [label=""];
  "sha256:97c86bbb684879922f5cb6a7fd8b52759941b961bc6a979a4e0ed55867650197" -> "sha256:965a032911eae82e10de874bcadda86ebbf6cb670c192dcd3b6a068aae30ed6a" [label=""];
  "sha256:965a032911eae82e10de874bcadda86ebbf6cb670c192dcd3b6a068aae30ed6a" -> "sha256:3c3e7d205a41f785cefa2f2d772e48cd9630e45feb642cbbce0234b1cd06b8a6" [label=""];
  "sha256:3c3e7d205a41f785cefa2f2d772e48cd9630e45feb642cbbce0234b1cd06b8a6" -> "sha256:7c60c587a3bb75c11ef980fb35c48e77c1e2461f213f56598f6203b921f72280" [label=""];
}

