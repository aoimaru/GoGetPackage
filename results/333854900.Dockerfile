[app/sources/333854900.Dockerfile]
digraph {
  "sha256:bb76e0e7b0286310c23884c6f2d53f030eb75804cf73d0265e85c6a61c9dcf80" [label="docker-image://docker.io/library/redmine:3.4.6" shape="ellipse"];
  "sha256:1e7cbd19a5308ce17bdcab384c047a48ef83d59ebd364624f61a6cd9544bfb25" [label="/bin/sh -c git clone --branch v2.0 https://github.com/nixys/nxs-chat-redmine.git /usr/src/redmine/plugins/nxs_chat" shape="box"];
  "sha256:b35aee3f7d488e03846350710dd391d5df4464b170ee57bcfa59caba38bc35f1" [label="sha256:b35aee3f7d488e03846350710dd391d5df4464b170ee57bcfa59caba38bc35f1" shape="plaintext"];
  "sha256:bb76e0e7b0286310c23884c6f2d53f030eb75804cf73d0265e85c6a61c9dcf80" -> "sha256:1e7cbd19a5308ce17bdcab384c047a48ef83d59ebd364624f61a6cd9544bfb25" [label=""];
  "sha256:1e7cbd19a5308ce17bdcab384c047a48ef83d59ebd364624f61a6cd9544bfb25" -> "sha256:b35aee3f7d488e03846350710dd391d5df4464b170ee57bcfa59caba38bc35f1" [label=""];
}

