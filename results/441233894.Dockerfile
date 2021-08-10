[app/sources/441233894.Dockerfile]
digraph {
  "sha256:0ff24a9534a33da32ef764dbe1c20467756f604d8df534a9bc54ea665fb9c426" [label="docker-image://docker.io/nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04" shape="ellipse"];
  "sha256:506a60b526ab7d10741d873c8207a79a6ac7b32567e67639c2c37d77ccf2f320" [label="/bin/sh -c apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y         python3-pip vim htop" shape="box"];
  "sha256:3339acf2135452588f54076d0e5945734c11efae0f97eee980caf5a90bb4522c" [label="/bin/sh -c pip3 install -U pip wheel" shape="box"];
  "sha256:394a465b1f7fa8eb34265afa030794fbcc3d6d73ff02a38ac31119b9ab558bdf" [label="/bin/sh -c pip3 install https://download.pytorch.org/whl/cu100/torch-1.0.1.post2-cp36-cp36m-linux_x86_64.whl &&     rm -r ~/.cache/pip" shape="box"];
  "sha256:0b543f0e6fdd0484ee00bc347c04d5bc77606da5cc08f481f528ecef94d242a2" [label="mkdir{path=/transformer-lm}" shape="note"];
  "sha256:b5e27ab4aa8eac346e56d9d7d9c940608b85c7f08a4ad93a314a1d684b2479d6" [label="local://context" shape="ellipse"];
  "sha256:8400d0947009dd6918cdfc525d65e7de89b71c4f3243ee8375c40bdd0039a66f" [label="copy{src=/requirements.txt, dest=/transformer-lm/}" shape="note"];
  "sha256:9abbf1b649fef84f3b79b642a977017ff1964d3554448c242a9ebb8905db3aac" [label="/bin/sh -c pip3 install awscli &&     pip3 install -r requirements.txt &&     rm -r ~/.cache/pip" shape="box"];
  "sha256:50ea72034cb7a23ef9487a55f6e8c1909a5f99e2249d65ccca72fd3d90d34370" [label="copy{src=/, dest=/transformer-lm/}" shape="note"];
  "sha256:0fc7a7349c1ea83d73043966f81b812a062eb8d4860803a47e6bef0a2cb15861" [label="/bin/sh -c pip3 install -e ." shape="box"];
  "sha256:a712e12673f9e710dbe2b11c7131638764696d2b7f6e49d707140d915e675999" [label="sha256:a712e12673f9e710dbe2b11c7131638764696d2b7f6e49d707140d915e675999" shape="plaintext"];
  "sha256:0ff24a9534a33da32ef764dbe1c20467756f604d8df534a9bc54ea665fb9c426" -> "sha256:506a60b526ab7d10741d873c8207a79a6ac7b32567e67639c2c37d77ccf2f320" [label=""];
  "sha256:506a60b526ab7d10741d873c8207a79a6ac7b32567e67639c2c37d77ccf2f320" -> "sha256:3339acf2135452588f54076d0e5945734c11efae0f97eee980caf5a90bb4522c" [label=""];
  "sha256:3339acf2135452588f54076d0e5945734c11efae0f97eee980caf5a90bb4522c" -> "sha256:394a465b1f7fa8eb34265afa030794fbcc3d6d73ff02a38ac31119b9ab558bdf" [label=""];
  "sha256:394a465b1f7fa8eb34265afa030794fbcc3d6d73ff02a38ac31119b9ab558bdf" -> "sha256:0b543f0e6fdd0484ee00bc347c04d5bc77606da5cc08f481f528ecef94d242a2" [label=""];
  "sha256:0b543f0e6fdd0484ee00bc347c04d5bc77606da5cc08f481f528ecef94d242a2" -> "sha256:8400d0947009dd6918cdfc525d65e7de89b71c4f3243ee8375c40bdd0039a66f" [label=""];
  "sha256:b5e27ab4aa8eac346e56d9d7d9c940608b85c7f08a4ad93a314a1d684b2479d6" -> "sha256:8400d0947009dd6918cdfc525d65e7de89b71c4f3243ee8375c40bdd0039a66f" [label=""];
  "sha256:8400d0947009dd6918cdfc525d65e7de89b71c4f3243ee8375c40bdd0039a66f" -> "sha256:9abbf1b649fef84f3b79b642a977017ff1964d3554448c242a9ebb8905db3aac" [label=""];
  "sha256:9abbf1b649fef84f3b79b642a977017ff1964d3554448c242a9ebb8905db3aac" -> "sha256:50ea72034cb7a23ef9487a55f6e8c1909a5f99e2249d65ccca72fd3d90d34370" [label=""];
  "sha256:b5e27ab4aa8eac346e56d9d7d9c940608b85c7f08a4ad93a314a1d684b2479d6" -> "sha256:50ea72034cb7a23ef9487a55f6e8c1909a5f99e2249d65ccca72fd3d90d34370" [label=""];
  "sha256:50ea72034cb7a23ef9487a55f6e8c1909a5f99e2249d65ccca72fd3d90d34370" -> "sha256:0fc7a7349c1ea83d73043966f81b812a062eb8d4860803a47e6bef0a2cb15861" [label=""];
  "sha256:0fc7a7349c1ea83d73043966f81b812a062eb8d4860803a47e6bef0a2cb15861" -> "sha256:a712e12673f9e710dbe2b11c7131638764696d2b7f6e49d707140d915e675999" [label=""];
}

