[app/sources/268651208.Dockerfile]
digraph {
  "sha256:8f56d436cb3751b3a36fbf6f76f42527f42255e4fbe2a98dd733d07c8f1ad99f" [label="docker-image://index.alauda.cn/library/centos:latest" shape="ellipse"];
  "sha256:1210b6612489f0a490ea9f6be2df6cf3279e3cb2805352e06d1e20719e781fcf" [label="local://context" shape="ellipse"];
  "sha256:775b7de9f4c09f95f3b34374cbc1c717a2594c07f16dce697ca73ca5980dbd4c" [label="copy{src=/prometheus, dest=/bin/prometheus}" shape="note"];
  "sha256:e9d80554f1552bb401548bec6ea7044f9bccfe7fe0a2d09d38fa71af72f9fe71" [label="copy{src=/promtool, dest=/bin/promtool}" shape="note"];
  "sha256:4b77a5500067a275ab1ce81296b4b0aa253eece3ffd1625b6fcd444f274a8e83" [label="copy{src=/prometheus.yml, dest=/etc/prometheus/prometheus.yml}" shape="note"];
  "sha256:49ab462918bfd29bde8bbf7523e11d0e8930b3dac20625b1b53032f5ee806922" [label="copy{src=/console_libraries, dest=/usr/share/prometheus/console_libraries/}" shape="note"];
  "sha256:ace8fff4b2fd71bb35971b03e5429e00d43ba25172d75bbbb4c34814f026796f" [label="copy{src=/consoles, dest=/usr/share/prometheus/consoles/}" shape="note"];
  "sha256:ffe3c4866e65d0eab915f7159d31fc6751bf145ebbfb84721a2965864e29b085" [label="/bin/sh -c ln -s /usr/share/prometheus/console_libraries /usr/share/prometheus/consoles/ /etc/prometheus/" shape="box"];
  "sha256:83477bbfd18621ab1a77dd36f3258ff3de83a0a306fa2bed75cfd32628c04fa7" [label="mkdir{path=/prometheus}" shape="note"];
  "sha256:a10cb4723c90965b8567c01df682e36f636e445a80462a02029df07081724ee2" [label="sha256:a10cb4723c90965b8567c01df682e36f636e445a80462a02029df07081724ee2" shape="plaintext"];
  "sha256:8f56d436cb3751b3a36fbf6f76f42527f42255e4fbe2a98dd733d07c8f1ad99f" -> "sha256:775b7de9f4c09f95f3b34374cbc1c717a2594c07f16dce697ca73ca5980dbd4c" [label=""];
  "sha256:1210b6612489f0a490ea9f6be2df6cf3279e3cb2805352e06d1e20719e781fcf" -> "sha256:775b7de9f4c09f95f3b34374cbc1c717a2594c07f16dce697ca73ca5980dbd4c" [label=""];
  "sha256:775b7de9f4c09f95f3b34374cbc1c717a2594c07f16dce697ca73ca5980dbd4c" -> "sha256:e9d80554f1552bb401548bec6ea7044f9bccfe7fe0a2d09d38fa71af72f9fe71" [label=""];
  "sha256:1210b6612489f0a490ea9f6be2df6cf3279e3cb2805352e06d1e20719e781fcf" -> "sha256:e9d80554f1552bb401548bec6ea7044f9bccfe7fe0a2d09d38fa71af72f9fe71" [label=""];
  "sha256:e9d80554f1552bb401548bec6ea7044f9bccfe7fe0a2d09d38fa71af72f9fe71" -> "sha256:4b77a5500067a275ab1ce81296b4b0aa253eece3ffd1625b6fcd444f274a8e83" [label=""];
  "sha256:1210b6612489f0a490ea9f6be2df6cf3279e3cb2805352e06d1e20719e781fcf" -> "sha256:4b77a5500067a275ab1ce81296b4b0aa253eece3ffd1625b6fcd444f274a8e83" [label=""];
  "sha256:4b77a5500067a275ab1ce81296b4b0aa253eece3ffd1625b6fcd444f274a8e83" -> "sha256:49ab462918bfd29bde8bbf7523e11d0e8930b3dac20625b1b53032f5ee806922" [label=""];
  "sha256:1210b6612489f0a490ea9f6be2df6cf3279e3cb2805352e06d1e20719e781fcf" -> "sha256:49ab462918bfd29bde8bbf7523e11d0e8930b3dac20625b1b53032f5ee806922" [label=""];
  "sha256:49ab462918bfd29bde8bbf7523e11d0e8930b3dac20625b1b53032f5ee806922" -> "sha256:ace8fff4b2fd71bb35971b03e5429e00d43ba25172d75bbbb4c34814f026796f" [label=""];
  "sha256:1210b6612489f0a490ea9f6be2df6cf3279e3cb2805352e06d1e20719e781fcf" -> "sha256:ace8fff4b2fd71bb35971b03e5429e00d43ba25172d75bbbb4c34814f026796f" [label=""];
  "sha256:ace8fff4b2fd71bb35971b03e5429e00d43ba25172d75bbbb4c34814f026796f" -> "sha256:ffe3c4866e65d0eab915f7159d31fc6751bf145ebbfb84721a2965864e29b085" [label=""];
  "sha256:ffe3c4866e65d0eab915f7159d31fc6751bf145ebbfb84721a2965864e29b085" -> "sha256:83477bbfd18621ab1a77dd36f3258ff3de83a0a306fa2bed75cfd32628c04fa7" [label=""];
  "sha256:83477bbfd18621ab1a77dd36f3258ff3de83a0a306fa2bed75cfd32628c04fa7" -> "sha256:a10cb4723c90965b8567c01df682e36f636e445a80462a02029df07081724ee2" [label=""];
}

