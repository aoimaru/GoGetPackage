[app/sources/476192421.Dockerfile]
digraph {
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" [label="docker-image://docker.io/library/centos:centos6" shape="ellipse"];
  "sha256:e23e23068a308f976420ba39cac158096c9eb8e2636b6fcff2a5bcaab64bb123" [label="/bin/sh -c rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm" shape="box"];
  "sha256:c92454c477b9b3ad4c7c9e4794df832b81f95b47446ea7f11a6d447f09b3d950" [label="/bin/sh -c yum install -y npm" shape="box"];
  "sha256:b24f695d5304e30c41821126cdfed111676859a48adc56dcd75176ab7bb54ff6" [label="local://context" shape="ellipse"];
  "sha256:1f8468c54412405611ddf5dfdf33d5cfe19a4a2d84e66891eac5b0c2c24c7d38" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:075e81e6a2d5af99db897c997c02fb474527394e6e5cb6f71b091db312f515ed" [label="/bin/sh -c cd /src; npm install" shape="box"];
  "sha256:fdc62a64fdb2d5d4f2681f3b6cc2716bc1066b01cac772893b4fa158be736953" [label="sha256:fdc62a64fdb2d5d4f2681f3b6cc2716bc1066b01cac772893b4fa158be736953" shape="plaintext"];
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" -> "sha256:e23e23068a308f976420ba39cac158096c9eb8e2636b6fcff2a5bcaab64bb123" [label=""];
  "sha256:e23e23068a308f976420ba39cac158096c9eb8e2636b6fcff2a5bcaab64bb123" -> "sha256:c92454c477b9b3ad4c7c9e4794df832b81f95b47446ea7f11a6d447f09b3d950" [label=""];
  "sha256:c92454c477b9b3ad4c7c9e4794df832b81f95b47446ea7f11a6d447f09b3d950" -> "sha256:1f8468c54412405611ddf5dfdf33d5cfe19a4a2d84e66891eac5b0c2c24c7d38" [label=""];
  "sha256:b24f695d5304e30c41821126cdfed111676859a48adc56dcd75176ab7bb54ff6" -> "sha256:1f8468c54412405611ddf5dfdf33d5cfe19a4a2d84e66891eac5b0c2c24c7d38" [label=""];
  "sha256:1f8468c54412405611ddf5dfdf33d5cfe19a4a2d84e66891eac5b0c2c24c7d38" -> "sha256:075e81e6a2d5af99db897c997c02fb474527394e6e5cb6f71b091db312f515ed" [label=""];
  "sha256:075e81e6a2d5af99db897c997c02fb474527394e6e5cb6f71b091db312f515ed" -> "sha256:fdc62a64fdb2d5d4f2681f3b6cc2716bc1066b01cac772893b4fa158be736953" [label=""];
}

