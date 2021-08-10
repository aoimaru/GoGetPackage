[app/sources/288162904.Dockerfile]
digraph {
  "sha256:914869c3609b76ed1815f0ea66798bc273a66de3efd1ca2df6076e13456bd525" [label="local://context" shape="ellipse"];
  "sha256:df4444e4437e1eebc7f6dd6eef0b54c5a85adcc0c4d747e4b0737077b57e226f" [label="docker-image://quay.io/jupyteronopenshift/s2i-minimal-notebook-py35:2.2.2@sha256:08ef1ba121c4032a47c7f8395d8d046372e73670313211c7a947006de8c1f31e" shape="ellipse"];
  "sha256:388bf4836e577c3258e8f0e077647405d3ca55298700e7c8726c03f57d332932" [label="copy{src=/, dest=/tmp/src}" shape="note"];
  "sha256:d9c097ee6523179cea30c0a0aff0806983c619a4c6c166f29f9718887f00528d" [label="/bin/sh -c rm -rf /tmp/src/.git* &&     chown -R 1001 /tmp/src &&     chgrp -R 0 /tmp/src &&     chmod -R g+w /tmp/src &&     rm -rf /tmp/scripts &&     mv /tmp/src/.s2i/bin /tmp/scripts" shape="box"];
  "sha256:11c05b13b3bf8547ce6e815bbc7e80bc6c3f3cb923a3cf1ef4e658a4674f25d5" [label="/bin/sh -c /tmp/scripts/assemble" shape="box"];
  "sha256:2f1e29442c57a84d1db7bcf11be75fa60d081083588addfd5c137890582331a5" [label="sha256:2f1e29442c57a84d1db7bcf11be75fa60d081083588addfd5c137890582331a5" shape="plaintext"];
  "sha256:df4444e4437e1eebc7f6dd6eef0b54c5a85adcc0c4d747e4b0737077b57e226f" -> "sha256:388bf4836e577c3258e8f0e077647405d3ca55298700e7c8726c03f57d332932" [label=""];
  "sha256:914869c3609b76ed1815f0ea66798bc273a66de3efd1ca2df6076e13456bd525" -> "sha256:388bf4836e577c3258e8f0e077647405d3ca55298700e7c8726c03f57d332932" [label=""];
  "sha256:388bf4836e577c3258e8f0e077647405d3ca55298700e7c8726c03f57d332932" -> "sha256:d9c097ee6523179cea30c0a0aff0806983c619a4c6c166f29f9718887f00528d" [label=""];
  "sha256:d9c097ee6523179cea30c0a0aff0806983c619a4c6c166f29f9718887f00528d" -> "sha256:11c05b13b3bf8547ce6e815bbc7e80bc6c3f3cb923a3cf1ef4e658a4674f25d5" [label=""];
  "sha256:11c05b13b3bf8547ce6e815bbc7e80bc6c3f3cb923a3cf1ef4e658a4674f25d5" -> "sha256:2f1e29442c57a84d1db7bcf11be75fa60d081083588addfd5c137890582331a5" [label=""];
}

