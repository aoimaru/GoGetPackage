[app/sources/250845649.Dockerfile]
digraph {
  "sha256:a88e5d9938f6da771a3050699351484daaae2a589a324dfaceff9457f75d76ad" [label="docker-image://docker.io/library/fedora@sha256:d18bc88f640bc3e88bbfacaff698c3e1e83cae649019657a3880881f2549a1d0" shape="ellipse"];
  "sha256:661f76e1417bd4a2d27bf2c5df1a4b214b3d1642c97aecb2e08a02a5e75be48a" [label="/bin/sh -c yum install -y iscsi-initiator-utils targetcli net-tools strace && yum clean all" shape="box"];
  "sha256:52027c36e9ebca9a6cfc7ff0e52bea3dfa08b3cf20448ae12c24b6ca6e1df496" [label="local://context" shape="ellipse"];
  "sha256:f7f2588db7ff483af70f524cee58f5ef9b6d0d9b06620e768b374ff52c65d770" [label="copy{src=/run_iscsid.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:19719e23ae635ffb654e6a93446a7b23417ab7e8813da3a16d3fd36f05d9412a" [label="copy{src=/initiatorname.iscsi, dest=/etc/iscsi/}" shape="note"];
  "sha256:6dc067535565292bff8b215a2c14560f40298edcf35f1fd13f6334120268ae21" [label="copy{src=/block.tar.gz, dest=/}" shape="note"];
  "sha256:f2606487b29c8d03b94730b715e5909885a7d4b27663ce531cc51b41bc9684a1" [label="copy{src=/saveconfig.json, dest=/etc/target/}" shape="note"];
  "sha256:cc32b69c065f4bffc680c691167918b30130b2bd23f1b4870d856db76dfd5b85" [label="sha256:cc32b69c065f4bffc680c691167918b30130b2bd23f1b4870d856db76dfd5b85" shape="plaintext"];
  "sha256:a88e5d9938f6da771a3050699351484daaae2a589a324dfaceff9457f75d76ad" -> "sha256:661f76e1417bd4a2d27bf2c5df1a4b214b3d1642c97aecb2e08a02a5e75be48a" [label=""];
  "sha256:661f76e1417bd4a2d27bf2c5df1a4b214b3d1642c97aecb2e08a02a5e75be48a" -> "sha256:f7f2588db7ff483af70f524cee58f5ef9b6d0d9b06620e768b374ff52c65d770" [label=""];
  "sha256:52027c36e9ebca9a6cfc7ff0e52bea3dfa08b3cf20448ae12c24b6ca6e1df496" -> "sha256:f7f2588db7ff483af70f524cee58f5ef9b6d0d9b06620e768b374ff52c65d770" [label=""];
  "sha256:f7f2588db7ff483af70f524cee58f5ef9b6d0d9b06620e768b374ff52c65d770" -> "sha256:19719e23ae635ffb654e6a93446a7b23417ab7e8813da3a16d3fd36f05d9412a" [label=""];
  "sha256:52027c36e9ebca9a6cfc7ff0e52bea3dfa08b3cf20448ae12c24b6ca6e1df496" -> "sha256:19719e23ae635ffb654e6a93446a7b23417ab7e8813da3a16d3fd36f05d9412a" [label=""];
  "sha256:19719e23ae635ffb654e6a93446a7b23417ab7e8813da3a16d3fd36f05d9412a" -> "sha256:6dc067535565292bff8b215a2c14560f40298edcf35f1fd13f6334120268ae21" [label=""];
  "sha256:52027c36e9ebca9a6cfc7ff0e52bea3dfa08b3cf20448ae12c24b6ca6e1df496" -> "sha256:6dc067535565292bff8b215a2c14560f40298edcf35f1fd13f6334120268ae21" [label=""];
  "sha256:6dc067535565292bff8b215a2c14560f40298edcf35f1fd13f6334120268ae21" -> "sha256:f2606487b29c8d03b94730b715e5909885a7d4b27663ce531cc51b41bc9684a1" [label=""];
  "sha256:52027c36e9ebca9a6cfc7ff0e52bea3dfa08b3cf20448ae12c24b6ca6e1df496" -> "sha256:f2606487b29c8d03b94730b715e5909885a7d4b27663ce531cc51b41bc9684a1" [label=""];
  "sha256:f2606487b29c8d03b94730b715e5909885a7d4b27663ce531cc51b41bc9684a1" -> "sha256:cc32b69c065f4bffc680c691167918b30130b2bd23f1b4870d856db76dfd5b85" [label=""];
}

