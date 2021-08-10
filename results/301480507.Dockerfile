[app/sources/301480507.Dockerfile]
digraph {
  "sha256:11aa2618b5571026619f3acb2f5f8aca3a793da83477b088ed709a3829aa57a7" [label="docker-image://docker.io/nvidia/cuda:9.0-cudnn7-runtime-ubuntu16.04" shape="ellipse"];
  "sha256:d3c64b8b35d8bc79e384b0ed196ac92701b06dff963c536f9fb22f0a954749f9" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends ca-certificates curl bzip2     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:8c69ffc32d06b2b2e5f57a8174bcf5c4da949d7524076ceb62d31934a97efa90" [label="/bin/sh -c umask 0     && mkdir -p /tmp/deps     && cd /tmp/deps     && curl -L https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -o Miniconda3-latest-Linux-x86_64.sh     && bash Miniconda3-latest-Linux-x86_64.sh -b -p /opt/miniconda3     && rm -rf Miniconda3-latest-Linux-x86_64.sh     && PATH=/opt/miniconda3/bin:$PATH     && conda install conda=4.5.11 python=3.5     && conda install pip wheel opencv     && conda clean -y --all     && cd /     && rm -rf /tmp/*" shape="box"];
  "sha256:70f645eab2985d289e29106b165a9a1931e631a12ba6d978607e1a32685fb0c6" [label="/bin/sh -c pip install nnabla-ext-cuda90" shape="box"];
  "sha256:0e1802c0ea58d047108fe33691fd9b37ce511e843d2cb4cb7c28eff1f3f8e24c" [label="sha256:0e1802c0ea58d047108fe33691fd9b37ce511e843d2cb4cb7c28eff1f3f8e24c" shape="plaintext"];
  "sha256:11aa2618b5571026619f3acb2f5f8aca3a793da83477b088ed709a3829aa57a7" -> "sha256:d3c64b8b35d8bc79e384b0ed196ac92701b06dff963c536f9fb22f0a954749f9" [label=""];
  "sha256:d3c64b8b35d8bc79e384b0ed196ac92701b06dff963c536f9fb22f0a954749f9" -> "sha256:8c69ffc32d06b2b2e5f57a8174bcf5c4da949d7524076ceb62d31934a97efa90" [label=""];
  "sha256:8c69ffc32d06b2b2e5f57a8174bcf5c4da949d7524076ceb62d31934a97efa90" -> "sha256:70f645eab2985d289e29106b165a9a1931e631a12ba6d978607e1a32685fb0c6" [label=""];
  "sha256:70f645eab2985d289e29106b165a9a1931e631a12ba6d978607e1a32685fb0c6" -> "sha256:0e1802c0ea58d047108fe33691fd9b37ce511e843d2cb4cb7c28eff1f3f8e24c" [label=""];
}

