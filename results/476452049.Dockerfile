[app/sources/476452049.Dockerfile]
digraph {
  "sha256:36aea01cfe65e9eb29a37d74b45d24bc65ae2bd028a137fcf49f6de9fc970545" [label="docker-image://docker.io/library/fedora:25" shape="ellipse"];
  "sha256:a4daa9bfa103674ddeed13dc9cd7af80a42a1f2e0e4ad3bcab1ebe88d7b2b7e6" [label="/bin/sh -c dnf -y update && dnf install -y findutils" shape="box"];
  "sha256:a98cee9539b57e795e5edcbef485bcb971022b21dd4c0cca6c2a77edbfd0cb17" [label="/bin/sh -c find /etc/systemd/system     /lib/systemd/system     -path '*.wants/*'     -not -name '*journald*'     -not -name '*systemd-tmpfiles*'     -not -name '*systemd-user-sessions*'     -exec rm \\{} \\;" shape="box"];
  "sha256:59b2ee3b29d4a16a4bee0c348c162b7137dce70e85e7ada6e76d8baf03a317d9" [label="/bin/sh -c systemctl set-default multi-user.target" shape="box"];
  "sha256:32ef6dba3d636610c41bcf8bc0d643cdcfc37ca7996442ea1c4c10d1d1cdec95" [label="local://context" shape="ellipse"];
  "sha256:d7a9fa0f66291e8bfb312ee1ada5df8854b0ef95e2a9cebd817c0d568b69f9a5" [label="copy{src=/setup, dest=/sbin/}" shape="note"];
  "sha256:75b997b6fc32450e6f8b929081e69d600e22226f513293e47b0c5ee7822e7d5b" [label="/bin/sh -c dnf -y update" shape="box"];
  "sha256:2c30ae0c65f91c6d725ede3cea17a2928b8079ac1b35934d563e5895ef352330" [label="/bin/sh -c dnf install -y python2 python2-dnf libselinux-python sudo" shape="box"];
  "sha256:3f85f98c61e1a230ccc6678f2cd07d045202181592a32e33de978170f05167ff" [label="/bin/sh -c dnf -y install ansible" shape="box"];
  "sha256:546809705802140e8f27da51dd1dde5ef0183e163a5e7f962bda36bf1c4450cc" [label="/bin/sh -c mkdir -p /etc/ansible" shape="box"];
  "sha256:03179fb76b64477500eb17d8d1662bbb1115926b8efb4f5c8beec4f68f240138" [label="/bin/sh -c echo \"[local]\" > /etc/ansible/hosts" shape="box"];
  "sha256:37eb210c7e02edf5d523f52c664b89cd784235137093de5861925381a7d4f61d" [label="/bin/sh -c echo \"localhost ansible_connection=local\" >> /etc/ansible/hosts" shape="box"];
  "sha256:f3961fc8cf3932a880f44cf4afaa8c7430688d5af919a694bebce074c23ede6a" [label="sha256:f3961fc8cf3932a880f44cf4afaa8c7430688d5af919a694bebce074c23ede6a" shape="plaintext"];
  "sha256:36aea01cfe65e9eb29a37d74b45d24bc65ae2bd028a137fcf49f6de9fc970545" -> "sha256:a4daa9bfa103674ddeed13dc9cd7af80a42a1f2e0e4ad3bcab1ebe88d7b2b7e6" [label=""];
  "sha256:a4daa9bfa103674ddeed13dc9cd7af80a42a1f2e0e4ad3bcab1ebe88d7b2b7e6" -> "sha256:a98cee9539b57e795e5edcbef485bcb971022b21dd4c0cca6c2a77edbfd0cb17" [label=""];
  "sha256:a98cee9539b57e795e5edcbef485bcb971022b21dd4c0cca6c2a77edbfd0cb17" -> "sha256:59b2ee3b29d4a16a4bee0c348c162b7137dce70e85e7ada6e76d8baf03a317d9" [label=""];
  "sha256:59b2ee3b29d4a16a4bee0c348c162b7137dce70e85e7ada6e76d8baf03a317d9" -> "sha256:d7a9fa0f66291e8bfb312ee1ada5df8854b0ef95e2a9cebd817c0d568b69f9a5" [label=""];
  "sha256:32ef6dba3d636610c41bcf8bc0d643cdcfc37ca7996442ea1c4c10d1d1cdec95" -> "sha256:d7a9fa0f66291e8bfb312ee1ada5df8854b0ef95e2a9cebd817c0d568b69f9a5" [label=""];
  "sha256:d7a9fa0f66291e8bfb312ee1ada5df8854b0ef95e2a9cebd817c0d568b69f9a5" -> "sha256:75b997b6fc32450e6f8b929081e69d600e22226f513293e47b0c5ee7822e7d5b" [label=""];
  "sha256:75b997b6fc32450e6f8b929081e69d600e22226f513293e47b0c5ee7822e7d5b" -> "sha256:2c30ae0c65f91c6d725ede3cea17a2928b8079ac1b35934d563e5895ef352330" [label=""];
  "sha256:2c30ae0c65f91c6d725ede3cea17a2928b8079ac1b35934d563e5895ef352330" -> "sha256:3f85f98c61e1a230ccc6678f2cd07d045202181592a32e33de978170f05167ff" [label=""];
  "sha256:3f85f98c61e1a230ccc6678f2cd07d045202181592a32e33de978170f05167ff" -> "sha256:546809705802140e8f27da51dd1dde5ef0183e163a5e7f962bda36bf1c4450cc" [label=""];
  "sha256:546809705802140e8f27da51dd1dde5ef0183e163a5e7f962bda36bf1c4450cc" -> "sha256:03179fb76b64477500eb17d8d1662bbb1115926b8efb4f5c8beec4f68f240138" [label=""];
  "sha256:03179fb76b64477500eb17d8d1662bbb1115926b8efb4f5c8beec4f68f240138" -> "sha256:37eb210c7e02edf5d523f52c664b89cd784235137093de5861925381a7d4f61d" [label=""];
  "sha256:37eb210c7e02edf5d523f52c664b89cd784235137093de5861925381a7d4f61d" -> "sha256:f3961fc8cf3932a880f44cf4afaa8c7430688d5af919a694bebce074c23ede6a" [label=""];
}

