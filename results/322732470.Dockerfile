[app/sources/322732470.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:f974d0de11720ddde4e394343519bd9a3e80f6db98b72e4c1835a6faee9a16a7" [label="/bin/sh -c apt-get update && apt-get -y install python3-pip" shape="box"];
  "sha256:ef5eec2623d0d94598e83449ba5e96bfa6260657aea3a86a26185cb0ea20d69c" [label="/bin/sh -c apt-get update && apt-get -y install git" shape="box"];
  "sha256:ca8c6ee6a03b0dff889105cdeae2b1cd1be056e2274db53a0478ee0a9f4700a7" [label="/bin/sh -c apt-get update && apt-get -y install linux-tools-aws" shape="box"];
  "sha256:483c353721dafd6d4ab0c787c894e3da11b1e00ef4858ede27a8d2259ba782c3" [label="/bin/sh -c apt-get update && apt-get -y install pypy" shape="box"];
  "sha256:be39bdee435389ea569bbe1690911b8e97336664b79cf711a5d6c2206d959898" [label="/bin/sh -c apt-get update && apt-get -y install apt-utils" shape="box"];
  "sha256:8dbfcf16a84e3a0a181aa1ac292e0e128164f8bb2d5ed6e12c4da0227eb6296d" [label="/bin/sh -c apt-get update && apt-get -y install nfs-common" shape="box"];
  "sha256:e7978b0fc5e451e3732ae3060c7303819b14ba3391f53affa6db614b049ee9a5" [label="/bin/sh -c cd opt && git clone https://github.com/rwth-i6/sisyphus.git" shape="box"];
  "sha256:41db83666a1563db6b97d57b854ce73ec711296e1c0fdc67d8a2f65d3104b2e0" [label="/bin/sh -c cp -a /opt/sisyphus/sisyphus /usr/local/lib/python3.6/dist-packages/" shape="box"];
  "sha256:1cc54e522e2773057e72e12ac1184721fb0de5b35dfcb5fb7745fdfdae9c5d47" [label="/bin/sh -c cp -a /opt/sisyphus/sis /usr/local/bin/" shape="box"];
  "sha256:16b7e3588f5d5964cecf659c7661ffe67beffef1a55e1b4383170a946bcb794d" [label="/bin/sh -c pip3 install ipython flask fusepy Sphinx" shape="box"];
  "sha256:a5a76912e6da8d58095c704b0aca2851aabb98b1982e0ad131fa46c3b02ca767" [label="/bin/sh -c pip3 install psutil" shape="box"];
  "sha256:e1585114af867e486dfd502179f0b687e2495111da2ebb04b801ae470c3d8073" [label="/bin/sh -c mkdir /efs" shape="box"];
  "sha256:4fec0f9fdf3fc26dad8e60beb89b846c052e4bcbbbe6a9c8a36eb29a8507d06b" [label="local://context" shape="ellipse"];
  "sha256:893d5779a625032a3ea8f16626ee1f1335cae02d1d1e3a2258a20c4834aedd85" [label="copy{src=/startup.sh, dest=/root/startup.sh}" shape="note"];
  "sha256:c75cc2b8e667ef0ff59fddbca0f92c91b592a0ab6bbd81181209b354e8966bc7" [label="sha256:c75cc2b8e667ef0ff59fddbca0f92c91b592a0ab6bbd81181209b354e8966bc7" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:f974d0de11720ddde4e394343519bd9a3e80f6db98b72e4c1835a6faee9a16a7" [label=""];
  "sha256:f974d0de11720ddde4e394343519bd9a3e80f6db98b72e4c1835a6faee9a16a7" -> "sha256:ef5eec2623d0d94598e83449ba5e96bfa6260657aea3a86a26185cb0ea20d69c" [label=""];
  "sha256:ef5eec2623d0d94598e83449ba5e96bfa6260657aea3a86a26185cb0ea20d69c" -> "sha256:ca8c6ee6a03b0dff889105cdeae2b1cd1be056e2274db53a0478ee0a9f4700a7" [label=""];
  "sha256:ca8c6ee6a03b0dff889105cdeae2b1cd1be056e2274db53a0478ee0a9f4700a7" -> "sha256:483c353721dafd6d4ab0c787c894e3da11b1e00ef4858ede27a8d2259ba782c3" [label=""];
  "sha256:483c353721dafd6d4ab0c787c894e3da11b1e00ef4858ede27a8d2259ba782c3" -> "sha256:be39bdee435389ea569bbe1690911b8e97336664b79cf711a5d6c2206d959898" [label=""];
  "sha256:be39bdee435389ea569bbe1690911b8e97336664b79cf711a5d6c2206d959898" -> "sha256:8dbfcf16a84e3a0a181aa1ac292e0e128164f8bb2d5ed6e12c4da0227eb6296d" [label=""];
  "sha256:8dbfcf16a84e3a0a181aa1ac292e0e128164f8bb2d5ed6e12c4da0227eb6296d" -> "sha256:e7978b0fc5e451e3732ae3060c7303819b14ba3391f53affa6db614b049ee9a5" [label=""];
  "sha256:e7978b0fc5e451e3732ae3060c7303819b14ba3391f53affa6db614b049ee9a5" -> "sha256:41db83666a1563db6b97d57b854ce73ec711296e1c0fdc67d8a2f65d3104b2e0" [label=""];
  "sha256:41db83666a1563db6b97d57b854ce73ec711296e1c0fdc67d8a2f65d3104b2e0" -> "sha256:1cc54e522e2773057e72e12ac1184721fb0de5b35dfcb5fb7745fdfdae9c5d47" [label=""];
  "sha256:1cc54e522e2773057e72e12ac1184721fb0de5b35dfcb5fb7745fdfdae9c5d47" -> "sha256:16b7e3588f5d5964cecf659c7661ffe67beffef1a55e1b4383170a946bcb794d" [label=""];
  "sha256:16b7e3588f5d5964cecf659c7661ffe67beffef1a55e1b4383170a946bcb794d" -> "sha256:a5a76912e6da8d58095c704b0aca2851aabb98b1982e0ad131fa46c3b02ca767" [label=""];
  "sha256:a5a76912e6da8d58095c704b0aca2851aabb98b1982e0ad131fa46c3b02ca767" -> "sha256:e1585114af867e486dfd502179f0b687e2495111da2ebb04b801ae470c3d8073" [label=""];
  "sha256:e1585114af867e486dfd502179f0b687e2495111da2ebb04b801ae470c3d8073" -> "sha256:893d5779a625032a3ea8f16626ee1f1335cae02d1d1e3a2258a20c4834aedd85" [label=""];
  "sha256:4fec0f9fdf3fc26dad8e60beb89b846c052e4bcbbbe6a9c8a36eb29a8507d06b" -> "sha256:893d5779a625032a3ea8f16626ee1f1335cae02d1d1e3a2258a20c4834aedd85" [label=""];
  "sha256:893d5779a625032a3ea8f16626ee1f1335cae02d1d1e3a2258a20c4834aedd85" -> "sha256:c75cc2b8e667ef0ff59fddbca0f92c91b592a0ab6bbd81181209b354e8966bc7" [label=""];
}

