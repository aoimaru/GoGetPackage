[app/sources/276953388.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:90bb026594f4c58a577655098f1845b2f45979d3b1f1a333f1919eb28f48b097" [label="mkdir{path=/root}" shape="note"];
  "sha256:4d9f258a6eafc1c2be1f028c4712a80f104720a46d8ab1460a844ffbbdb336a4" [label="/bin/sh -c yum -y update" shape="box"];
  "sha256:c5b0f16fc2933c6d19a1a801fc275adacc415508d54b5b34904d5a9ba2dff7ff" [label="/bin/sh -c yum -y install vim nano" shape="box"];
  "sha256:fd41be836cc20ba1eb0bbcd7288ccce42d2abbf373a5b335fa00c9687f450c7f" [label="/bin/sh -c yum -y install sudo sshpass" shape="box"];
  "sha256:11b5ced05e525a010aab9b90c81ffa356261b1cc06ec5baceef1ce8de5b3446d" [label="/bin/sh -c yum -y install net-tools" shape="box"];
  "sha256:5b82d49f3fafa1e9df41fa2ff7de3d6d8caf9535a81821616e8b351ef245e49c" [label="/bin/sh -c yum -y install iputils" shape="box"];
  "sha256:97b6e12514b50a374f165e885923c8adc18e16e9d9362b6570cf96df94d27c17" [label="/bin/sh -c yum -y install bind-utils" shape="box"];
  "sha256:996a839bf4ffc660a67843f94a727f8c4b3e4c5c9e2d6e5b030dfcfe429eca12" [label="/bin/sh -c yum -y install lsof" shape="box"];
  "sha256:4ba547659d3055ad2f9312f6979a94f4fbd5f40b4f477eddc737794a77aaad68" [label="/bin/sh -c yum -y install curl wget" shape="box"];
  "sha256:4ab52d3f85dac52a27e4a975249fec0ceb5b44cab977bbbd1b0ff42041771f13" [label="/bin/sh -c yum -y install python-devel" shape="box"];
  "sha256:f3afb80ba41ba821df3b717dcceaba786c4e26e23c32e3b9604c84b9f2ab5cc1" [label="/bin/sh -c curl \"https://bootstrap.pypa.io/get-pip.py\" -o /tmp/get-pip.py" shape="box"];
  "sha256:88ad44608c9106b63094c9796d5d21d32200cbaad5120d5b1150bb01aa925feb" [label="/bin/sh -c python /tmp/get-pip.py" shape="box"];
  "sha256:9d2af668568d138737fd73e746a0b5364372488f8a40a68986e82333d8f70bab" [label="/bin/sh -c yum -y install java-1.8.0-openjdk java-1.8.0-openjdk-devel" shape="box"];
  "sha256:cfcb1541d489c01bf9d5551a4fb5776912f69a6d02717a72382b4d6c5898b88f" [label="/bin/sh -c yum -y install maven" shape="box"];
  "sha256:1a008d3812a6e99b5b691295dfc6ac7f68a9fa3ad55558a288c11adc9140fa96" [label="/bin/sh -c pip install supervisor==3.3.3" shape="box"];
  "sha256:76c0e1d3fa159ac5bf35e3bda42b883d3bb293955cf2e67c7a4e42fd61b93ea4" [label="/bin/sh -c mkdir -p /var/log/supervisord/" shape="box"];
  "sha256:01265f0b4d3b340e6fa2da7a8340a1bbc95c59aaf11d9132229f6b83b1c3f2a6" [label="sha256:01265f0b4d3b340e6fa2da7a8340a1bbc95c59aaf11d9132229f6b83b1c3f2a6" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:90bb026594f4c58a577655098f1845b2f45979d3b1f1a333f1919eb28f48b097" [label=""];
  "sha256:90bb026594f4c58a577655098f1845b2f45979d3b1f1a333f1919eb28f48b097" -> "sha256:4d9f258a6eafc1c2be1f028c4712a80f104720a46d8ab1460a844ffbbdb336a4" [label=""];
  "sha256:4d9f258a6eafc1c2be1f028c4712a80f104720a46d8ab1460a844ffbbdb336a4" -> "sha256:c5b0f16fc2933c6d19a1a801fc275adacc415508d54b5b34904d5a9ba2dff7ff" [label=""];
  "sha256:c5b0f16fc2933c6d19a1a801fc275adacc415508d54b5b34904d5a9ba2dff7ff" -> "sha256:fd41be836cc20ba1eb0bbcd7288ccce42d2abbf373a5b335fa00c9687f450c7f" [label=""];
  "sha256:fd41be836cc20ba1eb0bbcd7288ccce42d2abbf373a5b335fa00c9687f450c7f" -> "sha256:11b5ced05e525a010aab9b90c81ffa356261b1cc06ec5baceef1ce8de5b3446d" [label=""];
  "sha256:11b5ced05e525a010aab9b90c81ffa356261b1cc06ec5baceef1ce8de5b3446d" -> "sha256:5b82d49f3fafa1e9df41fa2ff7de3d6d8caf9535a81821616e8b351ef245e49c" [label=""];
  "sha256:5b82d49f3fafa1e9df41fa2ff7de3d6d8caf9535a81821616e8b351ef245e49c" -> "sha256:97b6e12514b50a374f165e885923c8adc18e16e9d9362b6570cf96df94d27c17" [label=""];
  "sha256:97b6e12514b50a374f165e885923c8adc18e16e9d9362b6570cf96df94d27c17" -> "sha256:996a839bf4ffc660a67843f94a727f8c4b3e4c5c9e2d6e5b030dfcfe429eca12" [label=""];
  "sha256:996a839bf4ffc660a67843f94a727f8c4b3e4c5c9e2d6e5b030dfcfe429eca12" -> "sha256:4ba547659d3055ad2f9312f6979a94f4fbd5f40b4f477eddc737794a77aaad68" [label=""];
  "sha256:4ba547659d3055ad2f9312f6979a94f4fbd5f40b4f477eddc737794a77aaad68" -> "sha256:4ab52d3f85dac52a27e4a975249fec0ceb5b44cab977bbbd1b0ff42041771f13" [label=""];
  "sha256:4ab52d3f85dac52a27e4a975249fec0ceb5b44cab977bbbd1b0ff42041771f13" -> "sha256:f3afb80ba41ba821df3b717dcceaba786c4e26e23c32e3b9604c84b9f2ab5cc1" [label=""];
  "sha256:f3afb80ba41ba821df3b717dcceaba786c4e26e23c32e3b9604c84b9f2ab5cc1" -> "sha256:88ad44608c9106b63094c9796d5d21d32200cbaad5120d5b1150bb01aa925feb" [label=""];
  "sha256:88ad44608c9106b63094c9796d5d21d32200cbaad5120d5b1150bb01aa925feb" -> "sha256:9d2af668568d138737fd73e746a0b5364372488f8a40a68986e82333d8f70bab" [label=""];
  "sha256:9d2af668568d138737fd73e746a0b5364372488f8a40a68986e82333d8f70bab" -> "sha256:cfcb1541d489c01bf9d5551a4fb5776912f69a6d02717a72382b4d6c5898b88f" [label=""];
  "sha256:cfcb1541d489c01bf9d5551a4fb5776912f69a6d02717a72382b4d6c5898b88f" -> "sha256:1a008d3812a6e99b5b691295dfc6ac7f68a9fa3ad55558a288c11adc9140fa96" [label=""];
  "sha256:1a008d3812a6e99b5b691295dfc6ac7f68a9fa3ad55558a288c11adc9140fa96" -> "sha256:76c0e1d3fa159ac5bf35e3bda42b883d3bb293955cf2e67c7a4e42fd61b93ea4" [label=""];
  "sha256:76c0e1d3fa159ac5bf35e3bda42b883d3bb293955cf2e67c7a4e42fd61b93ea4" -> "sha256:01265f0b4d3b340e6fa2da7a8340a1bbc95c59aaf11d9132229f6b83b1c3f2a6" [label=""];
}

