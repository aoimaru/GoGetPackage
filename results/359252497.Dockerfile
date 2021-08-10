[app/sources/359252497.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:eb078a9b3325444d676f9fa7c7e19510bb019a36719ae6041fce7f9c78f580c3" [label="/bin/sh -c apt-get update &&     apt-get -qqy install         curl         unzip         gettext         sudo &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:00fe319946c0a1274a6e9237829d7ca4cd6d5388f2e7c5fd00135fc11cc9bea4" [label="/bin/sh -c apt-get update &&     apt-get -qqy install         libunwind8         libkrb5-3         libicu52         liblttng-ust0         libssl1.0.0         zlib1g         libuuid1 &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e8a04c7a0cffe9ecd292a254650f115ef3e137020938a35b321dfdb958aa17d5" [label="/bin/sh -c apt-get update &&     apt-get -qqy install         debhelper         build-essential         devscripts         git         cmake         clang-3.5         lldb-3.6 &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:25263ebaeaf6fc5200543004f54868988417ade224d7cb5da68f07abecc08475" [label="/bin/sh -c update-alternatives --install /usr/bin/c++ c++ /usr/bin/clang++-3.5 100" shape="box"];
  "sha256:faa0d902a4dfac85caeb58cd92d5f9b40a660dc7fe016963d3148f9b0c87eaec" [label="/bin/sh -c update-alternatives --set c++ /usr/bin/clang++-3.5" shape="box"];
  "sha256:dbfc81e032b3b28f7660fa793b7d60915dd76eda0cf601adc2d50b8ed5e23700" [label="/bin/sh -c useradd -m code_executor -u ${USER_ID} -g sudo" shape="box"];
  "sha256:94aad56c8c1b750da42a8feaa5891ad800a858af05e98c944d1a1ecffb4f1a60" [label="/bin/sh -c echo 'code_executor ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers" shape="box"];
  "sha256:840aa97a7eda3274e37bc2a0c44851cc56cbed4234386f4cdd6f652303ee08d8" [label="/bin/sh -c chmod -R a+rwx /usr/local" shape="box"];
  "sha256:edc58385f5548e84ee7148e36eb20309c470d29dbd29c057bbc800d5994264bb" [label="/bin/sh -c chmod -R a+rwx /home" shape="box"];
  "sha256:30baf10ce429c0f8a9cf58c776c60e3cbfbbfae2d6802f39f4a8f555af63a3ed" [label="/bin/sh -c chmod -R 755 /usr/lib/sudo" shape="box"];
  "sha256:e8fc29f4decf1b75b928c3d8cca2fd0b763266c78de16455e88633af941cdd1d" [label="mkdir{path=/opt/code}" shape="note"];
  "sha256:1468c5a995b8961920f447be273685e0939887145fc8d7f3436b9461072cee6a" [label="sha256:1468c5a995b8961920f447be273685e0939887145fc8d7f3436b9461072cee6a" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:eb078a9b3325444d676f9fa7c7e19510bb019a36719ae6041fce7f9c78f580c3" [label=""];
  "sha256:eb078a9b3325444d676f9fa7c7e19510bb019a36719ae6041fce7f9c78f580c3" -> "sha256:00fe319946c0a1274a6e9237829d7ca4cd6d5388f2e7c5fd00135fc11cc9bea4" [label=""];
  "sha256:00fe319946c0a1274a6e9237829d7ca4cd6d5388f2e7c5fd00135fc11cc9bea4" -> "sha256:e8a04c7a0cffe9ecd292a254650f115ef3e137020938a35b321dfdb958aa17d5" [label=""];
  "sha256:e8a04c7a0cffe9ecd292a254650f115ef3e137020938a35b321dfdb958aa17d5" -> "sha256:25263ebaeaf6fc5200543004f54868988417ade224d7cb5da68f07abecc08475" [label=""];
  "sha256:25263ebaeaf6fc5200543004f54868988417ade224d7cb5da68f07abecc08475" -> "sha256:faa0d902a4dfac85caeb58cd92d5f9b40a660dc7fe016963d3148f9b0c87eaec" [label=""];
  "sha256:faa0d902a4dfac85caeb58cd92d5f9b40a660dc7fe016963d3148f9b0c87eaec" -> "sha256:dbfc81e032b3b28f7660fa793b7d60915dd76eda0cf601adc2d50b8ed5e23700" [label=""];
  "sha256:dbfc81e032b3b28f7660fa793b7d60915dd76eda0cf601adc2d50b8ed5e23700" -> "sha256:94aad56c8c1b750da42a8feaa5891ad800a858af05e98c944d1a1ecffb4f1a60" [label=""];
  "sha256:94aad56c8c1b750da42a8feaa5891ad800a858af05e98c944d1a1ecffb4f1a60" -> "sha256:840aa97a7eda3274e37bc2a0c44851cc56cbed4234386f4cdd6f652303ee08d8" [label=""];
  "sha256:840aa97a7eda3274e37bc2a0c44851cc56cbed4234386f4cdd6f652303ee08d8" -> "sha256:edc58385f5548e84ee7148e36eb20309c470d29dbd29c057bbc800d5994264bb" [label=""];
  "sha256:edc58385f5548e84ee7148e36eb20309c470d29dbd29c057bbc800d5994264bb" -> "sha256:30baf10ce429c0f8a9cf58c776c60e3cbfbbfae2d6802f39f4a8f555af63a3ed" [label=""];
  "sha256:30baf10ce429c0f8a9cf58c776c60e3cbfbbfae2d6802f39f4a8f555af63a3ed" -> "sha256:e8fc29f4decf1b75b928c3d8cca2fd0b763266c78de16455e88633af941cdd1d" [label=""];
  "sha256:e8fc29f4decf1b75b928c3d8cca2fd0b763266c78de16455e88633af941cdd1d" -> "sha256:1468c5a995b8961920f447be273685e0939887145fc8d7f3436b9461072cee6a" [label=""];
}

