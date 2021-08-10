[app/sources/333063142.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:28d4eed4b3e85e0bf255b1deabb99ea4e9b6204472dc73d8821c7f8c2dfd27dc" [label="/bin/sh -c apt-get update     && apt-get install -y python3-numpy python3-six        libfftw3-3 libyaml-0-2 libtag1v5 libsamplerate0 python3-yaml        libavcodec57 libavformat57 libavutil55 libavresample3     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2fa6a2de8f8b5da24af6ce45d6a3f731d8ee260933ceedcd5fc628c653788522" [label="/bin/sh -c apt-get update     && apt-get install -y build-essential python3-dev git     libfftw3-dev libavcodec-dev libavformat-dev libavresample-dev     libsamplerate0-dev libtag1-dev libyaml-dev     && mkdir /essentia && cd /essentia && git clone https://github.com/MTG/essentia.git     && cd /essentia/essentia && python3 waf configure --with-python --with-examples --with-vamp     && python3 waf && python3 waf install && ldconfig     &&  apt-get remove -y build-essential libyaml-dev libfftw3-dev libavcodec-dev         libavformat-dev libavutil-dev libavresample-dev python-dev libsamplerate0-dev         libtag1-dev python-numpy-dev     && apt-get autoremove -y     && apt-get clean -y     && rm -rf /var/lib/apt/lists/*     && cd / && rm -rf /essentia/essentia" shape="box"];
  "sha256:53d709b0da55831fe4728708356a34ae89c44f7c2c446f9ecc12579a7b46ca98" [label="mkdir{path=/essentia}" shape="note"];
  "sha256:57405de7ec97ee0bb1e2481f4747eae2b0e312a1df382202c61a0e36074df0d4" [label="sha256:57405de7ec97ee0bb1e2481f4747eae2b0e312a1df382202c61a0e36074df0d4" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:28d4eed4b3e85e0bf255b1deabb99ea4e9b6204472dc73d8821c7f8c2dfd27dc" [label=""];
  "sha256:28d4eed4b3e85e0bf255b1deabb99ea4e9b6204472dc73d8821c7f8c2dfd27dc" -> "sha256:2fa6a2de8f8b5da24af6ce45d6a3f731d8ee260933ceedcd5fc628c653788522" [label=""];
  "sha256:2fa6a2de8f8b5da24af6ce45d6a3f731d8ee260933ceedcd5fc628c653788522" -> "sha256:53d709b0da55831fe4728708356a34ae89c44f7c2c446f9ecc12579a7b46ca98" [label=""];
  "sha256:53d709b0da55831fe4728708356a34ae89c44f7c2c446f9ecc12579a7b46ca98" -> "sha256:57405de7ec97ee0bb1e2481f4747eae2b0e312a1df382202c61a0e36074df0d4" [label=""];
}

