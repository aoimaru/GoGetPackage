[app/sources/473214583.Dockerfile]
digraph {
  "sha256:5cdd8263b68af546b17a76905124d5859fcff09f8a1668cfb03d24f99abaa202" [label="docker-image://docker.io/nvidia/cuda:9.1-cudnn7-runtime-ubuntu16.04" shape="ellipse"];
  "sha256:97af256f61835cc68271e380d2e1c8c2065d906f82cd513a53bfe95ce3c10597" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends          curl          bzip2          ca-certificates          libgl1-mesa-glx &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:95c143941d12e45fbf8db27231237b91ba19d125f5f4f8259ddea51666041ff8" [label="mkdir{path=/workspace/DeepHyperX}" shape="note"];
  "sha256:fb457d1d6dd7b1c3ad286e2a6e12d0eecd5eda46228f437ca666c3c63e7406cb" [label="/bin/sh -c mkdir -p Datasets" shape="box"];
  "sha256:3e9142423e0dd60fa3e6259cf6e4d5a6b03bcae6fc52d46b91fc390a7c5dff63" [label="local://context" shape="ellipse"];
  "sha256:5e7e728e9cd0da522af06d9c846b8dce4e37e3baad92155e4c6d5ee9901b18c7" [label="copy{src=/, dest=/workspace/DeepHyperX/}" shape="note"];
  "sha256:e0278822fdf01d94cdb1220bc06da062353771b9ac57a89db667ee9013c906c9" [label="/bin/sh -c curl -o ~/miniconda.sh -O  https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh  &&      chmod +x ~/miniconda.sh &&      ~/miniconda.sh -b -p /opt/conda &&      rm ~/miniconda.sh" shape="box"];
  "sha256:9def4ecb2c85ca98d1dedfb49be2d44c51a1e33cf132e0050669e9b60bab8ece" [label="/bin/sh -c pip install --no-cache-dir -r requirements.txt" shape="box"];
  "sha256:ba8c83c32cf0162f00709f206e661bb6e7d583c56322265f944e191ba80457bc" [label="sha256:ba8c83c32cf0162f00709f206e661bb6e7d583c56322265f944e191ba80457bc" shape="plaintext"];
  "sha256:5cdd8263b68af546b17a76905124d5859fcff09f8a1668cfb03d24f99abaa202" -> "sha256:97af256f61835cc68271e380d2e1c8c2065d906f82cd513a53bfe95ce3c10597" [label=""];
  "sha256:97af256f61835cc68271e380d2e1c8c2065d906f82cd513a53bfe95ce3c10597" -> "sha256:95c143941d12e45fbf8db27231237b91ba19d125f5f4f8259ddea51666041ff8" [label=""];
  "sha256:95c143941d12e45fbf8db27231237b91ba19d125f5f4f8259ddea51666041ff8" -> "sha256:fb457d1d6dd7b1c3ad286e2a6e12d0eecd5eda46228f437ca666c3c63e7406cb" [label=""];
  "sha256:fb457d1d6dd7b1c3ad286e2a6e12d0eecd5eda46228f437ca666c3c63e7406cb" -> "sha256:5e7e728e9cd0da522af06d9c846b8dce4e37e3baad92155e4c6d5ee9901b18c7" [label=""];
  "sha256:3e9142423e0dd60fa3e6259cf6e4d5a6b03bcae6fc52d46b91fc390a7c5dff63" -> "sha256:5e7e728e9cd0da522af06d9c846b8dce4e37e3baad92155e4c6d5ee9901b18c7" [label=""];
  "sha256:5e7e728e9cd0da522af06d9c846b8dce4e37e3baad92155e4c6d5ee9901b18c7" -> "sha256:e0278822fdf01d94cdb1220bc06da062353771b9ac57a89db667ee9013c906c9" [label=""];
  "sha256:e0278822fdf01d94cdb1220bc06da062353771b9ac57a89db667ee9013c906c9" -> "sha256:9def4ecb2c85ca98d1dedfb49be2d44c51a1e33cf132e0050669e9b60bab8ece" [label=""];
  "sha256:9def4ecb2c85ca98d1dedfb49be2d44c51a1e33cf132e0050669e9b60bab8ece" -> "sha256:ba8c83c32cf0162f00709f206e661bb6e7d583c56322265f944e191ba80457bc" [label=""];
}

