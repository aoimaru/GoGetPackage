[app/sources/252791069.Dockerfile]
digraph {
  "sha256:4fa28d0550485af229788c0aae82f2a00ddbd3d262bbc8eb57c9730dd4825223" [label="docker-image://docker.io/library/node:4.6.1" shape="ellipse"];
  "sha256:625ff9308ded6426221615b261e44c20588803891982bf57bf280e92b432c0a7" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:18aedf5e2b6abfa45f124f9afb51e0fdc10efb4bb8d8ee69acce86149ce8e536" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:70121919d57cfc61515ec973ca655c28e3bb913c53f5e2fba8cf9669681ac691" [label="local://context" shape="ellipse"];
  "sha256:ba9c1b15b98f7285c656ded736d378cbe4600f8978b848225f3fd23c346ebc8b" [label="copy{src=/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:c3e865bf146160868e54947864ba4d5c2e1a167d1f353f7b365735dd8de09e95" [label="/bin/sh -c npm install" shape="box"];
  "sha256:877e27c30b1acf1efbad269571fd2b8ba70b1a3e759f453f5922e14abc41ad3c" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:32ea1bed01b92f9dec7474c76434216f28242587cedd95fd891086aa74fb2837" [label="/bin/sh -c npm run build-glyphs" shape="box"];
  "sha256:6619b21a2344c29329ebcb0c48c150ee72b2e576cfd9dd466a3ce310034f3955" [label="sha256:6619b21a2344c29329ebcb0c48c150ee72b2e576cfd9dd466a3ce310034f3955" shape="plaintext"];
  "sha256:4fa28d0550485af229788c0aae82f2a00ddbd3d262bbc8eb57c9730dd4825223" -> "sha256:625ff9308ded6426221615b261e44c20588803891982bf57bf280e92b432c0a7" [label=""];
  "sha256:625ff9308ded6426221615b261e44c20588803891982bf57bf280e92b432c0a7" -> "sha256:18aedf5e2b6abfa45f124f9afb51e0fdc10efb4bb8d8ee69acce86149ce8e536" [label=""];
  "sha256:18aedf5e2b6abfa45f124f9afb51e0fdc10efb4bb8d8ee69acce86149ce8e536" -> "sha256:ba9c1b15b98f7285c656ded736d378cbe4600f8978b848225f3fd23c346ebc8b" [label=""];
  "sha256:70121919d57cfc61515ec973ca655c28e3bb913c53f5e2fba8cf9669681ac691" -> "sha256:ba9c1b15b98f7285c656ded736d378cbe4600f8978b848225f3fd23c346ebc8b" [label=""];
  "sha256:ba9c1b15b98f7285c656ded736d378cbe4600f8978b848225f3fd23c346ebc8b" -> "sha256:c3e865bf146160868e54947864ba4d5c2e1a167d1f353f7b365735dd8de09e95" [label=""];
  "sha256:c3e865bf146160868e54947864ba4d5c2e1a167d1f353f7b365735dd8de09e95" -> "sha256:877e27c30b1acf1efbad269571fd2b8ba70b1a3e759f453f5922e14abc41ad3c" [label=""];
  "sha256:70121919d57cfc61515ec973ca655c28e3bb913c53f5e2fba8cf9669681ac691" -> "sha256:877e27c30b1acf1efbad269571fd2b8ba70b1a3e759f453f5922e14abc41ad3c" [label=""];
  "sha256:877e27c30b1acf1efbad269571fd2b8ba70b1a3e759f453f5922e14abc41ad3c" -> "sha256:32ea1bed01b92f9dec7474c76434216f28242587cedd95fd891086aa74fb2837" [label=""];
  "sha256:32ea1bed01b92f9dec7474c76434216f28242587cedd95fd891086aa74fb2837" -> "sha256:6619b21a2344c29329ebcb0c48c150ee72b2e576cfd9dd466a3ce310034f3955" [label=""];
}

