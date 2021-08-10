[app/sources/251741730.Dockerfile]
digraph {
  "sha256:6842b396454047d9702aefca99ae6918ffe449d7a06f30be2c0e237f8dda3b9c" [label="docker-image://docker.io/nvidia/cuda:9.1-cudnn7-devel" shape="ellipse"];
  "sha256:12bc635f6bd275e8b85428738096e7ced0061306a907bb506f850bbe2e7112c0" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends   python3.5   python3.5-dev   python3-pip   build-essential   cmake   git   curl   vim   ca-certificates   libjpeg-dev   libpng-dev &&  rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0ae3a611d8ad1505d46137f8ca7bd14e014ccb61a51a135185348f5da40caeaa" [label="/bin/sh -c pip3 install numpy &&   pip3 install wheel &&   pip3 install setuptools &&   pip3 install ninja &&   pip3 install http://download.pytorch.org/whl/cu91/torch-0.4.0-cp35-cp35m-linux_x86_64.whl &&   pip3 install torchvision" shape="box"];
  "sha256:78c7007b1f32ac076345f944d172d3481387f1e7aeeee7d99a970af7e59e087d" [label="/bin/sh -c ln -s /usr/bin/python3 /usr/bin/python" shape="box"];
  "sha256:fa37aba83d61fae2073893da6a07ed9b5e6d72e1e461fd8c2f6826641d7768a8" [label="mkdir{path=/root}" shape="note"];
  "sha256:571b1bc5e77b25166b1c61fc55a9b50111257e0c380eaf940a9de6aa3dd76738" [label="sha256:571b1bc5e77b25166b1c61fc55a9b50111257e0c380eaf940a9de6aa3dd76738" shape="plaintext"];
  "sha256:6842b396454047d9702aefca99ae6918ffe449d7a06f30be2c0e237f8dda3b9c" -> "sha256:12bc635f6bd275e8b85428738096e7ced0061306a907bb506f850bbe2e7112c0" [label=""];
  "sha256:12bc635f6bd275e8b85428738096e7ced0061306a907bb506f850bbe2e7112c0" -> "sha256:0ae3a611d8ad1505d46137f8ca7bd14e014ccb61a51a135185348f5da40caeaa" [label=""];
  "sha256:0ae3a611d8ad1505d46137f8ca7bd14e014ccb61a51a135185348f5da40caeaa" -> "sha256:78c7007b1f32ac076345f944d172d3481387f1e7aeeee7d99a970af7e59e087d" [label=""];
  "sha256:78c7007b1f32ac076345f944d172d3481387f1e7aeeee7d99a970af7e59e087d" -> "sha256:fa37aba83d61fae2073893da6a07ed9b5e6d72e1e461fd8c2f6826641d7768a8" [label=""];
  "sha256:fa37aba83d61fae2073893da6a07ed9b5e6d72e1e461fd8c2f6826641d7768a8" -> "sha256:571b1bc5e77b25166b1c61fc55a9b50111257e0c380eaf940a9de6aa3dd76738" [label=""];
}

