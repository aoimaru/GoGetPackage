[app/sources/280649347.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:59c821838c7f2cedd9a272a242ccc9490e5c5bc67f98e4ba3d14687f0107a204" [label="/bin/sh -c yum install -y iscsi-initiator-utils targetcli net-tools strace && yum clean all" shape="box"];
  "sha256:d6e3f10a632bfcc3120665cc535da47c5c25f49001f293bff273c7531c22fd4f" [label="local://context" shape="ellipse"];
  "sha256:78fe38e3ae571badc8e27d8d94caf2bd36da8ba17251fcece10b910d8dadb70a" [label="copy{src=/run_iscsid.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:c5eae471bdee406aef8df912bfe6ff406841db3d85d90fbb08c255fba1efe719" [label="copy{src=/initiatorname.iscsi, dest=/etc/iscsi/}" shape="note"];
  "sha256:8ac7d8024d44088cbefc53f4ea1505af4c6973ac47c10e6a73c447f143c5dd8c" [label="copy{src=/block.tar.gz, dest=/}" shape="note"];
  "sha256:8542377a4d2222ce170b2ecb11a0f101487055a9046410adf868bcf747f483f7" [label="copy{src=/saveconfig.json, dest=/etc/target/}" shape="note"];
  "sha256:10895647572e3cb920fdc23adca30ad8da2c2d2796b28a5dcaad7c229eea83ae" [label="sha256:10895647572e3cb920fdc23adca30ad8da2c2d2796b28a5dcaad7c229eea83ae" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:59c821838c7f2cedd9a272a242ccc9490e5c5bc67f98e4ba3d14687f0107a204" [label=""];
  "sha256:59c821838c7f2cedd9a272a242ccc9490e5c5bc67f98e4ba3d14687f0107a204" -> "sha256:78fe38e3ae571badc8e27d8d94caf2bd36da8ba17251fcece10b910d8dadb70a" [label=""];
  "sha256:d6e3f10a632bfcc3120665cc535da47c5c25f49001f293bff273c7531c22fd4f" -> "sha256:78fe38e3ae571badc8e27d8d94caf2bd36da8ba17251fcece10b910d8dadb70a" [label=""];
  "sha256:78fe38e3ae571badc8e27d8d94caf2bd36da8ba17251fcece10b910d8dadb70a" -> "sha256:c5eae471bdee406aef8df912bfe6ff406841db3d85d90fbb08c255fba1efe719" [label=""];
  "sha256:d6e3f10a632bfcc3120665cc535da47c5c25f49001f293bff273c7531c22fd4f" -> "sha256:c5eae471bdee406aef8df912bfe6ff406841db3d85d90fbb08c255fba1efe719" [label=""];
  "sha256:c5eae471bdee406aef8df912bfe6ff406841db3d85d90fbb08c255fba1efe719" -> "sha256:8ac7d8024d44088cbefc53f4ea1505af4c6973ac47c10e6a73c447f143c5dd8c" [label=""];
  "sha256:d6e3f10a632bfcc3120665cc535da47c5c25f49001f293bff273c7531c22fd4f" -> "sha256:8ac7d8024d44088cbefc53f4ea1505af4c6973ac47c10e6a73c447f143c5dd8c" [label=""];
  "sha256:8ac7d8024d44088cbefc53f4ea1505af4c6973ac47c10e6a73c447f143c5dd8c" -> "sha256:8542377a4d2222ce170b2ecb11a0f101487055a9046410adf868bcf747f483f7" [label=""];
  "sha256:d6e3f10a632bfcc3120665cc535da47c5c25f49001f293bff273c7531c22fd4f" -> "sha256:8542377a4d2222ce170b2ecb11a0f101487055a9046410adf868bcf747f483f7" [label=""];
  "sha256:8542377a4d2222ce170b2ecb11a0f101487055a9046410adf868bcf747f483f7" -> "sha256:10895647572e3cb920fdc23adca30ad8da2c2d2796b28a5dcaad7c229eea83ae" [label=""];
}

