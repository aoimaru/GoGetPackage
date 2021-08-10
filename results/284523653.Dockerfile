[app/sources/284523653.Dockerfile]
digraph {
  "sha256:6f8532b90ab344aecf1346fb7621e511dd07e7c511787250786d7814016a5241" [label="docker-image://docker.io/library/centos:7.4.1708" shape="ellipse"];
  "sha256:774746650b9a1eab05b0e9507f9693a2ab3d79d7e2fb1592e0726fa847eff65b" [label="/bin/sh -c yum install pango.x86_64 libXcomposite.x86_64 libXcursor.x86_64     libXdamage.x86_64 libXext.x86_64 libXi.x86_64 libXtst.x86_64     cups-libs.x86_64 libXScrnSaver.x86_64 libXrandr.x86_64 GConf2.x86_64     alsa-lib.x86_64 atk.x86_64 gtk3.x86_64 -y" shape="box"];
  "sha256:9f65fa236a20bf2fdc678cc8dea547137561a44fb6506a883cd5a78d5e43bc1e" [label="/bin/sh -c yum install ipa-gothic-fonts xorg-x11-fonts-100dpi     xorg-x11-fonts-75dpi xorg-x11-utils xorg-x11-fonts-cyrillic     xorg-x11-fonts-Type1 xorg-x11-fonts-misc -y" shape="box"];
  "sha256:9270da5fa376879dfbff4b60d792962b56e54ff5083dfca4179d2c795b959459" [label="/bin/sh -c yum install wget -y" shape="box"];
  "sha256:7943b5819ca09b11a258c0540296708ce413a7428f6646ad693d7f379452d3a1" [label="/bin/sh -c rm -rf /var/cache/yum" shape="box"];
  "sha256:5484801024d085f312eb9a8d9a67c43815c4c35b34003d37a56223c0beee65d3" [label="/bin/sh -c adduser work" shape="box"];
  "sha256:9d95ae4cd914e3351d3cdd124914759dfd49d21a6856d6560c4eb46eb5ddafc2" [label="/bin/sh -c wget https://nodejs.org/dist/v8.10.0/node-v8.10.0-linux-x64.tar.xz     -O /home/work/node-v8.10.0-linux-x64.tar.xz" shape="box"];
  "sha256:f752efab19bd32e587c9339b6a5484eec8063263bdcaf004de2d6baec8361229" [label="/bin/sh -c xz -d /home/work/node-v8.10.0-linux-x64.tar.xz" shape="box"];
  "sha256:494bc2ab5b1de8c7e3910b47a29be38282e8c573b042182b0615a829ed81c810" [label="/bin/sh -c tar -xvf /home/work/node-v8.10.0-linux-x64.tar -C /home/work/" shape="box"];
  "sha256:1955069e07a8251a5bba9047f766ea5eff66a4170b74a89870702b814d728d19" [label="/bin/sh -c ln -s /home/work/node-v8.10.0-linux-x64/bin/node /usr/local/bin/node" shape="box"];
  "sha256:70f25980fd2d40e717d2a6bfae46621a665a4214b5ac579b22f0ebc945893d49" [label="/bin/sh -c ln -s /home/work/node-v8.10.0-linux-x64/bin/npm /usr/local/bin/npm" shape="box"];
  "sha256:b844972e86df2714e1f610b6ca0b2489458a04a161c4969e585452c3ca8e64f2" [label="/bin/sh -c rm /home/work/node-v8.10.0-linux-x64.tar" shape="box"];
  "sha256:03ace8a47fe1e0c1a076b8be6ff7ecd3d34a579acfe6fea7a8eac29209400e49" [label="/bin/sh -c mkdir /home/work/webster_runtime" shape="box"];
  "sha256:a5368d386af32d89ce4b066136b89348b076d008e4e09afbd7a983871e4eab36" [label="mkdir{path=/home/work/webster_runtime}" shape="note"];
  "sha256:b06ef5a6b92694006d4504cec63083ca0b2d233ff5d1aa0b112c08f6453a90cd" [label="/bin/sh -c npm init -y" shape="box"];
  "sha256:82854d77b2a5d049ee76880175c0fa9748dab002994cf4e7e1d597cf55a4ebb1" [label="/bin/sh -c npm i --save webster@latest" shape="box"];
  "sha256:31bea8caf171d6b563600db138bc66154e230fdb0cfd665669cdaf2bb6e72200" [label="sha256:31bea8caf171d6b563600db138bc66154e230fdb0cfd665669cdaf2bb6e72200" shape="plaintext"];
  "sha256:6f8532b90ab344aecf1346fb7621e511dd07e7c511787250786d7814016a5241" -> "sha256:774746650b9a1eab05b0e9507f9693a2ab3d79d7e2fb1592e0726fa847eff65b" [label=""];
  "sha256:774746650b9a1eab05b0e9507f9693a2ab3d79d7e2fb1592e0726fa847eff65b" -> "sha256:9f65fa236a20bf2fdc678cc8dea547137561a44fb6506a883cd5a78d5e43bc1e" [label=""];
  "sha256:9f65fa236a20bf2fdc678cc8dea547137561a44fb6506a883cd5a78d5e43bc1e" -> "sha256:9270da5fa376879dfbff4b60d792962b56e54ff5083dfca4179d2c795b959459" [label=""];
  "sha256:9270da5fa376879dfbff4b60d792962b56e54ff5083dfca4179d2c795b959459" -> "sha256:7943b5819ca09b11a258c0540296708ce413a7428f6646ad693d7f379452d3a1" [label=""];
  "sha256:7943b5819ca09b11a258c0540296708ce413a7428f6646ad693d7f379452d3a1" -> "sha256:5484801024d085f312eb9a8d9a67c43815c4c35b34003d37a56223c0beee65d3" [label=""];
  "sha256:5484801024d085f312eb9a8d9a67c43815c4c35b34003d37a56223c0beee65d3" -> "sha256:9d95ae4cd914e3351d3cdd124914759dfd49d21a6856d6560c4eb46eb5ddafc2" [label=""];
  "sha256:9d95ae4cd914e3351d3cdd124914759dfd49d21a6856d6560c4eb46eb5ddafc2" -> "sha256:f752efab19bd32e587c9339b6a5484eec8063263bdcaf004de2d6baec8361229" [label=""];
  "sha256:f752efab19bd32e587c9339b6a5484eec8063263bdcaf004de2d6baec8361229" -> "sha256:494bc2ab5b1de8c7e3910b47a29be38282e8c573b042182b0615a829ed81c810" [label=""];
  "sha256:494bc2ab5b1de8c7e3910b47a29be38282e8c573b042182b0615a829ed81c810" -> "sha256:1955069e07a8251a5bba9047f766ea5eff66a4170b74a89870702b814d728d19" [label=""];
  "sha256:1955069e07a8251a5bba9047f766ea5eff66a4170b74a89870702b814d728d19" -> "sha256:70f25980fd2d40e717d2a6bfae46621a665a4214b5ac579b22f0ebc945893d49" [label=""];
  "sha256:70f25980fd2d40e717d2a6bfae46621a665a4214b5ac579b22f0ebc945893d49" -> "sha256:b844972e86df2714e1f610b6ca0b2489458a04a161c4969e585452c3ca8e64f2" [label=""];
  "sha256:b844972e86df2714e1f610b6ca0b2489458a04a161c4969e585452c3ca8e64f2" -> "sha256:03ace8a47fe1e0c1a076b8be6ff7ecd3d34a579acfe6fea7a8eac29209400e49" [label=""];
  "sha256:03ace8a47fe1e0c1a076b8be6ff7ecd3d34a579acfe6fea7a8eac29209400e49" -> "sha256:a5368d386af32d89ce4b066136b89348b076d008e4e09afbd7a983871e4eab36" [label=""];
  "sha256:a5368d386af32d89ce4b066136b89348b076d008e4e09afbd7a983871e4eab36" -> "sha256:b06ef5a6b92694006d4504cec63083ca0b2d233ff5d1aa0b112c08f6453a90cd" [label=""];
  "sha256:b06ef5a6b92694006d4504cec63083ca0b2d233ff5d1aa0b112c08f6453a90cd" -> "sha256:82854d77b2a5d049ee76880175c0fa9748dab002994cf4e7e1d597cf55a4ebb1" [label=""];
  "sha256:82854d77b2a5d049ee76880175c0fa9748dab002994cf4e7e1d597cf55a4ebb1" -> "sha256:31bea8caf171d6b563600db138bc66154e230fdb0cfd665669cdaf2bb6e72200" [label=""];
}

