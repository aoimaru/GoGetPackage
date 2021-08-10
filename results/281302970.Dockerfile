[app/sources/281302970.Dockerfile]
digraph {
  "sha256:98c6962b88c644768dd5ec190ef997583c1018ced0a0174b439ff2becabeb54b" [label="docker-image://docker.io/nvidia/cuda:9.2-devel" shape="ellipse"];
  "sha256:dca0dd88968e2403e433f7a7dfa78f2f0978472a7e11d6e01cdf2133ed4fffdd" [label="/bin/sh -c apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y       python3-scipy       python3-appdirs       python3-mako       python3-pytest       python3-pytest-cov       python3-pytools       python3-pip       python3-venv       curl       &&     apt-get autoremove --purge -y &&     apt-get autoclean -y &&     rm -rf /var/cache/apt/* /var/lib/apt/lists/*" shape="box"];
  "sha256:a804bb94bddabcb78769ca6de8451dd72a48a4bcac74695ced18223b97e7511c" [label="/bin/sh -c pip3 install       configparser       torchvision       scikit-cuda       cupy" shape="box"];
  "sha256:93ecf445fd0a804463e93a1aca9880750a5ddefee5f291b9c18eabbb91253fb8" [label="sha256:93ecf445fd0a804463e93a1aca9880750a5ddefee5f291b9c18eabbb91253fb8" shape="plaintext"];
  "sha256:98c6962b88c644768dd5ec190ef997583c1018ced0a0174b439ff2becabeb54b" -> "sha256:dca0dd88968e2403e433f7a7dfa78f2f0978472a7e11d6e01cdf2133ed4fffdd" [label=""];
  "sha256:dca0dd88968e2403e433f7a7dfa78f2f0978472a7e11d6e01cdf2133ed4fffdd" -> "sha256:a804bb94bddabcb78769ca6de8451dd72a48a4bcac74695ced18223b97e7511c" [label=""];
  "sha256:a804bb94bddabcb78769ca6de8451dd72a48a4bcac74695ced18223b97e7511c" -> "sha256:93ecf445fd0a804463e93a1aca9880750a5ddefee5f291b9c18eabbb91253fb8" [label=""];
}

