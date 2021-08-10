[app/sources/199398112.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:59c821838c7f2cedd9a272a242ccc9490e5c5bc67f98e4ba3d14687f0107a204" [label="/bin/sh -c yum install -y iscsi-initiator-utils targetcli net-tools strace && yum clean all" shape="box"];
  "sha256:e56b9f10668b11d81c72a1c03e7ee31535bbe790698156dc41cbd1302d607898" [label="local://context" shape="ellipse"];
  "sha256:68e56713c73e959bd347d293563aa0bda9ef9aefac857133e75f18436a4c65cc" [label="copy{src=/run_iscsid.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:142b831645f899f14d8ffc9c49909e24b00e5217ade6cdde428e06bbc3cd4969" [label="copy{src=/initiatorname.iscsi, dest=/etc/iscsi/}" shape="note"];
  "sha256:a6a0ffdfe42b23cdbf702e881a2396546e5919b7bce59a3830e594360e64f461" [label="copy{src=/block.tar.gz, dest=/}" shape="note"];
  "sha256:2dc74157c7133517019e9f60d8c5e4c6134759858c752182ca296e97f64a0623" [label="copy{src=/saveconfig.json, dest=/etc/target/}" shape="note"];
  "sha256:d481ebe86dc433eaabf16a9349a819bb6a5a2becfeae4b9af6f18190300ebf6f" [label="sha256:d481ebe86dc433eaabf16a9349a819bb6a5a2becfeae4b9af6f18190300ebf6f" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:59c821838c7f2cedd9a272a242ccc9490e5c5bc67f98e4ba3d14687f0107a204" [label=""];
  "sha256:59c821838c7f2cedd9a272a242ccc9490e5c5bc67f98e4ba3d14687f0107a204" -> "sha256:68e56713c73e959bd347d293563aa0bda9ef9aefac857133e75f18436a4c65cc" [label=""];
  "sha256:e56b9f10668b11d81c72a1c03e7ee31535bbe790698156dc41cbd1302d607898" -> "sha256:68e56713c73e959bd347d293563aa0bda9ef9aefac857133e75f18436a4c65cc" [label=""];
  "sha256:68e56713c73e959bd347d293563aa0bda9ef9aefac857133e75f18436a4c65cc" -> "sha256:142b831645f899f14d8ffc9c49909e24b00e5217ade6cdde428e06bbc3cd4969" [label=""];
  "sha256:e56b9f10668b11d81c72a1c03e7ee31535bbe790698156dc41cbd1302d607898" -> "sha256:142b831645f899f14d8ffc9c49909e24b00e5217ade6cdde428e06bbc3cd4969" [label=""];
  "sha256:142b831645f899f14d8ffc9c49909e24b00e5217ade6cdde428e06bbc3cd4969" -> "sha256:a6a0ffdfe42b23cdbf702e881a2396546e5919b7bce59a3830e594360e64f461" [label=""];
  "sha256:e56b9f10668b11d81c72a1c03e7ee31535bbe790698156dc41cbd1302d607898" -> "sha256:a6a0ffdfe42b23cdbf702e881a2396546e5919b7bce59a3830e594360e64f461" [label=""];
  "sha256:a6a0ffdfe42b23cdbf702e881a2396546e5919b7bce59a3830e594360e64f461" -> "sha256:2dc74157c7133517019e9f60d8c5e4c6134759858c752182ca296e97f64a0623" [label=""];
  "sha256:e56b9f10668b11d81c72a1c03e7ee31535bbe790698156dc41cbd1302d607898" -> "sha256:2dc74157c7133517019e9f60d8c5e4c6134759858c752182ca296e97f64a0623" [label=""];
  "sha256:2dc74157c7133517019e9f60d8c5e4c6134759858c752182ca296e97f64a0623" -> "sha256:d481ebe86dc433eaabf16a9349a819bb6a5a2becfeae4b9af6f18190300ebf6f" [label=""];
}

