[app/sources/192605878.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:79a0f03a3419407b8f23ed38394513bce498d1ff748536eca952a7175fcde82d" [label="/bin/sh -c yum update -y" shape="box"];
  "sha256:e969859c15079c2550cb1a57a3efdcfaf2a178c8aa872cfd8ece60e84020fd20" [label="/bin/sh -c yum groupinstall -y \"C Development Tools and Libraries\" \"Development Tools\"" shape="box"];
  "sha256:a51ca4b31f3ef319ea03126d297bf83fccec8793de5a6f186e172eb00634eaac" [label="/bin/sh -c yum install -y     git bzip2 wget subversion sox     gcc-c++ make automake autoconf zlib-devel atlas-static     python python3" shape="box"];
  "sha256:4d4f13d80294d1c79142837a8a65f8eda90a64cb922d3c33aeb6ae475abb055f" [label="mkdir{path=/usr/local}" shape="note"];
  "sha256:ee2a2e1d185407507e21eeca7d4545b140d9c8cf68f3af0eccfd8b0784d2990f" [label="/bin/sh -c git clone https://github.com/kaldi-asr/kaldi.git" shape="box"];
  "sha256:98c9d79d8a18b1bcf1c2e5b1a417042520cefa486237e6effa990640c57dbd03" [label="mkdir{path=/usr/local/kaldi/tools}" shape="note"];
  "sha256:8b20ac1790df11d90c9968a71ab6271f680bb083517b0dc6db3c42fc5e01c5e4" [label="/bin/sh -c extras/check_dependencies.sh" shape="box"];
  "sha256:25c28358d1b0f4d7587c1a66ef074f3281419f29503506c58e7a87ba4adc6426" [label="/bin/sh -c make -j $CPU_CORE" shape="box"];
  "sha256:936ec5480e425a182621b20bf732ca5fbf3db534c0ea502de0103bc0b4015a5f" [label="mkdir{path=/usr/local/kaldi/src}" shape="note"];
  "sha256:abc26f1b6f30b28d0771fc3e1bba49088162d13cb4dc66e5f6a08682a1a278c8" [label="/bin/sh -c ./configure && make depend -j $CPU_CORE && make -j $CPU_CORE" shape="box"];
  "sha256:8ea439e9c92667738529370972f34e5ebe133f5953f5e78c4c8a8b02570622f7" [label="sha256:8ea439e9c92667738529370972f34e5ebe133f5953f5e78c4c8a8b02570622f7" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:79a0f03a3419407b8f23ed38394513bce498d1ff748536eca952a7175fcde82d" [label=""];
  "sha256:79a0f03a3419407b8f23ed38394513bce498d1ff748536eca952a7175fcde82d" -> "sha256:e969859c15079c2550cb1a57a3efdcfaf2a178c8aa872cfd8ece60e84020fd20" [label=""];
  "sha256:e969859c15079c2550cb1a57a3efdcfaf2a178c8aa872cfd8ece60e84020fd20" -> "sha256:a51ca4b31f3ef319ea03126d297bf83fccec8793de5a6f186e172eb00634eaac" [label=""];
  "sha256:a51ca4b31f3ef319ea03126d297bf83fccec8793de5a6f186e172eb00634eaac" -> "sha256:4d4f13d80294d1c79142837a8a65f8eda90a64cb922d3c33aeb6ae475abb055f" [label=""];
  "sha256:4d4f13d80294d1c79142837a8a65f8eda90a64cb922d3c33aeb6ae475abb055f" -> "sha256:ee2a2e1d185407507e21eeca7d4545b140d9c8cf68f3af0eccfd8b0784d2990f" [label=""];
  "sha256:ee2a2e1d185407507e21eeca7d4545b140d9c8cf68f3af0eccfd8b0784d2990f" -> "sha256:98c9d79d8a18b1bcf1c2e5b1a417042520cefa486237e6effa990640c57dbd03" [label=""];
  "sha256:98c9d79d8a18b1bcf1c2e5b1a417042520cefa486237e6effa990640c57dbd03" -> "sha256:8b20ac1790df11d90c9968a71ab6271f680bb083517b0dc6db3c42fc5e01c5e4" [label=""];
  "sha256:8b20ac1790df11d90c9968a71ab6271f680bb083517b0dc6db3c42fc5e01c5e4" -> "sha256:25c28358d1b0f4d7587c1a66ef074f3281419f29503506c58e7a87ba4adc6426" [label=""];
  "sha256:25c28358d1b0f4d7587c1a66ef074f3281419f29503506c58e7a87ba4adc6426" -> "sha256:936ec5480e425a182621b20bf732ca5fbf3db534c0ea502de0103bc0b4015a5f" [label=""];
  "sha256:936ec5480e425a182621b20bf732ca5fbf3db534c0ea502de0103bc0b4015a5f" -> "sha256:abc26f1b6f30b28d0771fc3e1bba49088162d13cb4dc66e5f6a08682a1a278c8" [label=""];
  "sha256:abc26f1b6f30b28d0771fc3e1bba49088162d13cb4dc66e5f6a08682a1a278c8" -> "sha256:8ea439e9c92667738529370972f34e5ebe133f5953f5e78c4c8a8b02570622f7" [label=""];
}

