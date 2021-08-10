[app/sources/239466428.Dockerfile]
digraph {
  "sha256:2a07ac73bce574be43ccf30170ec5b30af856e874f42fb2ef5c545c394c1e1aa" [label="docker-image://docker.io/continuumio/miniconda3:latest" shape="ellipse"];
  "sha256:65103928a6925f4d170e084bd47bcf89270dfad75280eed19b6548cce3a0815e" [label="/bin/sh -c true \t&& pip install --upgrade pip \t&& conda install -y matplotlib \t&& true" shape="box"];
  "sha256:e945e8412fc3ff4fa705f5778ac5e242585825154cdc6c40c6e98382b8f65ee8" [label="/bin/sh -c true \t&& apt-get update \t&& apt-get install -y make \t&& rm -rf /var/lib/apt/lists/* \t&& true" shape="box"];
  "sha256:cc6c4281e3ef54c69ad37245b36688a245517eba96bc9adf417846b0b6116caf" [label="local://context" shape="ellipse"];
  "sha256:ad83a989d3177a336e2783863c8c115e934bd186156d472ce109f6c46e517179" [label="copy{src=/requirements.txt, dest=/src/}" shape="note"];
  "sha256:7d7506b5ab8deede19c6039ee5b45ebc1336ca30eac58f5c4aeaaefc20145e61" [label="mkdir{path=/src}" shape="note"];
  "sha256:3bb723c1631457c547973b0cc0447afd3516184cb0e5f46201c36f1b0152ff57" [label="/bin/sh -c true \t&& pip install -r requirements.txt \t&& pip install pytest \t&& true" shape="box"];
  "sha256:4d4033c5571859e267c6a0ec5ffafb4ef996e594c2308ed81d11555cc04dd3da" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:c2277258c503d060ff070b795bf83fadd15d528936a460399a2a27a88d689a1c" [label="/bin/sh -c true \t&& adduser dp \t&& python setup.py install \t&& chown -R dp:dp /src \t&& true" shape="box"];
  "sha256:f932fd4b716a2ab7b236955309dc9b613d77cec9d42742d59337a4148f786497" [label="/bin/sh -c find examples -name '*.json' -print0 | xargs -n 1 -0 python scripts/validate_dpkg.py --log-level=DEBUG" shape="box"];
  "sha256:243be0c7bba24a7cfb6f5cb0859112287b962654a80996dac5cb3a40fae51142" [label="sha256:243be0c7bba24a7cfb6f5cb0859112287b962654a80996dac5cb3a40fae51142" shape="plaintext"];
  "sha256:2a07ac73bce574be43ccf30170ec5b30af856e874f42fb2ef5c545c394c1e1aa" -> "sha256:65103928a6925f4d170e084bd47bcf89270dfad75280eed19b6548cce3a0815e" [label=""];
  "sha256:65103928a6925f4d170e084bd47bcf89270dfad75280eed19b6548cce3a0815e" -> "sha256:e945e8412fc3ff4fa705f5778ac5e242585825154cdc6c40c6e98382b8f65ee8" [label=""];
  "sha256:e945e8412fc3ff4fa705f5778ac5e242585825154cdc6c40c6e98382b8f65ee8" -> "sha256:ad83a989d3177a336e2783863c8c115e934bd186156d472ce109f6c46e517179" [label=""];
  "sha256:cc6c4281e3ef54c69ad37245b36688a245517eba96bc9adf417846b0b6116caf" -> "sha256:ad83a989d3177a336e2783863c8c115e934bd186156d472ce109f6c46e517179" [label=""];
  "sha256:ad83a989d3177a336e2783863c8c115e934bd186156d472ce109f6c46e517179" -> "sha256:7d7506b5ab8deede19c6039ee5b45ebc1336ca30eac58f5c4aeaaefc20145e61" [label=""];
  "sha256:7d7506b5ab8deede19c6039ee5b45ebc1336ca30eac58f5c4aeaaefc20145e61" -> "sha256:3bb723c1631457c547973b0cc0447afd3516184cb0e5f46201c36f1b0152ff57" [label=""];
  "sha256:3bb723c1631457c547973b0cc0447afd3516184cb0e5f46201c36f1b0152ff57" -> "sha256:4d4033c5571859e267c6a0ec5ffafb4ef996e594c2308ed81d11555cc04dd3da" [label=""];
  "sha256:cc6c4281e3ef54c69ad37245b36688a245517eba96bc9adf417846b0b6116caf" -> "sha256:4d4033c5571859e267c6a0ec5ffafb4ef996e594c2308ed81d11555cc04dd3da" [label=""];
  "sha256:4d4033c5571859e267c6a0ec5ffafb4ef996e594c2308ed81d11555cc04dd3da" -> "sha256:c2277258c503d060ff070b795bf83fadd15d528936a460399a2a27a88d689a1c" [label=""];
  "sha256:c2277258c503d060ff070b795bf83fadd15d528936a460399a2a27a88d689a1c" -> "sha256:f932fd4b716a2ab7b236955309dc9b613d77cec9d42742d59337a4148f786497" [label=""];
  "sha256:f932fd4b716a2ab7b236955309dc9b613d77cec9d42742d59337a4148f786497" -> "sha256:243be0c7bba24a7cfb6f5cb0859112287b962654a80996dac5cb3a40fae51142" [label=""];
}

