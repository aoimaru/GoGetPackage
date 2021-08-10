[app/sources/192476115.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:0f2c976cfb18e1f695b7a30a821fa9499194ad0ab4510e305874d762dc7718b3" [label="/bin/sh -c yum install -y iptables openssh-server rsync sudo vim less ca-certificates psmisc htop procps-ng iproute curl    gcc kernel-devel kernel-headers     && yum clean all     && rm -rf /etc/ssh/*key*" shape="box"];
  "sha256:134c62161127f0bda4a66eca91c381f57116d1a5a62ab3a9931ca43989fa6662" [label="/bin/sh -c echo \"KERNEL_VERSION\" = ${distribution}" shape="box"];
  "sha256:43699e55906f4d3b7159ea43401fc5bca145ee4d887d908fdfd9fcdb42244aa3" [label="/bin/sh -c curl -s -L https://nvidia.github.io/nvidia-container-runtime/$distribution/nvidia-container-runtime.repo |     sudo tee /etc/yum.repos.d/nvidia-container-runtime.repo" shape="box"];
  "sha256:cb95427e332059dc23455cec5f9d0deae7926972bd99bd63fe58a0e0ab3fc305" [label="/bin/sh -c yum install -y nvidia-container-runtime" shape="box"];
  "sha256:587183919fff6e47bb0bd1afa04824c500197c1c369c7f3b3610e99cb87665bf" [label="mkdir{path=/dist}" shape="note"];
  "sha256:2074b15b4f9d7675b4a8f7da1a71b8618d4fe9a5aa76e18eee1d865b70acea01" [label="local://context" shape="ellipse"];
  "sha256:89e9de6b82349fc58ec5e88276456cc2dbd92b9f4b5409a44b492ae97b161ef2" [label="copy{src=/build.sh, dest=/dist/}" shape="note"];
  "sha256:5e8b9cc1faa4a721e4aa4d65f870c239714073e54aa120b88ae4aa4259da9117" [label="copy{src=/ubuntu-build.sh, dest=/dist/}" shape="note"];
  "sha256:6af56c366df433d135c24815ce2499a05bf367d77d9f225112b934f6a08371f6" [label="/bin/sh -c chmod 755 /dist/build.sh" shape="box"];
  "sha256:9c20f8b055100073e93bf30c09733cdb4e0763fc4df283f5d95fdfdb1f8fdeba" [label="sha256:9c20f8b055100073e93bf30c09733cdb4e0763fc4df283f5d95fdfdb1f8fdeba" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:0f2c976cfb18e1f695b7a30a821fa9499194ad0ab4510e305874d762dc7718b3" [label=""];
  "sha256:0f2c976cfb18e1f695b7a30a821fa9499194ad0ab4510e305874d762dc7718b3" -> "sha256:134c62161127f0bda4a66eca91c381f57116d1a5a62ab3a9931ca43989fa6662" [label=""];
  "sha256:134c62161127f0bda4a66eca91c381f57116d1a5a62ab3a9931ca43989fa6662" -> "sha256:43699e55906f4d3b7159ea43401fc5bca145ee4d887d908fdfd9fcdb42244aa3" [label=""];
  "sha256:43699e55906f4d3b7159ea43401fc5bca145ee4d887d908fdfd9fcdb42244aa3" -> "sha256:cb95427e332059dc23455cec5f9d0deae7926972bd99bd63fe58a0e0ab3fc305" [label=""];
  "sha256:cb95427e332059dc23455cec5f9d0deae7926972bd99bd63fe58a0e0ab3fc305" -> "sha256:587183919fff6e47bb0bd1afa04824c500197c1c369c7f3b3610e99cb87665bf" [label=""];
  "sha256:587183919fff6e47bb0bd1afa04824c500197c1c369c7f3b3610e99cb87665bf" -> "sha256:89e9de6b82349fc58ec5e88276456cc2dbd92b9f4b5409a44b492ae97b161ef2" [label=""];
  "sha256:2074b15b4f9d7675b4a8f7da1a71b8618d4fe9a5aa76e18eee1d865b70acea01" -> "sha256:89e9de6b82349fc58ec5e88276456cc2dbd92b9f4b5409a44b492ae97b161ef2" [label=""];
  "sha256:89e9de6b82349fc58ec5e88276456cc2dbd92b9f4b5409a44b492ae97b161ef2" -> "sha256:5e8b9cc1faa4a721e4aa4d65f870c239714073e54aa120b88ae4aa4259da9117" [label=""];
  "sha256:2074b15b4f9d7675b4a8f7da1a71b8618d4fe9a5aa76e18eee1d865b70acea01" -> "sha256:5e8b9cc1faa4a721e4aa4d65f870c239714073e54aa120b88ae4aa4259da9117" [label=""];
  "sha256:5e8b9cc1faa4a721e4aa4d65f870c239714073e54aa120b88ae4aa4259da9117" -> "sha256:6af56c366df433d135c24815ce2499a05bf367d77d9f225112b934f6a08371f6" [label=""];
  "sha256:6af56c366df433d135c24815ce2499a05bf367d77d9f225112b934f6a08371f6" -> "sha256:9c20f8b055100073e93bf30c09733cdb4e0763fc4df283f5d95fdfdb1f8fdeba" [label=""];
}

