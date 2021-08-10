[app/sources/479422673.Dockerfile]
digraph {
  "sha256:c515f808badf1bc39ecae56a528924cccff1f482a01e2539189022abdec6c60c" [label="docker-image://docker.io/microsoft/dotnet-buildtools-prereqs:centos-7-b46d863-20180719033416" shape="ellipse"];
  "sha256:c0753c30ce008e739c7cb9ff3ae3f8101e393d6d8cef586c15c0b8d50aefa284" [label="/bin/sh -c yum -q -y install sudo" shape="box"];
  "sha256:d4adc28e5d33c4727c112435242ee3150b65b4e6bf7827f338ddf685c359c310" [label="/bin/sh -c useradd -m code_executor -u ${USER_ID} -g root" shape="box"];
  "sha256:dc018909531662e6e73574dcce8cccd2dcb8f497547dd240d2a6efa2cc30466c" [label="/bin/sh -c echo 'code_executor ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers" shape="box"];
  "sha256:76f27d1ad8d58d1a57f2e9512faf8a3be64bfcda9ff31878c85ea8610ac1d9b8" [label="/bin/sh -c chmod -R a+rwx /usr/local" shape="box"];
  "sha256:908fd3f57878cfda7c413a0a5331748320e142b00f62a01cc970cca636f08b4b" [label="/bin/sh -c chmod -R a+rwx /home" shape="box"];
  "sha256:895746b9f0f8d1ae2adb1c0b30703ba937f21950a877aa8bf8b88dc30146ff1c" [label="/bin/sh -c chmod -R 755 /usr/bin/sudo" shape="box"];
  "sha256:da0f26056a8579b3d37577d07d6cb7fd7568782b507d68c12d17e78136c17e79" [label="mkdir{path=/opt/code}" shape="note"];
  "sha256:d361b1f0412fda111ca6afea5675b3d84a8f9dd91dccae39c5e2825d699f9f95" [label="sha256:d361b1f0412fda111ca6afea5675b3d84a8f9dd91dccae39c5e2825d699f9f95" shape="plaintext"];
  "sha256:c515f808badf1bc39ecae56a528924cccff1f482a01e2539189022abdec6c60c" -> "sha256:c0753c30ce008e739c7cb9ff3ae3f8101e393d6d8cef586c15c0b8d50aefa284" [label=""];
  "sha256:c0753c30ce008e739c7cb9ff3ae3f8101e393d6d8cef586c15c0b8d50aefa284" -> "sha256:d4adc28e5d33c4727c112435242ee3150b65b4e6bf7827f338ddf685c359c310" [label=""];
  "sha256:d4adc28e5d33c4727c112435242ee3150b65b4e6bf7827f338ddf685c359c310" -> "sha256:dc018909531662e6e73574dcce8cccd2dcb8f497547dd240d2a6efa2cc30466c" [label=""];
  "sha256:dc018909531662e6e73574dcce8cccd2dcb8f497547dd240d2a6efa2cc30466c" -> "sha256:76f27d1ad8d58d1a57f2e9512faf8a3be64bfcda9ff31878c85ea8610ac1d9b8" [label=""];
  "sha256:76f27d1ad8d58d1a57f2e9512faf8a3be64bfcda9ff31878c85ea8610ac1d9b8" -> "sha256:908fd3f57878cfda7c413a0a5331748320e142b00f62a01cc970cca636f08b4b" [label=""];
  "sha256:908fd3f57878cfda7c413a0a5331748320e142b00f62a01cc970cca636f08b4b" -> "sha256:895746b9f0f8d1ae2adb1c0b30703ba937f21950a877aa8bf8b88dc30146ff1c" [label=""];
  "sha256:895746b9f0f8d1ae2adb1c0b30703ba937f21950a877aa8bf8b88dc30146ff1c" -> "sha256:da0f26056a8579b3d37577d07d6cb7fd7568782b507d68c12d17e78136c17e79" [label=""];
  "sha256:da0f26056a8579b3d37577d07d6cb7fd7568782b507d68c12d17e78136c17e79" -> "sha256:d361b1f0412fda111ca6afea5675b3d84a8f9dd91dccae39c5e2825d699f9f95" [label=""];
}

