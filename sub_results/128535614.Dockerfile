[app/sub_sources/128535614.Dockerfile]
digraph {
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" [label="docker-image://docker.io/library/ubuntu:16.04@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:3d21a90f5279350c82369de453813e1366f852ca56e02e3e7d8e63371e1ad64d" [label="local://context" shape="ellipse"];
  "sha256:bc4e5306e54c913f29a9a54a16bfa8e01ad421480b28aeab020ff17df0cab616" [label="copy{src=/scripts/android-base-apt-get.sh, dest=/scripts/}" shape="note"];
  "sha256:a42f8a1afd4f111f5bb7d1ca9d5f7efdf6b8a05c37fda835e4c15176acc4d05b" [label="/bin/sh -c sh /scripts/android-base-apt-get.sh" shape="box"];
  "sha256:9f39f258f5ddfd1a3315605bdfe8822ebb10d5317f02885b760c3ad5738f9c2c" [label="copy{src=/scripts/android-ndk.sh, dest=/scripts/}" shape="note"];
  "sha256:22012abdcd2730467313798bdf88cb0e57f12bb2e9feb437c08b8aa95cf00aa1" [label="/bin/sh -c . /scripts/android-ndk.sh &&     download_ndk android-ndk-r15c-linux-x86_64.zip &&     make_standalone_toolchain arm 14 &&     make_standalone_toolchain arm 21 &&     remove_ndk" shape="box"];
  "sha256:84727266ddf6a53df4cf2bf6b032adc4f8ab1198b68e720ed0b68648e1dec0ea" [label="/bin/sh -c chmod 777 /android/ndk &&     ln -s /android/ndk/arm-21 /android/ndk/arm" shape="box"];
  "sha256:a241c8defbbd59ffcabda465e7091a473b6b6374468c016db6a36724a270b435" [label="copy{src=/scripts/sccache.sh, dest=/scripts/}" shape="note"];
  "sha256:a24876b3df407e62adeb75cfcdf120ab2a7f45867deded4121582a9a677ce996" [label="/bin/sh -c sh /scripts/sccache.sh" shape="box"];
  "sha256:ec50ced2652a05f635e4c8f107ea8660f73293288a013a5524d5b16c909ce746" [label="sha256:ec50ced2652a05f635e4c8f107ea8660f73293288a013a5524d5b16c909ce746" shape="plaintext"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" -> "sha256:bc4e5306e54c913f29a9a54a16bfa8e01ad421480b28aeab020ff17df0cab616" [label=""];
  "sha256:3d21a90f5279350c82369de453813e1366f852ca56e02e3e7d8e63371e1ad64d" -> "sha256:bc4e5306e54c913f29a9a54a16bfa8e01ad421480b28aeab020ff17df0cab616" [label=""];
  "sha256:bc4e5306e54c913f29a9a54a16bfa8e01ad421480b28aeab020ff17df0cab616" -> "sha256:a42f8a1afd4f111f5bb7d1ca9d5f7efdf6b8a05c37fda835e4c15176acc4d05b" [label=""];
  "sha256:a42f8a1afd4f111f5bb7d1ca9d5f7efdf6b8a05c37fda835e4c15176acc4d05b" -> "sha256:9f39f258f5ddfd1a3315605bdfe8822ebb10d5317f02885b760c3ad5738f9c2c" [label=""];
  "sha256:3d21a90f5279350c82369de453813e1366f852ca56e02e3e7d8e63371e1ad64d" -> "sha256:9f39f258f5ddfd1a3315605bdfe8822ebb10d5317f02885b760c3ad5738f9c2c" [label=""];
  "sha256:9f39f258f5ddfd1a3315605bdfe8822ebb10d5317f02885b760c3ad5738f9c2c" -> "sha256:22012abdcd2730467313798bdf88cb0e57f12bb2e9feb437c08b8aa95cf00aa1" [label=""];
  "sha256:22012abdcd2730467313798bdf88cb0e57f12bb2e9feb437c08b8aa95cf00aa1" -> "sha256:84727266ddf6a53df4cf2bf6b032adc4f8ab1198b68e720ed0b68648e1dec0ea" [label=""];
  "sha256:84727266ddf6a53df4cf2bf6b032adc4f8ab1198b68e720ed0b68648e1dec0ea" -> "sha256:a241c8defbbd59ffcabda465e7091a473b6b6374468c016db6a36724a270b435" [label=""];
  "sha256:3d21a90f5279350c82369de453813e1366f852ca56e02e3e7d8e63371e1ad64d" -> "sha256:a241c8defbbd59ffcabda465e7091a473b6b6374468c016db6a36724a270b435" [label=""];
  "sha256:a241c8defbbd59ffcabda465e7091a473b6b6374468c016db6a36724a270b435" -> "sha256:a24876b3df407e62adeb75cfcdf120ab2a7f45867deded4121582a9a677ce996" [label=""];
  "sha256:a24876b3df407e62adeb75cfcdf120ab2a7f45867deded4121582a9a677ce996" -> "sha256:ec50ced2652a05f635e4c8f107ea8660f73293288a013a5524d5b16c909ce746" [label=""];
}

