[app/sources/339763722.Dockerfile]
digraph {
  "sha256:0b5154979434d0e1c8ac334a0708b7d6b86d8cf222d5a6081171ad39f0069686" [label="docker-image://docker.io/library/debian:sid" shape="ellipse"];
  "sha256:5b7435577ce1e11c302210c0587b746ef41000a6586e06d9e19e3967a76ab867" [label="/bin/sh -c apt-get update &&     apt-get -y upgrade &&     apt-get -y install auditd ca-certificates docker.io       gawk iproute2 procps --no-install-recommends &&     apt-get -y clean &&     apt-get -y autoremove &&     rm -rf /var/lib/apt/lists/*       /usr/share/doc /usr/share/doc-base       /usr/share/man /usr/share/locale /usr/share/zoneinfo" shape="box"];
  "sha256:b284be122d497758f9251651bcfd446047bf4aa1e37de34d444567023179543f" [label="/bin/sh -c mkdir /docker-bench-security" shape="box"];
  "sha256:944936f3902e20ca2ee0f6a7cc8f7d0411f81f620a8a0dcf71eed8afef0e2e84" [label="local://context" shape="ellipse"];
  "sha256:460782f9a8876c94b7ecb77de4ccb5ffc9f9278c495946682d2db3da50b89ce5" [label="copy{src=/, dest=/docker-bench-security}" shape="note"];
  "sha256:cc651da3568eb8f36a887c538f3fea0e159fd4089078b3c60b05410fd4f6af71" [label="mkdir{path=/docker-bench-security}" shape="note"];
  "sha256:88e8806e61291ed2f7e0307434660aa5a93eb1db751e17ac1b8bca3ba2e59c41" [label="sha256:88e8806e61291ed2f7e0307434660aa5a93eb1db751e17ac1b8bca3ba2e59c41" shape="plaintext"];
  "sha256:0b5154979434d0e1c8ac334a0708b7d6b86d8cf222d5a6081171ad39f0069686" -> "sha256:5b7435577ce1e11c302210c0587b746ef41000a6586e06d9e19e3967a76ab867" [label=""];
  "sha256:5b7435577ce1e11c302210c0587b746ef41000a6586e06d9e19e3967a76ab867" -> "sha256:b284be122d497758f9251651bcfd446047bf4aa1e37de34d444567023179543f" [label=""];
  "sha256:b284be122d497758f9251651bcfd446047bf4aa1e37de34d444567023179543f" -> "sha256:460782f9a8876c94b7ecb77de4ccb5ffc9f9278c495946682d2db3da50b89ce5" [label=""];
  "sha256:944936f3902e20ca2ee0f6a7cc8f7d0411f81f620a8a0dcf71eed8afef0e2e84" -> "sha256:460782f9a8876c94b7ecb77de4ccb5ffc9f9278c495946682d2db3da50b89ce5" [label=""];
  "sha256:460782f9a8876c94b7ecb77de4ccb5ffc9f9278c495946682d2db3da50b89ce5" -> "sha256:cc651da3568eb8f36a887c538f3fea0e159fd4089078b3c60b05410fd4f6af71" [label=""];
  "sha256:cc651da3568eb8f36a887c538f3fea0e159fd4089078b3c60b05410fd4f6af71" -> "sha256:88e8806e61291ed2f7e0307434660aa5a93eb1db751e17ac1b8bca3ba2e59c41" [label=""];
}

