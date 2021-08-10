[app/sources/436091742.Dockerfile]
digraph {
  "sha256:4abc041377154e0f1a493bc5c27f0310fce3d25ca22e3ca2c02bf6c7956fca7c" [label="local://context" shape="ellipse"];
  "sha256:6ed6146e7fc5023cf3d84e996ecd598a3af9e373c40cfde14d1fa91b8a687927" [label="docker-image://docker.io/nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04" shape="ellipse"];
  "sha256:98d0e88d4290723ef3fa208f6df44dcfae1ad475cb7a4a027068322cf3dfb2d9" [label="/bin/sh -c echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections" shape="box"];
  "sha256:a7d20fce9b56c0b46e32a91bd08671f2ffa021f5614f33a211105c2fe7d98f00" [label="/bin/sh -c apt-get update -y  && apt-get install -y apt-utils git curl ca-certificates bzip2 cmake tree htop bmon iotop g++" shape="box"];
  "sha256:fb9d7462a8eeb10353e080e1668e9083065f10e0975d47e2a397324a6331d99a" [label="/bin/sh -c curl -so /miniconda.sh https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh  && chmod +x /miniconda.sh  && /miniconda.sh -b -p /miniconda  && rm /miniconda.sh" shape="box"];
  "sha256:cbc7e1e481eeb87d999bd0a541ca93c723154489b12dc2f39868c2d649df28a6" [label="/bin/sh -c /miniconda/bin/conda install -y conda-build  && /miniconda/bin/conda create -y --name py36 python=3.6.7  && /miniconda/bin/conda clean -ya" shape="box"];
  "sha256:a8be1e8c45bb886cf4ba8914f7586b5dfade9054fc4dd950996e0352d4989751" [label="/bin/sh -c conda install -y ipython" shape="box"];
  "sha256:f5fbe87c742e008e80513b6da8d0c7d4014e235a118a4bea345781f726ecb2dd" [label="/bin/sh -c pip install ninja yacs cython matplotlib jupyter" shape="box"];
  "sha256:37c9d752819a08fd7b94441698248a0e8fda0f08d4cecd449d4f0cb030bfe8df" [label="/bin/sh -c conda install -y pytorch-nightly -c pytorch  && conda install -y opencv -c menpo  && conda clean -ya" shape="box"];
  "sha256:36e9702b1a0214e4854e39f3bdcd78f20f7bd6cd60cfc8e9dd4f97d0dd3b2e79" [label="mkdir{path=/root}" shape="note"];
  "sha256:7c214d2f14e6a867050dcbd7a259091ed83708f56419b269603772f98daa0614" [label="/bin/sh -c mkdir /notebooks" shape="box"];
  "sha256:ff3f929874cabd69435755d31c6f48dbbd25d63fd66201255a6a61d3168a6f4d" [label="mkdir{path=/notebooks}" shape="note"];
  "sha256:e1d1616d5d0109bd902329630a1d5d9431922a1b4a0b37fb914a83f889b32786" [label="/bin/sh -c git clone https://github.com/pytorch/vision.git  && cd vision  && python setup.py install" shape="box"];
  "sha256:a87acdb55759191046326cac8980fa192a1a8ec7fceaefdf3a296ea2b9256642" [label="/bin/sh -c git clone https://github.com/cocodataset/cocoapi.git  && cd cocoapi/PythonAPI  && python setup.py build_ext install" shape="box"];
  "sha256:9958e5f7f3ce48086acea8333d3788b867baa014b0f818a030283de93054a4bb" [label="/bin/sh -c git clone https://github.com/facebookresearch/maskrcnn-benchmark.git  && cd maskrcnn-benchmark  && python setup.py build develop" shape="box"];
  "sha256:0d0043591b9b64c79792796366a967ab661c0cac60320be56bfcb1c4c3a6ac81" [label="/bin/sh -c jupyter notebook --generate-config" shape="box"];
  "sha256:7113f946ef9a9bb681700534209bb9dea52069334caf02fc02a6236622db40e7" [label="copy{src=/jupyter_notebook_config.py, dest=/root/.jupyter/jupyter_notebook_config.py}" shape="note"];
  "sha256:02cae59e14f015ca7de171090677d2d40e8d56dfcee1186b76ec2b968202bcdb" [label="sha256:02cae59e14f015ca7de171090677d2d40e8d56dfcee1186b76ec2b968202bcdb" shape="plaintext"];
  "sha256:6ed6146e7fc5023cf3d84e996ecd598a3af9e373c40cfde14d1fa91b8a687927" -> "sha256:98d0e88d4290723ef3fa208f6df44dcfae1ad475cb7a4a027068322cf3dfb2d9" [label=""];
  "sha256:98d0e88d4290723ef3fa208f6df44dcfae1ad475cb7a4a027068322cf3dfb2d9" -> "sha256:a7d20fce9b56c0b46e32a91bd08671f2ffa021f5614f33a211105c2fe7d98f00" [label=""];
  "sha256:a7d20fce9b56c0b46e32a91bd08671f2ffa021f5614f33a211105c2fe7d98f00" -> "sha256:fb9d7462a8eeb10353e080e1668e9083065f10e0975d47e2a397324a6331d99a" [label=""];
  "sha256:fb9d7462a8eeb10353e080e1668e9083065f10e0975d47e2a397324a6331d99a" -> "sha256:cbc7e1e481eeb87d999bd0a541ca93c723154489b12dc2f39868c2d649df28a6" [label=""];
  "sha256:cbc7e1e481eeb87d999bd0a541ca93c723154489b12dc2f39868c2d649df28a6" -> "sha256:a8be1e8c45bb886cf4ba8914f7586b5dfade9054fc4dd950996e0352d4989751" [label=""];
  "sha256:a8be1e8c45bb886cf4ba8914f7586b5dfade9054fc4dd950996e0352d4989751" -> "sha256:f5fbe87c742e008e80513b6da8d0c7d4014e235a118a4bea345781f726ecb2dd" [label=""];
  "sha256:f5fbe87c742e008e80513b6da8d0c7d4014e235a118a4bea345781f726ecb2dd" -> "sha256:37c9d752819a08fd7b94441698248a0e8fda0f08d4cecd449d4f0cb030bfe8df" [label=""];
  "sha256:37c9d752819a08fd7b94441698248a0e8fda0f08d4cecd449d4f0cb030bfe8df" -> "sha256:36e9702b1a0214e4854e39f3bdcd78f20f7bd6cd60cfc8e9dd4f97d0dd3b2e79" [label=""];
  "sha256:36e9702b1a0214e4854e39f3bdcd78f20f7bd6cd60cfc8e9dd4f97d0dd3b2e79" -> "sha256:7c214d2f14e6a867050dcbd7a259091ed83708f56419b269603772f98daa0614" [label=""];
  "sha256:7c214d2f14e6a867050dcbd7a259091ed83708f56419b269603772f98daa0614" -> "sha256:ff3f929874cabd69435755d31c6f48dbbd25d63fd66201255a6a61d3168a6f4d" [label=""];
  "sha256:ff3f929874cabd69435755d31c6f48dbbd25d63fd66201255a6a61d3168a6f4d" -> "sha256:e1d1616d5d0109bd902329630a1d5d9431922a1b4a0b37fb914a83f889b32786" [label=""];
  "sha256:e1d1616d5d0109bd902329630a1d5d9431922a1b4a0b37fb914a83f889b32786" -> "sha256:a87acdb55759191046326cac8980fa192a1a8ec7fceaefdf3a296ea2b9256642" [label=""];
  "sha256:a87acdb55759191046326cac8980fa192a1a8ec7fceaefdf3a296ea2b9256642" -> "sha256:9958e5f7f3ce48086acea8333d3788b867baa014b0f818a030283de93054a4bb" [label=""];
  "sha256:9958e5f7f3ce48086acea8333d3788b867baa014b0f818a030283de93054a4bb" -> "sha256:0d0043591b9b64c79792796366a967ab661c0cac60320be56bfcb1c4c3a6ac81" [label=""];
  "sha256:0d0043591b9b64c79792796366a967ab661c0cac60320be56bfcb1c4c3a6ac81" -> "sha256:7113f946ef9a9bb681700534209bb9dea52069334caf02fc02a6236622db40e7" [label=""];
  "sha256:4abc041377154e0f1a493bc5c27f0310fce3d25ca22e3ca2c02bf6c7956fca7c" -> "sha256:7113f946ef9a9bb681700534209bb9dea52069334caf02fc02a6236622db40e7" [label=""];
  "sha256:7113f946ef9a9bb681700534209bb9dea52069334caf02fc02a6236622db40e7" -> "sha256:02cae59e14f015ca7de171090677d2d40e8d56dfcee1186b76ec2b968202bcdb" [label=""];
}

