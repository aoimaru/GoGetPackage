[app/sources/385510328.Dockerfile]
digraph {
  "sha256:ea9f6797297ecb1615f9dde61ab33ff908ae07ebe3cb0eddb073a3c7fbfd8cba" [label="docker-image://docker.io/ceph/base:latest" shape="ellipse"];
  "sha256:be55892e952b32d6cba5cc73546bcd8df493f498515d25df05affb5e084e6219" [label="/bin/sh -c apt-get install -y ceph" shape="box"];
  "sha256:581c9860cf4152b37d7a60711f9ea85a48af77351dd3f69e1908c63861126096" [label="/bin/sh -c apt-get install -y ceph-mds" shape="box"];
  "sha256:8f7dd0b109873a856b07bed335b7db12144d95392c41bcd9f657ceac22dd391b" [label="/bin/sh -c apt-get clean" shape="box"];
  "sha256:425927e010577a173e61908b12f7bec44811424662bb4ebb6cabf57b70c78f83" [label="/bin/sh -c mkdir -p /home/ceph/.ssh" shape="box"];
  "sha256:019177ac1e016246e0150e9f0c546032b863e1cfe93e02d45a613710d8527512" [label="local://context" shape="ellipse"];
  "sha256:026ec156c57bea2767e3e0843eda1347fef1306b1b41c98a098cc036379c3c6f" [label="copy{src=/authorized_keys, dest=/home/ceph/.ssh/authorized_keys}" shape="note"];
  "sha256:0ff2db8e603883da9a11f404f4afa8a13412a0caa8565032d9a9d4f068804fcc" [label="/bin/sh -c chown -R ceph.ceph /home/ceph/" shape="box"];
  "sha256:b1934094a598f845ad856b17764736ce485d5f3410f79e3c27af7493e1547330" [label="sha256:b1934094a598f845ad856b17764736ce485d5f3410f79e3c27af7493e1547330" shape="plaintext"];
  "sha256:ea9f6797297ecb1615f9dde61ab33ff908ae07ebe3cb0eddb073a3c7fbfd8cba" -> "sha256:be55892e952b32d6cba5cc73546bcd8df493f498515d25df05affb5e084e6219" [label=""];
  "sha256:be55892e952b32d6cba5cc73546bcd8df493f498515d25df05affb5e084e6219" -> "sha256:581c9860cf4152b37d7a60711f9ea85a48af77351dd3f69e1908c63861126096" [label=""];
  "sha256:581c9860cf4152b37d7a60711f9ea85a48af77351dd3f69e1908c63861126096" -> "sha256:8f7dd0b109873a856b07bed335b7db12144d95392c41bcd9f657ceac22dd391b" [label=""];
  "sha256:8f7dd0b109873a856b07bed335b7db12144d95392c41bcd9f657ceac22dd391b" -> "sha256:425927e010577a173e61908b12f7bec44811424662bb4ebb6cabf57b70c78f83" [label=""];
  "sha256:425927e010577a173e61908b12f7bec44811424662bb4ebb6cabf57b70c78f83" -> "sha256:026ec156c57bea2767e3e0843eda1347fef1306b1b41c98a098cc036379c3c6f" [label=""];
  "sha256:019177ac1e016246e0150e9f0c546032b863e1cfe93e02d45a613710d8527512" -> "sha256:026ec156c57bea2767e3e0843eda1347fef1306b1b41c98a098cc036379c3c6f" [label=""];
  "sha256:026ec156c57bea2767e3e0843eda1347fef1306b1b41c98a098cc036379c3c6f" -> "sha256:0ff2db8e603883da9a11f404f4afa8a13412a0caa8565032d9a9d4f068804fcc" [label=""];
  "sha256:0ff2db8e603883da9a11f404f4afa8a13412a0caa8565032d9a9d4f068804fcc" -> "sha256:b1934094a598f845ad856b17764736ce485d5f3410f79e3c27af7493e1547330" [label=""];
}

