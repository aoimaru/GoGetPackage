[app/sources/221768270.Dockerfile]
digraph {
  "sha256:45bd8be4d87da2f9ce1538d362c54799cbb5a6f8791aa3fce8e2b855c87d8e6f" [label="docker-image://docker.io/frolvlad/alpine-python3:latest" shape="ellipse"];
  "sha256:b29cf41c0c1a8edae7f86f3a4e219d66b30cfcdaf54e1c01c8fb1d3b76be13b4" [label="local://context" shape="ellipse"];
  "sha256:2d37d10407307e21a1bf168d139d0d9379e54807475a5d3c25c00934d9a8664b" [label="copy{src=/requirements.txt, dest=/tmp/requirements.txt}" shape="note"];
  "sha256:35552c899572101da6d3eb1f2cea9c5597dba67dbcf4ba05959b2be3aff1d20b" [label="copy{src=/test-requirements.txt, dest=/tmp/test-requirements.txt}" shape="note"];
  "sha256:3d6fbcac3e53efd0aa1234f94940a2e6c551dfcf3e630a8f835fc0f5cb558df2" [label="/bin/sh -c apk add --update     git" shape="box"];
  "sha256:459fc9aa24944f2733f1124ea07eab7cdf9bda0b7f772801b94ee6df494efa93" [label="/bin/sh -c pip install --upgrade pip     && pip install -r /tmp/test-requirements.txt     && pip install pep8" shape="box"];
  "sha256:4a4259f82017cf67bc8445a886d39e6f61f4c3817b5e3f60269314556e022a21" [label="sha256:4a4259f82017cf67bc8445a886d39e6f61f4c3817b5e3f60269314556e022a21" shape="plaintext"];
  "sha256:45bd8be4d87da2f9ce1538d362c54799cbb5a6f8791aa3fce8e2b855c87d8e6f" -> "sha256:2d37d10407307e21a1bf168d139d0d9379e54807475a5d3c25c00934d9a8664b" [label=""];
  "sha256:b29cf41c0c1a8edae7f86f3a4e219d66b30cfcdaf54e1c01c8fb1d3b76be13b4" -> "sha256:2d37d10407307e21a1bf168d139d0d9379e54807475a5d3c25c00934d9a8664b" [label=""];
  "sha256:2d37d10407307e21a1bf168d139d0d9379e54807475a5d3c25c00934d9a8664b" -> "sha256:35552c899572101da6d3eb1f2cea9c5597dba67dbcf4ba05959b2be3aff1d20b" [label=""];
  "sha256:b29cf41c0c1a8edae7f86f3a4e219d66b30cfcdaf54e1c01c8fb1d3b76be13b4" -> "sha256:35552c899572101da6d3eb1f2cea9c5597dba67dbcf4ba05959b2be3aff1d20b" [label=""];
  "sha256:35552c899572101da6d3eb1f2cea9c5597dba67dbcf4ba05959b2be3aff1d20b" -> "sha256:3d6fbcac3e53efd0aa1234f94940a2e6c551dfcf3e630a8f835fc0f5cb558df2" [label=""];
  "sha256:3d6fbcac3e53efd0aa1234f94940a2e6c551dfcf3e630a8f835fc0f5cb558df2" -> "sha256:459fc9aa24944f2733f1124ea07eab7cdf9bda0b7f772801b94ee6df494efa93" [label=""];
  "sha256:459fc9aa24944f2733f1124ea07eab7cdf9bda0b7f772801b94ee6df494efa93" -> "sha256:4a4259f82017cf67bc8445a886d39e6f61f4c3817b5e3f60269314556e022a21" [label=""];
}

