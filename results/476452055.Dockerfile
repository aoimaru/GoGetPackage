[app/sources/476452055.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:48312b3ce1f8bd4dcdaf6c48243c056a4e19e5e7a432704f20bf6450ca0ab3bd" [label="/bin/sh -c find /etc/systemd/system     /lib/systemd/system     -path '*.wants/*'     -not -name '*journald*'     -not -name '*systemd-tmpfiles*'     -not -name '*systemd-user-sessions*'     -exec rm \\{} \\;" shape="box"];
  "sha256:00928137c448f3576a6ee04fd93abab9ef9cf4da3889e65601c519925ab5045e" [label="/bin/sh -c apt-get update &&     apt-get install -y     dbus systemd iproute2 sudo &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:1b2ea836aa69d1268d524c0c4f9f96552434b0fd5a8a03c62b934efa46ae45a2" [label="/bin/sh -c systemctl set-default multi-user.target" shape="box"];
  "sha256:3d9d97d320737a5143450e892e3ebdfd42c23c9bd6da93d3ce039e1580f3ed03" [label="/bin/sh -c systemctl mask dev-hugepages.mount sys-fs-fuse-connections.mount" shape="box"];
  "sha256:ba40c5bf45cb810fdeffb0f2d518f0070924179535bf529473f2a67119e23332" [label="local://context" shape="ellipse"];
  "sha256:12ef6402c2d2b3caa63dedeb51a996642d0a28c8ba8e465230f154c84896e9f5" [label="copy{src=/setup, dest=/sbin/}" shape="note"];
  "sha256:23e28047577d535fe1760e3f4764ff3eb8f85b3bf958858ef5ee90c434c45ca8" [label="/bin/sh -c apt-get update -y" shape="box"];
  "sha256:992cb6232ca7b66a2b7b24c32c817116eb619af8ec5c7e55929ee675627f644c" [label="/bin/sh -c apt-get upgrade -y" shape="box"];
  "sha256:9e9e72a42550acc1dee03e3b64eb914f8f53903a2f12e312d4b515aff0e8d473" [label="/bin/sh -c apt-get install -y software-properties-common git python-dev wget apt-transport-https libffi-dev libssl-dev" shape="box"];
  "sha256:ea142973a62385710ae29d7983ed929ca973fa3e67a9c71d337aaad398c7f8a5" [label="/bin/sh -c apt-get install -y python-pip" shape="box"];
  "sha256:49459bd7ee14be33453f7516611e2d55c3d6f9db2afbabd25e6298c42c2e824d" [label="/bin/sh -c pip install -U pip" shape="box"];
  "sha256:477403f30ee71c9373a74de93d940bd974cb86f38d7974a95930f8dace8e2543" [label="/bin/sh -c pip install ansible ansible-lint" shape="box"];
  "sha256:01237464d7b008037668827b58c23552f59392d73c8f6dcfc05c3692ca6cb75b" [label="/bin/sh -c mkdir -p /etc/ansible" shape="box"];
  "sha256:19077087e0eb8bd41681d0e83919326d3888615222eb0629e9bbddb8f8e71dac" [label="/bin/sh -c wget https://bootstrap.pypa.io/ez_setup.py -O - | python" shape="box"];
  "sha256:eb27ffeb7d65619ef8d32ddec282c633dd0ce920b07f2e951ec1ef15e07d3288" [label="/bin/sh -c mkdir -p /home/root/Desktop" shape="box"];
  "sha256:28d92814f478df86c6e0df435ee93d5d62a4b3437644c24f79da3a0d5bd0d152" [label="/bin/sh -c echo \"[local]\\nlocalhost ansible_connection=local\" > /etc/ansible/hosts" shape="box"];
  "sha256:b604a5ba7d40413fb518304b1134796f4cb870e4af298f6d664297271c537316" [label="sha256:b604a5ba7d40413fb518304b1134796f4cb870e4af298f6d664297271c537316" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:48312b3ce1f8bd4dcdaf6c48243c056a4e19e5e7a432704f20bf6450ca0ab3bd" [label=""];
  "sha256:48312b3ce1f8bd4dcdaf6c48243c056a4e19e5e7a432704f20bf6450ca0ab3bd" -> "sha256:00928137c448f3576a6ee04fd93abab9ef9cf4da3889e65601c519925ab5045e" [label=""];
  "sha256:00928137c448f3576a6ee04fd93abab9ef9cf4da3889e65601c519925ab5045e" -> "sha256:1b2ea836aa69d1268d524c0c4f9f96552434b0fd5a8a03c62b934efa46ae45a2" [label=""];
  "sha256:1b2ea836aa69d1268d524c0c4f9f96552434b0fd5a8a03c62b934efa46ae45a2" -> "sha256:3d9d97d320737a5143450e892e3ebdfd42c23c9bd6da93d3ce039e1580f3ed03" [label=""];
  "sha256:3d9d97d320737a5143450e892e3ebdfd42c23c9bd6da93d3ce039e1580f3ed03" -> "sha256:12ef6402c2d2b3caa63dedeb51a996642d0a28c8ba8e465230f154c84896e9f5" [label=""];
  "sha256:ba40c5bf45cb810fdeffb0f2d518f0070924179535bf529473f2a67119e23332" -> "sha256:12ef6402c2d2b3caa63dedeb51a996642d0a28c8ba8e465230f154c84896e9f5" [label=""];
  "sha256:12ef6402c2d2b3caa63dedeb51a996642d0a28c8ba8e465230f154c84896e9f5" -> "sha256:23e28047577d535fe1760e3f4764ff3eb8f85b3bf958858ef5ee90c434c45ca8" [label=""];
  "sha256:23e28047577d535fe1760e3f4764ff3eb8f85b3bf958858ef5ee90c434c45ca8" -> "sha256:992cb6232ca7b66a2b7b24c32c817116eb619af8ec5c7e55929ee675627f644c" [label=""];
  "sha256:992cb6232ca7b66a2b7b24c32c817116eb619af8ec5c7e55929ee675627f644c" -> "sha256:9e9e72a42550acc1dee03e3b64eb914f8f53903a2f12e312d4b515aff0e8d473" [label=""];
  "sha256:9e9e72a42550acc1dee03e3b64eb914f8f53903a2f12e312d4b515aff0e8d473" -> "sha256:ea142973a62385710ae29d7983ed929ca973fa3e67a9c71d337aaad398c7f8a5" [label=""];
  "sha256:ea142973a62385710ae29d7983ed929ca973fa3e67a9c71d337aaad398c7f8a5" -> "sha256:49459bd7ee14be33453f7516611e2d55c3d6f9db2afbabd25e6298c42c2e824d" [label=""];
  "sha256:49459bd7ee14be33453f7516611e2d55c3d6f9db2afbabd25e6298c42c2e824d" -> "sha256:477403f30ee71c9373a74de93d940bd974cb86f38d7974a95930f8dace8e2543" [label=""];
  "sha256:477403f30ee71c9373a74de93d940bd974cb86f38d7974a95930f8dace8e2543" -> "sha256:01237464d7b008037668827b58c23552f59392d73c8f6dcfc05c3692ca6cb75b" [label=""];
  "sha256:01237464d7b008037668827b58c23552f59392d73c8f6dcfc05c3692ca6cb75b" -> "sha256:19077087e0eb8bd41681d0e83919326d3888615222eb0629e9bbddb8f8e71dac" [label=""];
  "sha256:19077087e0eb8bd41681d0e83919326d3888615222eb0629e9bbddb8f8e71dac" -> "sha256:eb27ffeb7d65619ef8d32ddec282c633dd0ce920b07f2e951ec1ef15e07d3288" [label=""];
  "sha256:eb27ffeb7d65619ef8d32ddec282c633dd0ce920b07f2e951ec1ef15e07d3288" -> "sha256:28d92814f478df86c6e0df435ee93d5d62a4b3437644c24f79da3a0d5bd0d152" [label=""];
  "sha256:28d92814f478df86c6e0df435ee93d5d62a4b3437644c24f79da3a0d5bd0d152" -> "sha256:b604a5ba7d40413fb518304b1134796f4cb870e4af298f6d664297271c537316" [label=""];
}

