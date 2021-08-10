[app/sources/363544735.Dockerfile]
digraph {
  "sha256:eb514fef708db0f8737a07e31ade12122bffdb32634dbce024d735b361fc9e3d" [label="docker-image://nvcr.io/nvidia/pytorch:19.03-py3@sha256:8c89145af2a2f3a08e7598188d65f546bf93e3b7ebf78a5837814088822fa8b7" shape="ellipse"];
  "sha256:5569c5f39d4dd6dad4f094c700d35e84fa15d6e5d0a563bf0ce6f7306e71d037" [label="/bin/sh -c /opt/conda/bin/python -m pip install ipython &&     /opt/conda/bin/python -m pip install jupyter &&     /opt/conda/bin/python -m pip install jupyterlab &&     /opt/conda/bin/python -m pip install opencv-python" shape="box"];
  "sha256:74fbf493a3bf1031c1d63a5e000cda259002756ba84f007735b59ff68c52666d" [label="/bin/sh -c /opt/conda/bin/python -m ipykernel install         --prefix=/opt/conda/         --display-name \"Python 3.6 CONDA (NGC/PyTorch 19.03) on Backend.AI\" &&     cat /opt/conda/share/jupyter/kernels/python3/kernel.json" shape="box"];
  "sha256:9574d031db848637c5fdfbd472e915537df1b62388f8836cb6792060538a9ebe" [label="/bin/sh -c mkdir -p /tmp &&     chown root:root /tmp &&     chmod 1777 /tmp" shape="box"];
  "sha256:a4235f51dcebf54ae17ddb4c34322bf1bcd9e1d955fe31176570c5fd41268c74" [label="/bin/sh -c mkdir -p /home/work/.jupyter/custom" shape="box"];
  "sha256:62f6fa10082cfae2a73b511da8fe761cdd32b2d7f20e8bdef9f9d7f56c2144e5" [label="local://context" shape="ellipse"];
  "sha256:07c5902907ba6f47e792e3ff433ea66905210713f3ae2b2332f6c901f16ef0af" [label="copy{src=/custom.css, dest=/home/work/.jupyter/custom/custom.css}" shape="note"];
  "sha256:fd876564ff174bffbdb08079de422772b1dde50d7f644ca10f56714b976b8ec7" [label="copy{src=/logo.svg, dest=/home/work/.jupyter/custom/logo.svg}" shape="note"];
  "sha256:d69d3d7e06f3695fd343851976e9529f0020195525481a8655442e5dfa9ec1fe" [label="copy{src=/policy.yml, dest=/etc/backend.ai/jail/policy.yml}" shape="note"];
  "sha256:a42821cff44e16a51ecddf12f4e07f37b270cf84ac6d2894807deecffb8c5fdc" [label="sha256:a42821cff44e16a51ecddf12f4e07f37b270cf84ac6d2894807deecffb8c5fdc" shape="plaintext"];
  "sha256:eb514fef708db0f8737a07e31ade12122bffdb32634dbce024d735b361fc9e3d" -> "sha256:5569c5f39d4dd6dad4f094c700d35e84fa15d6e5d0a563bf0ce6f7306e71d037" [label=""];
  "sha256:5569c5f39d4dd6dad4f094c700d35e84fa15d6e5d0a563bf0ce6f7306e71d037" -> "sha256:74fbf493a3bf1031c1d63a5e000cda259002756ba84f007735b59ff68c52666d" [label=""];
  "sha256:74fbf493a3bf1031c1d63a5e000cda259002756ba84f007735b59ff68c52666d" -> "sha256:9574d031db848637c5fdfbd472e915537df1b62388f8836cb6792060538a9ebe" [label=""];
  "sha256:9574d031db848637c5fdfbd472e915537df1b62388f8836cb6792060538a9ebe" -> "sha256:a4235f51dcebf54ae17ddb4c34322bf1bcd9e1d955fe31176570c5fd41268c74" [label=""];
  "sha256:a4235f51dcebf54ae17ddb4c34322bf1bcd9e1d955fe31176570c5fd41268c74" -> "sha256:07c5902907ba6f47e792e3ff433ea66905210713f3ae2b2332f6c901f16ef0af" [label=""];
  "sha256:62f6fa10082cfae2a73b511da8fe761cdd32b2d7f20e8bdef9f9d7f56c2144e5" -> "sha256:07c5902907ba6f47e792e3ff433ea66905210713f3ae2b2332f6c901f16ef0af" [label=""];
  "sha256:07c5902907ba6f47e792e3ff433ea66905210713f3ae2b2332f6c901f16ef0af" -> "sha256:fd876564ff174bffbdb08079de422772b1dde50d7f644ca10f56714b976b8ec7" [label=""];
  "sha256:62f6fa10082cfae2a73b511da8fe761cdd32b2d7f20e8bdef9f9d7f56c2144e5" -> "sha256:fd876564ff174bffbdb08079de422772b1dde50d7f644ca10f56714b976b8ec7" [label=""];
  "sha256:fd876564ff174bffbdb08079de422772b1dde50d7f644ca10f56714b976b8ec7" -> "sha256:d69d3d7e06f3695fd343851976e9529f0020195525481a8655442e5dfa9ec1fe" [label=""];
  "sha256:62f6fa10082cfae2a73b511da8fe761cdd32b2d7f20e8bdef9f9d7f56c2144e5" -> "sha256:d69d3d7e06f3695fd343851976e9529f0020195525481a8655442e5dfa9ec1fe" [label=""];
  "sha256:d69d3d7e06f3695fd343851976e9529f0020195525481a8655442e5dfa9ec1fe" -> "sha256:a42821cff44e16a51ecddf12f4e07f37b270cf84ac6d2894807deecffb8c5fdc" [label=""];
}

