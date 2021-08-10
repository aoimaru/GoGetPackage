[app/sources/283511597.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:9af64ca3074a7b1e1b6395be8fc30bceb88cf3d018537ec541ba279d3b1efd1d" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:cfdb59cad769d131ccdf333e3252d3bf54b6aa9e1b3081fb21b51d7360634a1f" [label="local://context" shape="ellipse"];
  "sha256:7115a2ab3de8d92b04481d92254f2e40e8271a17ed185ac7c25475e53fbe9fa4" [label="copy{src=/build.sh, dest=/tmp/build.sh}" shape="note"];
  "sha256:e5a8a9e178ebabdc019b6d985f55f3fd74a6381286f408d2adc1677e137cd43b" [label="/bin/sh -c chmod +x /tmp/build.sh" shape="box"];
  "sha256:4fa9427f7184656369bd185235870c1ff1485e8f0cb40dc85c2b48d55bca1d89" [label="/bin/sh -c /tmp/build.sh" shape="box"];
  "sha256:5e8999fd56b139c433c86de9945392397279e79c42dc93021f6d5d4604a1a6f0" [label="sha256:5e8999fd56b139c433c86de9945392397279e79c42dc93021f6d5d4604a1a6f0" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:9af64ca3074a7b1e1b6395be8fc30bceb88cf3d018537ec541ba279d3b1efd1d" [label=""];
  "sha256:9af64ca3074a7b1e1b6395be8fc30bceb88cf3d018537ec541ba279d3b1efd1d" -> "sha256:7115a2ab3de8d92b04481d92254f2e40e8271a17ed185ac7c25475e53fbe9fa4" [label=""];
  "sha256:cfdb59cad769d131ccdf333e3252d3bf54b6aa9e1b3081fb21b51d7360634a1f" -> "sha256:7115a2ab3de8d92b04481d92254f2e40e8271a17ed185ac7c25475e53fbe9fa4" [label=""];
  "sha256:7115a2ab3de8d92b04481d92254f2e40e8271a17ed185ac7c25475e53fbe9fa4" -> "sha256:e5a8a9e178ebabdc019b6d985f55f3fd74a6381286f408d2adc1677e137cd43b" [label=""];
  "sha256:e5a8a9e178ebabdc019b6d985f55f3fd74a6381286f408d2adc1677e137cd43b" -> "sha256:4fa9427f7184656369bd185235870c1ff1485e8f0cb40dc85c2b48d55bca1d89" [label=""];
  "sha256:4fa9427f7184656369bd185235870c1ff1485e8f0cb40dc85c2b48d55bca1d89" -> "sha256:5e8999fd56b139c433c86de9945392397279e79c42dc93021f6d5d4604a1a6f0" [label=""];
}

