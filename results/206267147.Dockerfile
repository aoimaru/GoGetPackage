[app/sources/206267147.Dockerfile]
digraph {
  "sha256:236ae56fc83254f4f61704bf1c3c0daed434f7cfcf9fe076ff5b5075c2839fef" [label="docker-image://docker.io/library/ubuntu:14.04.3" shape="ellipse"];
  "sha256:18b85e5db07e9599c8ee61083a30c29716ba2ba36f718aa84f315db4bbc6f02d" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:8d0d4663d1e15b71a63ce8f3cacf8d223701e396bdbe875f8eaa93306987688c" [label="/bin/sh -c apt-get -y install git g++ make libncurses5-dev subversion libssl-dev gawk libxml-parser-perl unzip wget python xz-utils" shape="box"];
  "sha256:2c70ffed9995ce76d3adc91385026015ea5b19f244c0d0ddecc6f3de3493c376" [label="/bin/sh -c cd /root && git clone git://git.openwrt.org/15.05/openwrt.git" shape="box"];
  "sha256:d2d7fe9b882e230cd9c9f8bd78bca2e1572d9eb727ebb57350607102ea0e01f7" [label="mkdir{path=/root/openwrt}" shape="note"];
  "sha256:baefbacdf18ac5f39829bc81638b498219025a40c89fd76c278fc3e42965d036" [label="/bin/sh -c cp feeds.conf.default feeds.conf" shape="box"];
  "sha256:a59fbc29678e28aeece6a2b11ea531cbed93ed34b5a6ec8a659bab6703075f59" [label="/bin/sh -c echo src-git linkit https://github.com/MediaTek-Labs/linkit-smart-7688-feed.git >> feeds.conf" shape="box"];
  "sha256:e2fb6aba619d44c5afb73e4af6c82f55a77e16713739b3c63b68274fdc7a65b0" [label="/bin/sh -c ./scripts/feeds update" shape="box"];
  "sha256:66b7b4435926d65758fd28ff27e21a86ba798b4a69558c9d0c2a16f4c8ff39ee" [label="/bin/sh -c ./scripts/feeds install -a" shape="box"];
  "sha256:88ede1fb56d81c9b5e0eaba518b9374077dd3326e399d35e9d61572ec160c1f8" [label="sha256:88ede1fb56d81c9b5e0eaba518b9374077dd3326e399d35e9d61572ec160c1f8" shape="plaintext"];
  "sha256:236ae56fc83254f4f61704bf1c3c0daed434f7cfcf9fe076ff5b5075c2839fef" -> "sha256:18b85e5db07e9599c8ee61083a30c29716ba2ba36f718aa84f315db4bbc6f02d" [label=""];
  "sha256:18b85e5db07e9599c8ee61083a30c29716ba2ba36f718aa84f315db4bbc6f02d" -> "sha256:8d0d4663d1e15b71a63ce8f3cacf8d223701e396bdbe875f8eaa93306987688c" [label=""];
  "sha256:8d0d4663d1e15b71a63ce8f3cacf8d223701e396bdbe875f8eaa93306987688c" -> "sha256:2c70ffed9995ce76d3adc91385026015ea5b19f244c0d0ddecc6f3de3493c376" [label=""];
  "sha256:2c70ffed9995ce76d3adc91385026015ea5b19f244c0d0ddecc6f3de3493c376" -> "sha256:d2d7fe9b882e230cd9c9f8bd78bca2e1572d9eb727ebb57350607102ea0e01f7" [label=""];
  "sha256:d2d7fe9b882e230cd9c9f8bd78bca2e1572d9eb727ebb57350607102ea0e01f7" -> "sha256:baefbacdf18ac5f39829bc81638b498219025a40c89fd76c278fc3e42965d036" [label=""];
  "sha256:baefbacdf18ac5f39829bc81638b498219025a40c89fd76c278fc3e42965d036" -> "sha256:a59fbc29678e28aeece6a2b11ea531cbed93ed34b5a6ec8a659bab6703075f59" [label=""];
  "sha256:a59fbc29678e28aeece6a2b11ea531cbed93ed34b5a6ec8a659bab6703075f59" -> "sha256:e2fb6aba619d44c5afb73e4af6c82f55a77e16713739b3c63b68274fdc7a65b0" [label=""];
  "sha256:e2fb6aba619d44c5afb73e4af6c82f55a77e16713739b3c63b68274fdc7a65b0" -> "sha256:66b7b4435926d65758fd28ff27e21a86ba798b4a69558c9d0c2a16f4c8ff39ee" [label=""];
  "sha256:66b7b4435926d65758fd28ff27e21a86ba798b4a69558c9d0c2a16f4c8ff39ee" -> "sha256:88ede1fb56d81c9b5e0eaba518b9374077dd3326e399d35e9d61572ec160c1f8" [label=""];
}

