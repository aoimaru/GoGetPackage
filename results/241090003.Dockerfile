[app/sources/241090003.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:2a5d65016b49876c5a24ea38d6055eae7d518bfbcd1a0f931277797b38e551a0" [label="/bin/sh -c apt-get update && apt-get install -y         python-numpy         python-pip         &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d134ebce05d58874bad2abe179407bd695c312f973e103eb813e7b2dfd3651ec" [label="local://context" shape="ellipse"];
  "sha256:bc0bd73ff3dd3c1c816c6f931b45c2681d0486a7475e0678f1633a4399c1f110" [label="copy{src=/tensorflow-*.whl, dest=/}" shape="note"];
  "sha256:760e7664e3a39164f7e78124c1d9d51ec83a09f8a4d39e531625c90c310961e8" [label="/bin/sh -c pip install /tensorflow-*.whl" shape="box"];
  "sha256:482e484a8b1071b520aa13020ef8931e4c12da45c8fec9b91484bdecd5d86ec0" [label="/bin/sh -c rm -f /tensorflow-*.whl" shape="box"];
  "sha256:d91912e7f1c56c336b8c1ddc76722befdac51fafb061da3ceda33600d5d1be7a" [label="copy{src=/, dest=/var/tf_dist_test}" shape="note"];
  "sha256:efca48a49c745e503e342b8561325fbf1ff931687607215be73e8a4d13692fd6" [label="sha256:efca48a49c745e503e342b8561325fbf1ff931687607215be73e8a4d13692fd6" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:2a5d65016b49876c5a24ea38d6055eae7d518bfbcd1a0f931277797b38e551a0" [label=""];
  "sha256:2a5d65016b49876c5a24ea38d6055eae7d518bfbcd1a0f931277797b38e551a0" -> "sha256:bc0bd73ff3dd3c1c816c6f931b45c2681d0486a7475e0678f1633a4399c1f110" [label=""];
  "sha256:d134ebce05d58874bad2abe179407bd695c312f973e103eb813e7b2dfd3651ec" -> "sha256:bc0bd73ff3dd3c1c816c6f931b45c2681d0486a7475e0678f1633a4399c1f110" [label=""];
  "sha256:bc0bd73ff3dd3c1c816c6f931b45c2681d0486a7475e0678f1633a4399c1f110" -> "sha256:760e7664e3a39164f7e78124c1d9d51ec83a09f8a4d39e531625c90c310961e8" [label=""];
  "sha256:760e7664e3a39164f7e78124c1d9d51ec83a09f8a4d39e531625c90c310961e8" -> "sha256:482e484a8b1071b520aa13020ef8931e4c12da45c8fec9b91484bdecd5d86ec0" [label=""];
  "sha256:482e484a8b1071b520aa13020ef8931e4c12da45c8fec9b91484bdecd5d86ec0" -> "sha256:d91912e7f1c56c336b8c1ddc76722befdac51fafb061da3ceda33600d5d1be7a" [label=""];
  "sha256:d134ebce05d58874bad2abe179407bd695c312f973e103eb813e7b2dfd3651ec" -> "sha256:d91912e7f1c56c336b8c1ddc76722befdac51fafb061da3ceda33600d5d1be7a" [label=""];
  "sha256:d91912e7f1c56c336b8c1ddc76722befdac51fafb061da3ceda33600d5d1be7a" -> "sha256:efca48a49c745e503e342b8561325fbf1ff931687607215be73e8a4d13692fd6" [label=""];
}

