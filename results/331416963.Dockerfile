[app/sources/331416963.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:c60add6dbd467b4858558c82fa4bc5f40a3bc75a1fb0487b3873cbaf5e9d1212" [label="/bin/sh -c locale-gen en_US.UTF-8" shape="box"];
  "sha256:d11a1af856a94ec14789bd2a0bfd71e2f79689929015ea8a7bef8613f0f35b97" [label="/bin/sh -c dpkg-reconfigure locales" shape="box"];
  "sha256:e563afdcd2e5f14cffd225327ba8d26f58998bafaa2bea19e645ed317ba6ad45" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:eac692e7ddd182619709bed2529ad3215e227a84922a9f3311ffcbe7a5cd6bf5" [label="/bin/sh -c apt-get -y upgrade; apt-get clean" shape="box"];
  "sha256:a8749745cc184a6a8feec3be70fdfc72c5b2ab50e57753336692381ad96a2130" [label="/bin/sh -c apt-get install -y build-essential zlib1g-dev libssl-dev libxml2-dev libsqlite3-dev libxslt1-dev libpq-dev libmysqlclient-dev" shape="box"];
  "sha256:1f7ba1af523202a609adc2d728077201d2f6076bb61a5c4fce4072835a515795" [label="/bin/sh -c apt-get install -y git curl wget tar" shape="box"];
  "sha256:f50e9ed4981c3f6be6ec1e54ce089d079c32d016823b605909c6f56d0e0fb680" [label="/bin/sh -c apt-get clean" shape="box"];
  "sha256:939ee267c8fdfe4a8fd0b1afbcda95b04af1cc7b3563d33c3787747bd69ef498" [label="local://context" shape="ellipse"];
  "sha256:a809cd79caddef4bf18a3e72bb2ceec3df5e4e1901a7f55f0ba136d6804ef6d2" [label="copy{src=/install-go.sh, dest=/tmp/install-go.sh}" shape="note"];
  "sha256:9b723adf0f7b18cbbd94690a6130b766c3f9d23d650b50862fe47912ef89b675" [label="/bin/sh -c chmod a+x /tmp/install-go.sh" shape="box"];
  "sha256:2cc452bf6820d8f3ccb4bcbf877b445fb3b4d927229892fb94e4ee858c755f14" [label="/bin/sh -c cd tmp; ./install-go.sh; rm install-go.sh" shape="box"];
  "sha256:087fa75881839ee086c59e4f5b1605e07c8dcfe35d9d9660129dd15d47678d9f" [label="/bin/sh -c apt-get install -y lsof psmisc strace" shape="box"];
  "sha256:f016d3d1024539d1ffe2df02bd77ab79f86b3c5f88b7fb75d7b8435fcdde696d" [label="sha256:f016d3d1024539d1ffe2df02bd77ab79f86b3c5f88b7fb75d7b8435fcdde696d" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:c60add6dbd467b4858558c82fa4bc5f40a3bc75a1fb0487b3873cbaf5e9d1212" [label=""];
  "sha256:c60add6dbd467b4858558c82fa4bc5f40a3bc75a1fb0487b3873cbaf5e9d1212" -> "sha256:d11a1af856a94ec14789bd2a0bfd71e2f79689929015ea8a7bef8613f0f35b97" [label=""];
  "sha256:d11a1af856a94ec14789bd2a0bfd71e2f79689929015ea8a7bef8613f0f35b97" -> "sha256:e563afdcd2e5f14cffd225327ba8d26f58998bafaa2bea19e645ed317ba6ad45" [label=""];
  "sha256:e563afdcd2e5f14cffd225327ba8d26f58998bafaa2bea19e645ed317ba6ad45" -> "sha256:eac692e7ddd182619709bed2529ad3215e227a84922a9f3311ffcbe7a5cd6bf5" [label=""];
  "sha256:eac692e7ddd182619709bed2529ad3215e227a84922a9f3311ffcbe7a5cd6bf5" -> "sha256:a8749745cc184a6a8feec3be70fdfc72c5b2ab50e57753336692381ad96a2130" [label=""];
  "sha256:a8749745cc184a6a8feec3be70fdfc72c5b2ab50e57753336692381ad96a2130" -> "sha256:1f7ba1af523202a609adc2d728077201d2f6076bb61a5c4fce4072835a515795" [label=""];
  "sha256:1f7ba1af523202a609adc2d728077201d2f6076bb61a5c4fce4072835a515795" -> "sha256:f50e9ed4981c3f6be6ec1e54ce089d079c32d016823b605909c6f56d0e0fb680" [label=""];
  "sha256:f50e9ed4981c3f6be6ec1e54ce089d079c32d016823b605909c6f56d0e0fb680" -> "sha256:a809cd79caddef4bf18a3e72bb2ceec3df5e4e1901a7f55f0ba136d6804ef6d2" [label=""];
  "sha256:939ee267c8fdfe4a8fd0b1afbcda95b04af1cc7b3563d33c3787747bd69ef498" -> "sha256:a809cd79caddef4bf18a3e72bb2ceec3df5e4e1901a7f55f0ba136d6804ef6d2" [label=""];
  "sha256:a809cd79caddef4bf18a3e72bb2ceec3df5e4e1901a7f55f0ba136d6804ef6d2" -> "sha256:9b723adf0f7b18cbbd94690a6130b766c3f9d23d650b50862fe47912ef89b675" [label=""];
  "sha256:9b723adf0f7b18cbbd94690a6130b766c3f9d23d650b50862fe47912ef89b675" -> "sha256:2cc452bf6820d8f3ccb4bcbf877b445fb3b4d927229892fb94e4ee858c755f14" [label=""];
  "sha256:2cc452bf6820d8f3ccb4bcbf877b445fb3b4d927229892fb94e4ee858c755f14" -> "sha256:087fa75881839ee086c59e4f5b1605e07c8dcfe35d9d9660129dd15d47678d9f" [label=""];
  "sha256:087fa75881839ee086c59e4f5b1605e07c8dcfe35d9d9660129dd15d47678d9f" -> "sha256:f016d3d1024539d1ffe2df02bd77ab79f86b3c5f88b7fb75d7b8435fcdde696d" [label=""];
}

