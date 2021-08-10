[app/sources/187489969.Dockerfile]
digraph {
  "sha256:ceb6266c819426d8e054978fe2c21109b8ce6921b569967987fa1b7bbcc9ef9f" [label="local://context" shape="ellipse"];
  "sha256:29ec57ef8115cc06d00bec3663ef523d5cea5bbcd54616e482efbe61eb52fefa" [label="docker-image://registry.fedoraproject.org/fedora:25" shape="ellipse"];
  "sha256:b2cc09e956d5d6b5cf986e8570e59f299a5d6014c2b60dd7e86553ce2c84a77c" [label="/bin/sh -c dnf -y --setopt=tsflags=nodocs install     findutils os-collect-config os-apply-config     os-refresh-config dib-utils python-pip python-docker-py     python-yaml python-zaqarclient &&     dnf clean all" shape="box"];
  "sha256:e775060d2d5f0fa63ec5b2fe5bdaf6c2d9cd93eeea07264ab017305b60981733" [label="/bin/sh -c pip install --no-cache dpath docker-compose" shape="box"];
  "sha256:eade38398136d7af9606fc437987de9d953f8009ba1abcb1035cdb575d846b73" [label="copy{src=/scripts/55-heat-config, dest=/opt/stack/os-config-refresh/configure.d/}" shape="note"];
  "sha256:44d66a5c6dff4a2566a908932a9e624367a7c0928f15589220dcc525e6dd26ba" [label="copy{src=/scripts/50-heat-config-docker-compose, dest=/opt/stack/os-config-refresh/configure.d/}" shape="note"];
  "sha256:140050ac45c7084917b22a628a8c10be8a5a0f6c5eabcb1c0e731770713bd13b" [label="copy{src=/scripts/hooks/*, dest=/var/lib/heat-config/hooks/}" shape="note"];
  "sha256:d2e5e542783ec15b8ae3e970e025fd545c790e2af6cc70a68ae2918d5098362d" [label="copy{src=/scripts/heat-config-notify, dest=/usr/bin/heat-config-notify}" shape="note"];
  "sha256:ea04061e5da70725afe5547b57001999bf95daa234dc09c27c3f3ad6c51c34ac" [label="copy{src=/scripts/configure_container_agent.sh, dest=/tmp/}" shape="note"];
  "sha256:799c4cc77d9d609aab3f5791159e01086bad407ddce6b5151565657e71c51db4" [label="/bin/sh -c chmod 700 /tmp/configure_container_agent.sh" shape="box"];
  "sha256:24be0551ad2e9b708039042182564e47c6e9ec2de3e60b2d197527c0b6d3979a" [label="/bin/sh -c /tmp/configure_container_agent.sh" shape="box"];
  "sha256:2332266995aa6c89e001edd18e566e7515aebb9c50ca90929ee9dbee3e241440" [label="sha256:2332266995aa6c89e001edd18e566e7515aebb9c50ca90929ee9dbee3e241440" shape="plaintext"];
  "sha256:29ec57ef8115cc06d00bec3663ef523d5cea5bbcd54616e482efbe61eb52fefa" -> "sha256:b2cc09e956d5d6b5cf986e8570e59f299a5d6014c2b60dd7e86553ce2c84a77c" [label=""];
  "sha256:b2cc09e956d5d6b5cf986e8570e59f299a5d6014c2b60dd7e86553ce2c84a77c" -> "sha256:e775060d2d5f0fa63ec5b2fe5bdaf6c2d9cd93eeea07264ab017305b60981733" [label=""];
  "sha256:e775060d2d5f0fa63ec5b2fe5bdaf6c2d9cd93eeea07264ab017305b60981733" -> "sha256:eade38398136d7af9606fc437987de9d953f8009ba1abcb1035cdb575d846b73" [label=""];
  "sha256:ceb6266c819426d8e054978fe2c21109b8ce6921b569967987fa1b7bbcc9ef9f" -> "sha256:eade38398136d7af9606fc437987de9d953f8009ba1abcb1035cdb575d846b73" [label=""];
  "sha256:eade38398136d7af9606fc437987de9d953f8009ba1abcb1035cdb575d846b73" -> "sha256:44d66a5c6dff4a2566a908932a9e624367a7c0928f15589220dcc525e6dd26ba" [label=""];
  "sha256:ceb6266c819426d8e054978fe2c21109b8ce6921b569967987fa1b7bbcc9ef9f" -> "sha256:44d66a5c6dff4a2566a908932a9e624367a7c0928f15589220dcc525e6dd26ba" [label=""];
  "sha256:44d66a5c6dff4a2566a908932a9e624367a7c0928f15589220dcc525e6dd26ba" -> "sha256:140050ac45c7084917b22a628a8c10be8a5a0f6c5eabcb1c0e731770713bd13b" [label=""];
  "sha256:ceb6266c819426d8e054978fe2c21109b8ce6921b569967987fa1b7bbcc9ef9f" -> "sha256:140050ac45c7084917b22a628a8c10be8a5a0f6c5eabcb1c0e731770713bd13b" [label=""];
  "sha256:140050ac45c7084917b22a628a8c10be8a5a0f6c5eabcb1c0e731770713bd13b" -> "sha256:d2e5e542783ec15b8ae3e970e025fd545c790e2af6cc70a68ae2918d5098362d" [label=""];
  "sha256:ceb6266c819426d8e054978fe2c21109b8ce6921b569967987fa1b7bbcc9ef9f" -> "sha256:d2e5e542783ec15b8ae3e970e025fd545c790e2af6cc70a68ae2918d5098362d" [label=""];
  "sha256:d2e5e542783ec15b8ae3e970e025fd545c790e2af6cc70a68ae2918d5098362d" -> "sha256:ea04061e5da70725afe5547b57001999bf95daa234dc09c27c3f3ad6c51c34ac" [label=""];
  "sha256:ceb6266c819426d8e054978fe2c21109b8ce6921b569967987fa1b7bbcc9ef9f" -> "sha256:ea04061e5da70725afe5547b57001999bf95daa234dc09c27c3f3ad6c51c34ac" [label=""];
  "sha256:ea04061e5da70725afe5547b57001999bf95daa234dc09c27c3f3ad6c51c34ac" -> "sha256:799c4cc77d9d609aab3f5791159e01086bad407ddce6b5151565657e71c51db4" [label=""];
  "sha256:799c4cc77d9d609aab3f5791159e01086bad407ddce6b5151565657e71c51db4" -> "sha256:24be0551ad2e9b708039042182564e47c6e9ec2de3e60b2d197527c0b6d3979a" [label=""];
  "sha256:24be0551ad2e9b708039042182564e47c6e9ec2de3e60b2d197527c0b6d3979a" -> "sha256:2332266995aa6c89e001edd18e566e7515aebb9c50ca90929ee9dbee3e241440" [label=""];
}

