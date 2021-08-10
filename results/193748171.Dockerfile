[app/sources/193748171.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:9444b4267fadadbb1a10f00b5d2a127358503d7c21b4147e1b0384be51f2e760" [label="/bin/sh -c apt-get update && apt-get install -y build-essential git libopenblas-dev liblapack-dev libopencv-dev" shape="box"];
  "sha256:fa9fdffa258ae5e11f28230915324817a1f663195e1c9c1dd6535fd623afcd98" [label="/bin/sh -c git clone --recursive https://github.com/dmlc/mxnet/ && cd mxnet &&     cp make/config.mk . &&     echo \"USE_BLAS=openblas\" >>config.mk &&     make -j$(nproc)" shape="box"];
  "sha256:c986de5e53de58a31521bab79fd072742bcdcbc83c10fe2f45e749f115b62f27" [label="/bin/sh -c apt-get install -y python-numpy wget unzip" shape="box"];
  "sha256:92cbe0d1f0ff3067016c608b01bc92d1a096eb97ef1e265cc194e4646867665f" [label="/bin/sh -c apt-get update && apt-get install -y     doxygen     build-essential     git     python-pip" shape="box"];
  "sha256:a9c34a94e42fbf5ffd0a747b025c62d6155ddad5ecd588e8f8f8747fe99b4a32" [label="/bin/sh -c pip install sphinx==1.3.5 CommonMark==0.5.4 breathe mock==1.0.1 recommonmark" shape="box"];
  "sha256:12cc7e9afc81a630d6a42ca493159307bc7557834b8d8a6e028aec249c2eedcb" [label="mkdir{path=/opt/mxnet/docs}" shape="note"];
  "sha256:aea36b6927fd2e4e0d54285083deec1d72e5dbddf7fa784c70cde4c1f2e36a9e" [label="local://context" shape="ellipse"];
  "sha256:e4c8984c92cb4c95eec45f21d371f760a25613921d626f733e176ac3bc7b4887" [label="copy{src=/, dest=/opt/mxnet/docs}" shape="note"];
  "sha256:ff470b0d3870da2b57cb5be55f36ddf8bca6c7a48bfdc974cd2f2a16a9793bd3" [label="sha256:ff470b0d3870da2b57cb5be55f36ddf8bca6c7a48bfdc974cd2f2a16a9793bd3" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:9444b4267fadadbb1a10f00b5d2a127358503d7c21b4147e1b0384be51f2e760" [label=""];
  "sha256:9444b4267fadadbb1a10f00b5d2a127358503d7c21b4147e1b0384be51f2e760" -> "sha256:fa9fdffa258ae5e11f28230915324817a1f663195e1c9c1dd6535fd623afcd98" [label=""];
  "sha256:fa9fdffa258ae5e11f28230915324817a1f663195e1c9c1dd6535fd623afcd98" -> "sha256:c986de5e53de58a31521bab79fd072742bcdcbc83c10fe2f45e749f115b62f27" [label=""];
  "sha256:c986de5e53de58a31521bab79fd072742bcdcbc83c10fe2f45e749f115b62f27" -> "sha256:92cbe0d1f0ff3067016c608b01bc92d1a096eb97ef1e265cc194e4646867665f" [label=""];
  "sha256:92cbe0d1f0ff3067016c608b01bc92d1a096eb97ef1e265cc194e4646867665f" -> "sha256:a9c34a94e42fbf5ffd0a747b025c62d6155ddad5ecd588e8f8f8747fe99b4a32" [label=""];
  "sha256:a9c34a94e42fbf5ffd0a747b025c62d6155ddad5ecd588e8f8f8747fe99b4a32" -> "sha256:12cc7e9afc81a630d6a42ca493159307bc7557834b8d8a6e028aec249c2eedcb" [label=""];
  "sha256:12cc7e9afc81a630d6a42ca493159307bc7557834b8d8a6e028aec249c2eedcb" -> "sha256:e4c8984c92cb4c95eec45f21d371f760a25613921d626f733e176ac3bc7b4887" [label=""];
  "sha256:aea36b6927fd2e4e0d54285083deec1d72e5dbddf7fa784c70cde4c1f2e36a9e" -> "sha256:e4c8984c92cb4c95eec45f21d371f760a25613921d626f733e176ac3bc7b4887" [label=""];
  "sha256:e4c8984c92cb4c95eec45f21d371f760a25613921d626f733e176ac3bc7b4887" -> "sha256:ff470b0d3870da2b57cb5be55f36ddf8bca6c7a48bfdc974cd2f2a16a9793bd3" [label=""];
}

