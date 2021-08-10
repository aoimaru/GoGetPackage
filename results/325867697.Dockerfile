[app/sources/325867697.Dockerfile]
digraph {
  "sha256:fe78e916ad69b7d82733941d8ad4d76d4a79f9c423fe67261e6c8f22191e56aa" [label="docker-image://docker.io/ufoym/deepo:all-jupyter-py36-cu90" shape="ellipse"];
  "sha256:6f94000b893ac600da3848916c7086d33a5cc80ffc4d0cf79e21442620c00585" [label="/bin/sh -c sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list &&     apt-get update &&     apt-get install -y openssh-server openssh-client &&     apt-get clean &&     apt-get autoremove &&     pip install opencv-python &&     rm -rf /var/lib/apt/lists/* /tmp/* ~/*" shape="box"];
  "sha256:7db7b24ed4bc579697bd295f7a456e10315a708bf4fed35ac02a99b10930e39e" [label="sha256:7db7b24ed4bc579697bd295f7a456e10315a708bf4fed35ac02a99b10930e39e" shape="plaintext"];
  "sha256:fe78e916ad69b7d82733941d8ad4d76d4a79f9c423fe67261e6c8f22191e56aa" -> "sha256:6f94000b893ac600da3848916c7086d33a5cc80ffc4d0cf79e21442620c00585" [label=""];
  "sha256:6f94000b893ac600da3848916c7086d33a5cc80ffc4d0cf79e21442620c00585" -> "sha256:7db7b24ed4bc579697bd295f7a456e10315a708bf4fed35ac02a99b10930e39e" [label=""];
}

