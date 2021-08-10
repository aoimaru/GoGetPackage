[app/sources/464434315.Dockerfile]
digraph {
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:777d991272a2cc87c5e331e5d0244146ca1b74fac3fb253ad03d7b634b81abef" [label="/bin/sh -c rpm -Uvh https://packages.microsoft.com/config/rhel/7/packages-microsoft-prod.rpm" shape="box"];
  "sha256:e966f6a9297bef7126aadfe949dd7c0d9f7a0e4274069fa64f1d4074b4fba6dc" [label="/bin/sh -c yum update -y" shape="box"];
  "sha256:6c38e7fe6f29aa26690f2a55aa9f2063258db075f3046f9bcca580380251e6b7" [label="/bin/sh -c yum install libunwind libicu dotnet-sdk-2.1 samba-client samba-common cifs-utils -y" shape="box"];
  "sha256:dc6e66bb9e7c443f1d36ff1d273eeaa4aa1a2057872211cbcf7622dd143bf86d" [label="/bin/sh -c mkdir /mnt/eshoponweb" shape="box"];
  "sha256:9f0be7d0fdd63a3faf8ee22d9659f3a02ecc6441fdacdc21934e3b105fbec348" [label="sha256:9f0be7d0fdd63a3faf8ee22d9659f3a02ecc6441fdacdc21934e3b105fbec348" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:777d991272a2cc87c5e331e5d0244146ca1b74fac3fb253ad03d7b634b81abef" [label=""];
  "sha256:777d991272a2cc87c5e331e5d0244146ca1b74fac3fb253ad03d7b634b81abef" -> "sha256:e966f6a9297bef7126aadfe949dd7c0d9f7a0e4274069fa64f1d4074b4fba6dc" [label=""];
  "sha256:e966f6a9297bef7126aadfe949dd7c0d9f7a0e4274069fa64f1d4074b4fba6dc" -> "sha256:6c38e7fe6f29aa26690f2a55aa9f2063258db075f3046f9bcca580380251e6b7" [label=""];
  "sha256:6c38e7fe6f29aa26690f2a55aa9f2063258db075f3046f9bcca580380251e6b7" -> "sha256:dc6e66bb9e7c443f1d36ff1d273eeaa4aa1a2057872211cbcf7622dd143bf86d" [label=""];
  "sha256:dc6e66bb9e7c443f1d36ff1d273eeaa4aa1a2057872211cbcf7622dd143bf86d" -> "sha256:9f0be7d0fdd63a3faf8ee22d9659f3a02ecc6441fdacdc21934e3b105fbec348" [label=""];
}

