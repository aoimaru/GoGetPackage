[app/sources/461060208.Dockerfile]
digraph {
  "sha256:f2bc79a8841d9b054152764da0422f83ee87aeea835c357f2cd9c965319760f2" [label="docker-image://docker.io/nvidia/cuda:8.0-cudnn5-devel" shape="ellipse"];
  "sha256:7d0add5683a482473b73ca26f09f8a77d8e81dd1a0d3bd07591e791f126a3f69" [label="/bin/sh -c apt-get update  && apt-get install -y --no-install-recommends         python3-pip         git         unzip         wget         python3  && apt-get clean  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:380e47d3ef840146774135840c3fdc6cb7971e7a1b92da6113405991f87a3d1e" [label="/bin/sh -c mkdir /tmp/model" shape="box"];
  "sha256:7676535386f454c1c825b070d4341b592dd3ffbdc229808ca2d3c054866f1429" [label="local://context" shape="ellipse"];
  "sha256:051bd6b00c15ea46af07b67d22e574451be46f77a0580c5fb5f1f34cd0c7fb3d" [label="copy{src=/prepare_data.sh, dest=/tmp/prepare_data.sh}" shape="note"];
  "sha256:9ede29831b0c514877b4991a4a2e61c684cf62a154695d069de539f607988e7d" [label="/bin/sh -c chmod 0755 /tmp/prepare_data.sh  && /tmp/prepare_data.sh" shape="box"];
  "sha256:b0240d40e9f172b82c4130138592c58f09b660c7fdb21620c1183ea70375a394" [label="copy{src=/requirements_gpu.txt, dest=/tmp/requirements_gpu.txt}" shape="note"];
  "sha256:9a2eda2dab9f4e2967c7205feb19a3f86b1a3e245ddd07f0cc2b9b552e583fe2" [label="/bin/sh -c pip3 install --upgrade pip  && pip3 install -U setuptools  && pip3 --no-cache-dir install -r /tmp/requirements_gpu.txt" shape="box"];
  "sha256:3d9951ba6fa283270cae6326bafd6412b121950da569be102d510fc97c303d25" [label="mkdir{path=/tmp/model}" shape="note"];
  "sha256:0a4cdb03f47d5b80dc0fe0ceea9c7f98b532743d8eefde7a6160c9a4d0538288" [label="sha256:0a4cdb03f47d5b80dc0fe0ceea9c7f98b532743d8eefde7a6160c9a4d0538288" shape="plaintext"];
  "sha256:f2bc79a8841d9b054152764da0422f83ee87aeea835c357f2cd9c965319760f2" -> "sha256:7d0add5683a482473b73ca26f09f8a77d8e81dd1a0d3bd07591e791f126a3f69" [label=""];
  "sha256:7d0add5683a482473b73ca26f09f8a77d8e81dd1a0d3bd07591e791f126a3f69" -> "sha256:380e47d3ef840146774135840c3fdc6cb7971e7a1b92da6113405991f87a3d1e" [label=""];
  "sha256:380e47d3ef840146774135840c3fdc6cb7971e7a1b92da6113405991f87a3d1e" -> "sha256:051bd6b00c15ea46af07b67d22e574451be46f77a0580c5fb5f1f34cd0c7fb3d" [label=""];
  "sha256:7676535386f454c1c825b070d4341b592dd3ffbdc229808ca2d3c054866f1429" -> "sha256:051bd6b00c15ea46af07b67d22e574451be46f77a0580c5fb5f1f34cd0c7fb3d" [label=""];
  "sha256:051bd6b00c15ea46af07b67d22e574451be46f77a0580c5fb5f1f34cd0c7fb3d" -> "sha256:9ede29831b0c514877b4991a4a2e61c684cf62a154695d069de539f607988e7d" [label=""];
  "sha256:9ede29831b0c514877b4991a4a2e61c684cf62a154695d069de539f607988e7d" -> "sha256:b0240d40e9f172b82c4130138592c58f09b660c7fdb21620c1183ea70375a394" [label=""];
  "sha256:7676535386f454c1c825b070d4341b592dd3ffbdc229808ca2d3c054866f1429" -> "sha256:b0240d40e9f172b82c4130138592c58f09b660c7fdb21620c1183ea70375a394" [label=""];
  "sha256:b0240d40e9f172b82c4130138592c58f09b660c7fdb21620c1183ea70375a394" -> "sha256:9a2eda2dab9f4e2967c7205feb19a3f86b1a3e245ddd07f0cc2b9b552e583fe2" [label=""];
  "sha256:9a2eda2dab9f4e2967c7205feb19a3f86b1a3e245ddd07f0cc2b9b552e583fe2" -> "sha256:3d9951ba6fa283270cae6326bafd6412b121950da569be102d510fc97c303d25" [label=""];
  "sha256:3d9951ba6fa283270cae6326bafd6412b121950da569be102d510fc97c303d25" -> "sha256:0a4cdb03f47d5b80dc0fe0ceea9c7f98b532743d8eefde7a6160c9a4d0538288" [label=""];
}

