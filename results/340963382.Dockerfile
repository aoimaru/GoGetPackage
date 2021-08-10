[app/sources/340963382.Dockerfile]
digraph {
  "sha256:cbd7e6003e6ad3fa388e5bff8b32204e5f3f573ca855bd7964f5ef750fb70a76" [label="local://context" shape="ellipse"];
  "sha256:a5c23d8953fcea7f1e0e4eed65d93519c71fc6a7838317d4b8d47ff8763bf504" [label="docker-image://docker.io/library/centos:7.2.1511" shape="ellipse"];
  "sha256:869349e8a5ece1a485a5149ae24a89806df40da887e3e38f906e05f1be78f426" [label="/bin/sh -c yum -y localinstall http://resources.ovirt.org/pub/yum-repo/ovirt-release36.rpm     && yum -y install ovirt-engine patch     && yum -y clean all" shape="box"];
  "sha256:1b9f99692eef9b2ac6fb82177e96435f9f28e2fec98f337b35e30f6428cac98c" [label="/bin/sh -c curl -OL https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz     && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz" shape="box"];
  "sha256:a6df9d659c639f054268303725436e05b6a19f4291601b81cc12ccc9db871a5d" [label="/bin/sh -c ln -s /usr/sbin/service /usr/bin/initctl" shape="box"];
  "sha256:313c9e934c10160c53f522f669ad9a2b67dab71f881cfa24c59f4016c8976b73" [label="copy{src=/entrypoint.sh, dest=/},copy{src=/answers.conf.in, dest=/},copy{src=/setup.patch, dest=/}" shape="note"];
  "sha256:47919e82432cc67b4eb0d95ed0daeb593ceba29dbc62a10197801960db266f41" [label="copy{src=/999-ovirt-engine.conf, dest=/etc/ovirt-engine/engine.conf.d/}" shape="note"];
  "sha256:cfa266aeac1830e6f646484abc3d63aa90f409c75ae630b178bd40b261651f2f" [label="/bin/sh -c patch -p0 < setup.patch" shape="box"];
  "sha256:7d6d626ac29bed9510a1f01b34d50c932546ee33a2a32d69ab620f14ddbdbe0f" [label="/bin/sh -c cp -a /etc/pki/ovirt-engine /etc/pki/ovirt-engine.tmpl" shape="box"];
  "sha256:455701800e5282e432b77d70956d521bf05937fab8b05238ccd09fb6f13eabf7" [label="sha256:455701800e5282e432b77d70956d521bf05937fab8b05238ccd09fb6f13eabf7" shape="plaintext"];
  "sha256:a5c23d8953fcea7f1e0e4eed65d93519c71fc6a7838317d4b8d47ff8763bf504" -> "sha256:869349e8a5ece1a485a5149ae24a89806df40da887e3e38f906e05f1be78f426" [label=""];
  "sha256:869349e8a5ece1a485a5149ae24a89806df40da887e3e38f906e05f1be78f426" -> "sha256:1b9f99692eef9b2ac6fb82177e96435f9f28e2fec98f337b35e30f6428cac98c" [label=""];
  "sha256:1b9f99692eef9b2ac6fb82177e96435f9f28e2fec98f337b35e30f6428cac98c" -> "sha256:a6df9d659c639f054268303725436e05b6a19f4291601b81cc12ccc9db871a5d" [label=""];
  "sha256:a6df9d659c639f054268303725436e05b6a19f4291601b81cc12ccc9db871a5d" -> "sha256:313c9e934c10160c53f522f669ad9a2b67dab71f881cfa24c59f4016c8976b73" [label=""];
  "sha256:cbd7e6003e6ad3fa388e5bff8b32204e5f3f573ca855bd7964f5ef750fb70a76" -> "sha256:313c9e934c10160c53f522f669ad9a2b67dab71f881cfa24c59f4016c8976b73" [label=""];
  "sha256:313c9e934c10160c53f522f669ad9a2b67dab71f881cfa24c59f4016c8976b73" -> "sha256:47919e82432cc67b4eb0d95ed0daeb593ceba29dbc62a10197801960db266f41" [label=""];
  "sha256:cbd7e6003e6ad3fa388e5bff8b32204e5f3f573ca855bd7964f5ef750fb70a76" -> "sha256:47919e82432cc67b4eb0d95ed0daeb593ceba29dbc62a10197801960db266f41" [label=""];
  "sha256:47919e82432cc67b4eb0d95ed0daeb593ceba29dbc62a10197801960db266f41" -> "sha256:cfa266aeac1830e6f646484abc3d63aa90f409c75ae630b178bd40b261651f2f" [label=""];
  "sha256:cfa266aeac1830e6f646484abc3d63aa90f409c75ae630b178bd40b261651f2f" -> "sha256:7d6d626ac29bed9510a1f01b34d50c932546ee33a2a32d69ab620f14ddbdbe0f" [label=""];
  "sha256:7d6d626ac29bed9510a1f01b34d50c932546ee33a2a32d69ab620f14ddbdbe0f" -> "sha256:455701800e5282e432b77d70956d521bf05937fab8b05238ccd09fb6f13eabf7" [label=""];
}

