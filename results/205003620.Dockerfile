[app/sources/205003620.Dockerfile]
digraph {
  "sha256:2c13a60162907574852963997ba23911204e046f863480dcbd1d303615eb4394" [label="docker-image://docker.io/library/centos:6" shape="ellipse"];
  "sha256:a3ceb3e8492d1b72f99801386afb8a3b9ee8050f0043862c956a23b982877314" [label="/bin/sh -c yum -y install redhat-lsb-core" shape="box"];
  "sha256:ee0de6d7baeb8e2ef159b4be3dfc330f436e9ead6fbf4ce13185887458e90f96" [label="/bin/sh -c yum -y update; yum clean all;" shape="box"];
  "sha256:14143bb8d89bf6756514c6b176dfc3af3a2b7df05b4a6e27f264cdb24113e5dc" [label="/bin/sh -c yum -y install epel-release" shape="box"];
  "sha256:a83e3cb849b053f9c5bcaad95a8b7971f1a61fc7e94cb7c6fef65111812448a8" [label="/bin/sh -c yum -y install git ansible sudo" shape="box"];
  "sha256:467493e5a7c8f247d4695ab33b2c12d2b598f067fffe99bc696254b02f489695" [label="/bin/sh -c yum clean all" shape="box"];
  "sha256:1154211e261d60e0ffe91028026c673a3d273f74e4015e296d4e76ecc21727a1" [label="/bin/sh -c sed -i -e 's/^\\(Defaults\\s*requiretty\\)/#--- \\1/'  /etc/sudoers" shape="box"];
  "sha256:598fc199d9e61f2ee669c3642d51e51b45e90aea57c36237bb5c8414abb46dd9" [label="/bin/sh -c echo -e '[local]\\nlocalhost ansible_connection=local' > /etc/ansible/hosts" shape="box"];
  "sha256:60efb25a6a535235df0946adcd5359c60cae78e1c327aefb6c32e9f14a95e3ff" [label="sha256:60efb25a6a535235df0946adcd5359c60cae78e1c327aefb6c32e9f14a95e3ff" shape="plaintext"];
  "sha256:2c13a60162907574852963997ba23911204e046f863480dcbd1d303615eb4394" -> "sha256:a3ceb3e8492d1b72f99801386afb8a3b9ee8050f0043862c956a23b982877314" [label=""];
  "sha256:a3ceb3e8492d1b72f99801386afb8a3b9ee8050f0043862c956a23b982877314" -> "sha256:ee0de6d7baeb8e2ef159b4be3dfc330f436e9ead6fbf4ce13185887458e90f96" [label=""];
  "sha256:ee0de6d7baeb8e2ef159b4be3dfc330f436e9ead6fbf4ce13185887458e90f96" -> "sha256:14143bb8d89bf6756514c6b176dfc3af3a2b7df05b4a6e27f264cdb24113e5dc" [label=""];
  "sha256:14143bb8d89bf6756514c6b176dfc3af3a2b7df05b4a6e27f264cdb24113e5dc" -> "sha256:a83e3cb849b053f9c5bcaad95a8b7971f1a61fc7e94cb7c6fef65111812448a8" [label=""];
  "sha256:a83e3cb849b053f9c5bcaad95a8b7971f1a61fc7e94cb7c6fef65111812448a8" -> "sha256:467493e5a7c8f247d4695ab33b2c12d2b598f067fffe99bc696254b02f489695" [label=""];
  "sha256:467493e5a7c8f247d4695ab33b2c12d2b598f067fffe99bc696254b02f489695" -> "sha256:1154211e261d60e0ffe91028026c673a3d273f74e4015e296d4e76ecc21727a1" [label=""];
  "sha256:1154211e261d60e0ffe91028026c673a3d273f74e4015e296d4e76ecc21727a1" -> "sha256:598fc199d9e61f2ee669c3642d51e51b45e90aea57c36237bb5c8414abb46dd9" [label=""];
  "sha256:598fc199d9e61f2ee669c3642d51e51b45e90aea57c36237bb5c8414abb46dd9" -> "sha256:60efb25a6a535235df0946adcd5359c60cae78e1c327aefb6c32e9f14a95e3ff" [label=""];
}

