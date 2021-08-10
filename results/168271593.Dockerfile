[app/sources/168271593.Dockerfile]
digraph {
  "sha256:a7c64ac1621bb8a2ae401f73177615622bf032edd83117d61c79b24597ec60a6" [label="local://context" shape="ellipse"];
  "sha256:9138d4eb36ee5f6ee52a63e8ebc1498596d5a20e6fa71d331ad67458ecac38c5" [label="docker-image://docker.io/library/rhel6:latest" shape="ellipse"];
  "sha256:3b56aa8a6d6fc44a3b02b496b2f7b299c3f9a3a951a4260ae46cb30e35f787e4" [label="/bin/sh -c yum install -y --setopt=tsflags=nodocs yum-utils &&     yum-config-manager --enable rhel-server-rhscl-6-rpms &&     yum-config-manager --enable rhel-6-server-optional-rpms &&     yum clean all" shape="box"];
  "sha256:ee1669e67d4e9eed887c79a97c448d4b6a2bcfd710b27ba4ac6dfdafa5217a28" [label="/bin/sh -c yum install -y --setopt=tsflags=nodocs devtoolset-4-dyninst && yum clean all" shape="box"];
  "sha256:3732a6901224cda00fe299f9e38ab57313bdb2e4e8bad2210e26b20944e031bc" [label="copy{src=/enabledevtoolset-4.sh, dest=/usr/share/cont-layer/common/env/enabledevtoolset-4.sh}" shape="note"];
  "sha256:29709d45c9688dc4a49a95c57aaad801cfa6a7d495ff3e88d045ef1a26a13717" [label="copy{src=/usr, dest=/usr}" shape="note"];
  "sha256:173a1e3ae5002c1a84376f034c02ff3dd0f945774524eb59ed415f2a98b1ad72" [label="copy{src=/etc, dest=/etc}" shape="note"];
  "sha256:b8febfdce683ae5d038b52018630ec3a4bc99d2f7ad57223e8ae94af6228551c" [label="copy{src=/root, dest=/root}" shape="note"];
  "sha256:4ae8188b51790b0a0fbe2e5cd731b76d757abd80153e08d6e42822975ed4d14f" [label="/bin/sh -c groupadd -r default -f -g 1001 &&         useradd -u 1001 -r -g default -d ${HOME} -s /sbin/nologin                         -c \"Default Application User\" default" shape="box"];
  "sha256:a9228dabd3ce5f26d9961fa0574f1184b1b43ad2a46d6f29812217af455305e6" [label="sha256:a9228dabd3ce5f26d9961fa0574f1184b1b43ad2a46d6f29812217af455305e6" shape="plaintext"];
  "sha256:9138d4eb36ee5f6ee52a63e8ebc1498596d5a20e6fa71d331ad67458ecac38c5" -> "sha256:3b56aa8a6d6fc44a3b02b496b2f7b299c3f9a3a951a4260ae46cb30e35f787e4" [label=""];
  "sha256:3b56aa8a6d6fc44a3b02b496b2f7b299c3f9a3a951a4260ae46cb30e35f787e4" -> "sha256:ee1669e67d4e9eed887c79a97c448d4b6a2bcfd710b27ba4ac6dfdafa5217a28" [label=""];
  "sha256:ee1669e67d4e9eed887c79a97c448d4b6a2bcfd710b27ba4ac6dfdafa5217a28" -> "sha256:3732a6901224cda00fe299f9e38ab57313bdb2e4e8bad2210e26b20944e031bc" [label=""];
  "sha256:a7c64ac1621bb8a2ae401f73177615622bf032edd83117d61c79b24597ec60a6" -> "sha256:3732a6901224cda00fe299f9e38ab57313bdb2e4e8bad2210e26b20944e031bc" [label=""];
  "sha256:3732a6901224cda00fe299f9e38ab57313bdb2e4e8bad2210e26b20944e031bc" -> "sha256:29709d45c9688dc4a49a95c57aaad801cfa6a7d495ff3e88d045ef1a26a13717" [label=""];
  "sha256:a7c64ac1621bb8a2ae401f73177615622bf032edd83117d61c79b24597ec60a6" -> "sha256:29709d45c9688dc4a49a95c57aaad801cfa6a7d495ff3e88d045ef1a26a13717" [label=""];
  "sha256:29709d45c9688dc4a49a95c57aaad801cfa6a7d495ff3e88d045ef1a26a13717" -> "sha256:173a1e3ae5002c1a84376f034c02ff3dd0f945774524eb59ed415f2a98b1ad72" [label=""];
  "sha256:a7c64ac1621bb8a2ae401f73177615622bf032edd83117d61c79b24597ec60a6" -> "sha256:173a1e3ae5002c1a84376f034c02ff3dd0f945774524eb59ed415f2a98b1ad72" [label=""];
  "sha256:173a1e3ae5002c1a84376f034c02ff3dd0f945774524eb59ed415f2a98b1ad72" -> "sha256:b8febfdce683ae5d038b52018630ec3a4bc99d2f7ad57223e8ae94af6228551c" [label=""];
  "sha256:a7c64ac1621bb8a2ae401f73177615622bf032edd83117d61c79b24597ec60a6" -> "sha256:b8febfdce683ae5d038b52018630ec3a4bc99d2f7ad57223e8ae94af6228551c" [label=""];
  "sha256:b8febfdce683ae5d038b52018630ec3a4bc99d2f7ad57223e8ae94af6228551c" -> "sha256:4ae8188b51790b0a0fbe2e5cd731b76d757abd80153e08d6e42822975ed4d14f" [label=""];
  "sha256:4ae8188b51790b0a0fbe2e5cd731b76d757abd80153e08d6e42822975ed4d14f" -> "sha256:a9228dabd3ce5f26d9961fa0574f1184b1b43ad2a46d6f29812217af455305e6" [label=""];
}

