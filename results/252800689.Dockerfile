[app/sources/252800689.Dockerfile]
digraph {
  "sha256:7b0846c94a3b652414354e85cd8c21b1a7fda02494802b938276cad08bc6cda5" [label="docker-image://docker.io/dooonooo/centos:latest" shape="ellipse"];
  "sha256:9b14c42608bd3b5b72e1f0f5a6e929f33445c49a1ea9bf8c6ae7c8fe082beb4f" [label="/bin/sh -c yum -y update && yum -y install gcc pcre-devel zlib-devel make && cd /tmp && curl -O http://nginx.org/download/nginx-1.9.13.tar.gz && tar -xvf nginx-1.9.13.tar.gz && cd nginx-1.9.13 && ./configure && make && make install && yum clean all" shape="box"];
  "sha256:c500ce7cb570aee2b4192b572d01def4b9818b4c4c0444e166eb87417ae0f648" [label="sha256:c500ce7cb570aee2b4192b572d01def4b9818b4c4c0444e166eb87417ae0f648" shape="plaintext"];
  "sha256:7b0846c94a3b652414354e85cd8c21b1a7fda02494802b938276cad08bc6cda5" -> "sha256:9b14c42608bd3b5b72e1f0f5a6e929f33445c49a1ea9bf8c6ae7c8fe082beb4f" [label=""];
  "sha256:9b14c42608bd3b5b72e1f0f5a6e929f33445c49a1ea9bf8c6ae7c8fe082beb4f" -> "sha256:c500ce7cb570aee2b4192b572d01def4b9818b4c4c0444e166eb87417ae0f648" [label=""];
}

