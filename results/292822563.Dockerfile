[app/sources/292822563.Dockerfile]
digraph {
  "sha256:21eed31c335539ad111c66592f1f7c7e57fafc742322092b0143929ef605ce53" [label="docker-image://docker.io/nvidia/cuda:8.0-runtime-ubuntu16.04" shape="ellipse"];
  "sha256:f9abe8140fd6477687ae8f60dc80444b2da4d8c7cb9882386cd3391a06c7e1da" [label="/bin/sh -c apt-get update && apt-get install -y     curl     ca-certificates     sudo     git     bzip2     libx11-6  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:06ffed29196ae0153f544d6a772c290fc49846520d172467eb5c0076691d35e8" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:2d28eb5a439e7cc377817602b8d41216c131a5083497722f4743a5748ba0abff" [label="mkdir{path=/app}" shape="note"];
  "sha256:65c32200ab9c25883eb9fb7bcbb9625fdb3022c3f27dc12964092ba6fa3e2bf1" [label="/bin/sh -c adduser --disabled-password --gecos '' --shell /bin/bash user  && chown -R user:user /app" shape="box"];
  "sha256:0f246e8e69bd63e46cc3d1df21e96b8119d9e4cbd88e30e0a7a6e878bfab96c0" [label="/bin/sh -c echo \"user ALL=(ALL) NOPASSWD:ALL\" > /etc/sudoers.d/90-user" shape="box"];
  "sha256:19c9f6f0d4c1f2e7bd104dc41e36c096e8853a133532e6332b817e9ad229615f" [label="/bin/sh -c chmod 777 /home/user" shape="box"];
  "sha256:ff84029e8bb82fa284b84879f89eb56d6d518fabc997f35aadfa0236671581d3" [label="/bin/sh -c curl -so ~/miniconda.sh https://repo.continuum.io/miniconda/Miniconda3-4.5.11-Linux-x86_64.sh  && chmod +x ~/miniconda.sh  && ~/miniconda.sh -b -p ~/miniconda  && rm ~/miniconda.sh" shape="box"];
  "sha256:ec90845192754ff44d407b6d104851538f76c8375dba5d5161500f5c14b495ce" [label="/bin/sh -c /home/user/miniconda/bin/conda install conda-build  && /home/user/miniconda/bin/conda create -y --name py36 python=3.6.5  && /home/user/miniconda/bin/conda clean -ya" shape="box"];
  "sha256:62c5c0edc8092a62d2e3fffe69fbc12f5bcbde52dd8a8b3873f9a4ce222ee187" [label="/bin/sh -c conda install -y -c pytorch     cuda80=1.0     magma-cuda80=2.3.0     \"pytorch=1.0.0=py3.6_cuda8.0.61_cudnn7.1.2_1\"     torchvision=0.2.1  && conda clean -ya" shape="box"];
  "sha256:437413195d65bfeedc05c1f9dfa987a708e63bfa9bc8bdaa977e61513b1c6dc8" [label="/bin/sh -c conda install -y h5py=2.8.0  && conda clean -ya" shape="box"];
  "sha256:f01c961fe06d645466c63b13fc7d81a2c6f51dceea64757cbc1997871da90bbb" [label="/bin/sh -c pip install h5py-cache==1.0" shape="box"];
  "sha256:4b0be87cd2e1883bb8720941d05bbd6cd8b57347eb3bb59c428eb20365ea0afa" [label="/bin/sh -c pip install torchnet==0.0.4" shape="box"];
  "sha256:e979232e284b1c27e477d5995b8b28a689167ae336d9d0fe437ada649abd0a8a" [label="/bin/sh -c conda install -y requests=2.19.1  && conda clean -ya" shape="box"];
  "sha256:8d8870ab01a47810ed53244964c2e4a79b61fbb99f30a6f4263441a9765a38b5" [label="/bin/sh -c conda install -y graphviz=2.38.0  && conda clean -ya" shape="box"];
  "sha256:e0778e5ce63e6225d3f2aa8a33e0f5e704b2576fe7042c661c8ad11bf48a7dd8" [label="/bin/sh -c pip install graphviz==0.8.4" shape="box"];
  "sha256:a91d4daa982a37074889891a8f4232391b8bd370dc2a2c67d6a4c91636279d14" [label="/bin/sh -c sudo apt-get update && sudo apt-get install -y --no-install-recommends     libgtk2.0-0     libcanberra-gtk-module  && sudo rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ff2f7f2c90d98de5fc021c9ba5455709e67ff58bfb902ec89167fe8b94d7b445" [label="/bin/sh -c conda install -y -c menpo opencv3=3.1.0  && conda clean -ya" shape="box"];
  "sha256:9b100f870513251903ef8d8f2fc0f0a9d7d775571f86697667590758630bec85" [label="sha256:9b100f870513251903ef8d8f2fc0f0a9d7d775571f86697667590758630bec85" shape="plaintext"];
  "sha256:21eed31c335539ad111c66592f1f7c7e57fafc742322092b0143929ef605ce53" -> "sha256:f9abe8140fd6477687ae8f60dc80444b2da4d8c7cb9882386cd3391a06c7e1da" [label=""];
  "sha256:f9abe8140fd6477687ae8f60dc80444b2da4d8c7cb9882386cd3391a06c7e1da" -> "sha256:06ffed29196ae0153f544d6a772c290fc49846520d172467eb5c0076691d35e8" [label=""];
  "sha256:06ffed29196ae0153f544d6a772c290fc49846520d172467eb5c0076691d35e8" -> "sha256:2d28eb5a439e7cc377817602b8d41216c131a5083497722f4743a5748ba0abff" [label=""];
  "sha256:2d28eb5a439e7cc377817602b8d41216c131a5083497722f4743a5748ba0abff" -> "sha256:65c32200ab9c25883eb9fb7bcbb9625fdb3022c3f27dc12964092ba6fa3e2bf1" [label=""];
  "sha256:65c32200ab9c25883eb9fb7bcbb9625fdb3022c3f27dc12964092ba6fa3e2bf1" -> "sha256:0f246e8e69bd63e46cc3d1df21e96b8119d9e4cbd88e30e0a7a6e878bfab96c0" [label=""];
  "sha256:0f246e8e69bd63e46cc3d1df21e96b8119d9e4cbd88e30e0a7a6e878bfab96c0" -> "sha256:19c9f6f0d4c1f2e7bd104dc41e36c096e8853a133532e6332b817e9ad229615f" [label=""];
  "sha256:19c9f6f0d4c1f2e7bd104dc41e36c096e8853a133532e6332b817e9ad229615f" -> "sha256:ff84029e8bb82fa284b84879f89eb56d6d518fabc997f35aadfa0236671581d3" [label=""];
  "sha256:ff84029e8bb82fa284b84879f89eb56d6d518fabc997f35aadfa0236671581d3" -> "sha256:ec90845192754ff44d407b6d104851538f76c8375dba5d5161500f5c14b495ce" [label=""];
  "sha256:ec90845192754ff44d407b6d104851538f76c8375dba5d5161500f5c14b495ce" -> "sha256:62c5c0edc8092a62d2e3fffe69fbc12f5bcbde52dd8a8b3873f9a4ce222ee187" [label=""];
  "sha256:62c5c0edc8092a62d2e3fffe69fbc12f5bcbde52dd8a8b3873f9a4ce222ee187" -> "sha256:437413195d65bfeedc05c1f9dfa987a708e63bfa9bc8bdaa977e61513b1c6dc8" [label=""];
  "sha256:437413195d65bfeedc05c1f9dfa987a708e63bfa9bc8bdaa977e61513b1c6dc8" -> "sha256:f01c961fe06d645466c63b13fc7d81a2c6f51dceea64757cbc1997871da90bbb" [label=""];
  "sha256:f01c961fe06d645466c63b13fc7d81a2c6f51dceea64757cbc1997871da90bbb" -> "sha256:4b0be87cd2e1883bb8720941d05bbd6cd8b57347eb3bb59c428eb20365ea0afa" [label=""];
  "sha256:4b0be87cd2e1883bb8720941d05bbd6cd8b57347eb3bb59c428eb20365ea0afa" -> "sha256:e979232e284b1c27e477d5995b8b28a689167ae336d9d0fe437ada649abd0a8a" [label=""];
  "sha256:e979232e284b1c27e477d5995b8b28a689167ae336d9d0fe437ada649abd0a8a" -> "sha256:8d8870ab01a47810ed53244964c2e4a79b61fbb99f30a6f4263441a9765a38b5" [label=""];
  "sha256:8d8870ab01a47810ed53244964c2e4a79b61fbb99f30a6f4263441a9765a38b5" -> "sha256:e0778e5ce63e6225d3f2aa8a33e0f5e704b2576fe7042c661c8ad11bf48a7dd8" [label=""];
  "sha256:e0778e5ce63e6225d3f2aa8a33e0f5e704b2576fe7042c661c8ad11bf48a7dd8" -> "sha256:a91d4daa982a37074889891a8f4232391b8bd370dc2a2c67d6a4c91636279d14" [label=""];
  "sha256:a91d4daa982a37074889891a8f4232391b8bd370dc2a2c67d6a4c91636279d14" -> "sha256:ff2f7f2c90d98de5fc021c9ba5455709e67ff58bfb902ec89167fe8b94d7b445" [label=""];
  "sha256:ff2f7f2c90d98de5fc021c9ba5455709e67ff58bfb902ec89167fe8b94d7b445" -> "sha256:9b100f870513251903ef8d8f2fc0f0a9d7d775571f86697667590758630bec85" [label=""];
}

