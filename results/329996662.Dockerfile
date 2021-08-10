[app/sources/329996662.Dockerfile]
digraph {
  "sha256:6be56c73838a149ecdcbf79ae7b9906ff236eea4ebfa9e2e55eb58ef93fc7bf4" [label="docker-image://docker.io/nvidia/cuda:9.0-base-ubuntu16.04@sha256:c8faefab71dabdffa31dcf411bd6df072e3d9a4a54d49d46a993b4a945b9d37f" shape="ellipse"];
  "sha256:016272d276c3b31f3dfbbcf178c15240f83ad91e5af585414ea3901626599bb0" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         build-essential         cuda-command-line-tools-9-0         cuda-cublas-9-0         cuda-cufft-9-0         cuda-curand-9-0         cuda-cusolver-9-0         cuda-cusparse-9-0         curl         libcudnn7=7.1.4.18-1+cuda9.0         libfreetype6-dev         libhdf5-serial-dev         libpng12-dev         libzmq3-dev         pkg-config         python         python-dev         rsync         software-properties-common         unzip         &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f2a56d52a1230f6b9921424bd0ea57c79682ba7327039d5ee910b5f45b31cb3d" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         wget &&     MINICONDA=\"Miniconda3-latest-Linux-x86_64.sh\" &&     wget --quiet https://repo.continuum.io/miniconda/$MINICONDA &&     bash $MINICONDA -b -p /miniconda &&     rm -f $MINICONDA" shape="box"];
  "sha256:dac1ce0bad5902366bef0dda2991ec042f7f9d68781ccd53568466cbe61bc351" [label="/bin/sh -c conda update -n base conda &&     conda install pytorch torchvision cuda90 -c pytorch" shape="box"];
  "sha256:22cb7a61c798f9ef6f993e8a6fc437a0f3ec7673c0380b183a98d522042e19fc" [label="/bin/sh -c conda install numpy scipy jupyter matplotlib &&     conda install -c conda-forge scikit-image &&     apt-get install -y python-qt4 &&     pip install opencv-python" shape="box"];
  "sha256:943823a70f679b1bcde10a1f53f8a698311304c06461857a0ad9bf555b287e4c" [label="mkdir{path=/notebooks}" shape="note"];
  "sha256:98c570faf2f585c0a5bd16c7f789ee2e434fe5ec598fcb4967b0efdd665776d0" [label="sha256:98c570faf2f585c0a5bd16c7f789ee2e434fe5ec598fcb4967b0efdd665776d0" shape="plaintext"];
  "sha256:6be56c73838a149ecdcbf79ae7b9906ff236eea4ebfa9e2e55eb58ef93fc7bf4" -> "sha256:016272d276c3b31f3dfbbcf178c15240f83ad91e5af585414ea3901626599bb0" [label=""];
  "sha256:016272d276c3b31f3dfbbcf178c15240f83ad91e5af585414ea3901626599bb0" -> "sha256:f2a56d52a1230f6b9921424bd0ea57c79682ba7327039d5ee910b5f45b31cb3d" [label=""];
  "sha256:f2a56d52a1230f6b9921424bd0ea57c79682ba7327039d5ee910b5f45b31cb3d" -> "sha256:dac1ce0bad5902366bef0dda2991ec042f7f9d68781ccd53568466cbe61bc351" [label=""];
  "sha256:dac1ce0bad5902366bef0dda2991ec042f7f9d68781ccd53568466cbe61bc351" -> "sha256:22cb7a61c798f9ef6f993e8a6fc437a0f3ec7673c0380b183a98d522042e19fc" [label=""];
  "sha256:22cb7a61c798f9ef6f993e8a6fc437a0f3ec7673c0380b183a98d522042e19fc" -> "sha256:943823a70f679b1bcde10a1f53f8a698311304c06461857a0ad9bf555b287e4c" [label=""];
  "sha256:943823a70f679b1bcde10a1f53f8a698311304c06461857a0ad9bf555b287e4c" -> "sha256:98c570faf2f585c0a5bd16c7f789ee2e434fe5ec598fcb4967b0efdd665776d0" [label=""];
}

