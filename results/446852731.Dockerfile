[app/sources/446852731.Dockerfile]
digraph {
  "sha256:29ac22d6f4172469f2c6de34599966f15a3b161bc62e795ce3f83bce71624f80" [label="local://context" shape="ellipse"];
  "sha256:e4feaee718f10cdc2e1a4052d8c09f058cfdcaeff0bdac7e3b425d6437f96e9c" [label="docker-image://docker.io/library/fedora:20" shape="ellipse"];
  "sha256:b9406c037bb3c3ceb6123db4691d9b719ac773c0c6ecce059c2da509539633c9" [label="/bin/sh -c yum -y install install livecd-tools appliance-tools-minimizer" shape="box"];
  "sha256:f29adb0aef6f2762f085253d5f6f03c27088a1041af2d718af853f5237fbfb86" [label="/bin/sh -c yum -y install fedora-packager python-devel rpm-build createrepo" shape="box"];
  "sha256:084e18e41c5462515bb3e4bc6230d32cbbdcfec524be09b3f1d9957d47f71438" [label="/bin/sh -c yum -y install selinux-policy-doc checkpolicy selinux-policy-devel" shape="box"];
  "sha256:dc26e69b5fd679e49907a34bbf626395b38e0cf7a04c1f8fa144889634cbe445" [label="/bin/sh -c yum -y install autoconf automake python-mock python-lockfile" shape="box"];
  "sha256:a0f0db54607c972a3c5547bd5f101a1f269ce1af0ad21fb7e91c4eb2aa1f0c68" [label="copy{src=/buildovirt.sh, dest=/buildovirt.sh}" shape="note"];
  "sha256:b309fc4efc2479a32e4132e23639d1169cee862fd3720f818400cc61c4e92eea" [label="sha256:b309fc4efc2479a32e4132e23639d1169cee862fd3720f818400cc61c4e92eea" shape="plaintext"];
  "sha256:e4feaee718f10cdc2e1a4052d8c09f058cfdcaeff0bdac7e3b425d6437f96e9c" -> "sha256:b9406c037bb3c3ceb6123db4691d9b719ac773c0c6ecce059c2da509539633c9" [label=""];
  "sha256:b9406c037bb3c3ceb6123db4691d9b719ac773c0c6ecce059c2da509539633c9" -> "sha256:f29adb0aef6f2762f085253d5f6f03c27088a1041af2d718af853f5237fbfb86" [label=""];
  "sha256:f29adb0aef6f2762f085253d5f6f03c27088a1041af2d718af853f5237fbfb86" -> "sha256:084e18e41c5462515bb3e4bc6230d32cbbdcfec524be09b3f1d9957d47f71438" [label=""];
  "sha256:084e18e41c5462515bb3e4bc6230d32cbbdcfec524be09b3f1d9957d47f71438" -> "sha256:dc26e69b5fd679e49907a34bbf626395b38e0cf7a04c1f8fa144889634cbe445" [label=""];
  "sha256:dc26e69b5fd679e49907a34bbf626395b38e0cf7a04c1f8fa144889634cbe445" -> "sha256:a0f0db54607c972a3c5547bd5f101a1f269ce1af0ad21fb7e91c4eb2aa1f0c68" [label=""];
  "sha256:29ac22d6f4172469f2c6de34599966f15a3b161bc62e795ce3f83bce71624f80" -> "sha256:a0f0db54607c972a3c5547bd5f101a1f269ce1af0ad21fb7e91c4eb2aa1f0c68" [label=""];
  "sha256:a0f0db54607c972a3c5547bd5f101a1f269ce1af0ad21fb7e91c4eb2aa1f0c68" -> "sha256:b309fc4efc2479a32e4132e23639d1169cee862fd3720f818400cc61c4e92eea" [label=""];
}

