[app/sources/288804941.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:ca417f0b4537f2a6fc475258c044868da5c4be0afb670109f70c53f24692d939" [label="/bin/sh -c sed -i -e \"${repo_sed}\" /etc/apt/sources.list     && apt-get update     && apt-get install -y --no-install-recommends openjdk-6-jre     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:8ce8503380bfa06e903b777a0fa73a2886866efe14ceb4eb216d6f3481b914ce" [label="/bin/sh -c sed -i -e \"${repo_sed}\" /etc/apt/sources.list     && dpkg --add-architecture i386     && apt-get update     && apt-get install -y --no-install-recommends     libxtst6:i386 libxext6:i386 libxi6:i386 ksh csh     && apt-get install -y --no-install-recommends xorg     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:73a392778b3334b9cad0f8cf43bb05a69b6181d3bdf60fba6276ff05ff0eceb4" [label="local://context" shape="ellipse"];
  "sha256:6d9f242d68e740a7dc692728c3d199833acff6de90be6bf80a747ea079fcfc3c" [label="copy{src=/package/InstallScape, dest=/tmp/installer/}" shape="note"];
  "sha256:4e07c3903ad7a309ec88818ad7e1e1468fc379ff86064bad054161effcc4630e" [label="copy{src=/package/INCISIVE15, dest=/tmp/package/}" shape="note"];
  "sha256:0e8753ea9b4ad4d6c7bc13bcbe69d0385a2621f3579c6b7c7032f76a1c51da17" [label="/bin/sh -c mkdir -p ${base_dir}/     && /tmp/installer/iscape/bin/iscape.sh -batch majorAction=InstallFromArchive          archiveDirectory=/tmp/package/ installDirectory=${base_dir}/${tool}${version}     && rm -rf /tmp/package/     && rm -rf /tmp/installer/" shape="box"];
  "sha256:bfe2659ca9f867058fe42c025563ac02a86fb736c599d06b7bc42ef9dd7ebff0" [label="copy{src=/usr/cadence, dest=/usr/cadence/}" shape="note"];
  "sha256:b89afefc0aa19cac1443c465725b51d7afda0c76fce7d9e2db54c3798a80441b" [label="sha256:b89afefc0aa19cac1443c465725b51d7afda0c76fce7d9e2db54c3798a80441b" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:ca417f0b4537f2a6fc475258c044868da5c4be0afb670109f70c53f24692d939" [label=""];
  "sha256:ca417f0b4537f2a6fc475258c044868da5c4be0afb670109f70c53f24692d939" -> "sha256:8ce8503380bfa06e903b777a0fa73a2886866efe14ceb4eb216d6f3481b914ce" [label=""];
  "sha256:ca417f0b4537f2a6fc475258c044868da5c4be0afb670109f70c53f24692d939" -> "sha256:6d9f242d68e740a7dc692728c3d199833acff6de90be6bf80a747ea079fcfc3c" [label=""];
  "sha256:73a392778b3334b9cad0f8cf43bb05a69b6181d3bdf60fba6276ff05ff0eceb4" -> "sha256:6d9f242d68e740a7dc692728c3d199833acff6de90be6bf80a747ea079fcfc3c" [label=""];
  "sha256:6d9f242d68e740a7dc692728c3d199833acff6de90be6bf80a747ea079fcfc3c" -> "sha256:4e07c3903ad7a309ec88818ad7e1e1468fc379ff86064bad054161effcc4630e" [label=""];
  "sha256:73a392778b3334b9cad0f8cf43bb05a69b6181d3bdf60fba6276ff05ff0eceb4" -> "sha256:4e07c3903ad7a309ec88818ad7e1e1468fc379ff86064bad054161effcc4630e" [label=""];
  "sha256:4e07c3903ad7a309ec88818ad7e1e1468fc379ff86064bad054161effcc4630e" -> "sha256:0e8753ea9b4ad4d6c7bc13bcbe69d0385a2621f3579c6b7c7032f76a1c51da17" [label=""];
  "sha256:8ce8503380bfa06e903b777a0fa73a2886866efe14ceb4eb216d6f3481b914ce" -> "sha256:bfe2659ca9f867058fe42c025563ac02a86fb736c599d06b7bc42ef9dd7ebff0" [label=""];
  "sha256:0e8753ea9b4ad4d6c7bc13bcbe69d0385a2621f3579c6b7c7032f76a1c51da17" -> "sha256:bfe2659ca9f867058fe42c025563ac02a86fb736c599d06b7bc42ef9dd7ebff0" [label=""];
  "sha256:bfe2659ca9f867058fe42c025563ac02a86fb736c599d06b7bc42ef9dd7ebff0" -> "sha256:b89afefc0aa19cac1443c465725b51d7afda0c76fce7d9e2db54c3798a80441b" [label=""];
}

