[app/sources/321641194.Dockerfile]
digraph {
  "sha256:8a626abe7f38137590ab4eabff5a6538645af508772409be1e826231b96f6787" [label="local://context" shape="ellipse"];
  "sha256:efb52ec8834203f5a78e6f83389cfc5a2b0424e00a0d69658508e04c8c32c34f" [label="docker-image://docker.io/nvidia/cuda:9.0-cudnn7-devel" shape="ellipse"];
  "sha256:dc7a02f63ff6d89440203ce4ce1d9823b5b7d1f465ca5ba4ee4ae93a5eb8de6a" [label="/bin/sh -c apt-get update --fix-missing" shape="box"];
  "sha256:753d43fa30085163765fe982e399aa76262a077b707cbf6b991c933e00835940" [label="copy{src=/install/ubuntu_install_core.sh, dest=/install/ubuntu_install_core.sh}" shape="note"];
  "sha256:87252312939129d9aac8338997a49d011a1ab75ab009d48a32567af9ab995664" [label="/bin/sh -c bash /install/ubuntu_install_core.sh" shape="box"];
  "sha256:5ee5731075c5b43ef0fa4e20761ea1caec7e1554a034f21219df1af3fbfeeebe" [label="copy{src=/install/ubuntu_install_build.sh, dest=/install/ubuntu_install_build.sh}" shape="note"];
  "sha256:e540becfa2f8ee75e5c83040d3ad1b34edb0d6981b108fe840ff3c0a24688fae" [label="/bin/sh -c bash /install/ubuntu_install_build.sh" shape="box"];
  "sha256:48a81916c9d2262f9eef29dcbe694d00208440be2441f93f2ef06a88d85c0bb6" [label="copy{src=/install/ubuntu_install_java.sh, dest=/install/ubuntu_install_java.sh}" shape="note"];
  "sha256:8cc8cdcbbc98378cdd359871f480229deec75d18a92855c94870a67dc5e4278f" [label="/bin/sh -c bash /install/ubuntu_install_java.sh" shape="box"];
  "sha256:83fefbbf2c23fda7caf626fa7d8312dc74d6e3e77e1023e548f8139eb6767814" [label="copy{src=/install/ubuntu_install_antlr.sh, dest=/install/ubuntu_install_antlr.sh}" shape="note"];
  "sha256:c75851885aa69308711bbd7a54e4786abc78109fabea280e2f27b55b2a7b7ee3" [label="/bin/sh -c bash /install/ubuntu_install_antlr.sh" shape="box"];
  "sha256:88e3cdeb2b0f0647169135bab4c67b2811a13bb0437f88ed9f99c590c1504b38" [label="copy{src=/install/ubuntu_install_python.sh, dest=/install/ubuntu_install_python.sh}" shape="note"];
  "sha256:edf9ac4ab51a652a778785fb09f676c49c0ae5f75cfcfbac866c9f619f2beec8" [label="/bin/sh -c bash /install/ubuntu_install_python.sh" shape="box"];
  "sha256:6a01ad4c8f66a26e88c655fb2b4974bd0ba02f20dcedb7624c93bcb59bfae5c2" [label="copy{src=/install/ubuntu_install_python_package.sh, dest=/install/ubuntu_install_python_package.sh}" shape="note"];
  "sha256:2364d937ac4ba95333299affe05a9d874972c12a3b181c9b5ea9934fbd6b7e31" [label="/bin/sh -c bash /install/ubuntu_install_python_package.sh" shape="box"];
  "sha256:97756ec009bfbd8d70859bde94ac07731a2c3830b82c48cc2f8749e4086e9f0b" [label="copy{src=/install/ubuntu_install_torch.sh, dest=/install/ubuntu_install_torch.sh}" shape="note"];
  "sha256:82b68437f856ea2040245dc925fc18049a4472426c26d637d698e9164c99f7a5" [label="/bin/sh -c bash /install/ubuntu_install_torch.sh" shape="box"];
  "sha256:b26c47a250874de406aa2cf84f407353fe2cf3fc8eadfee362baed59c97c72f2" [label="copy{src=/install/ubuntu_install_mxnet_gpu.sh, dest=/install/ubuntu_install_mxnet_gpu.sh}" shape="note"];
  "sha256:12afd5907277c08e7c8cadf3a3805fdbd82f27a2aafb16196846655fc26667de" [label="/bin/sh -c bash /install/ubuntu_install_mxnet_gpu.sh" shape="box"];
  "sha256:171ae843e0da2fad8ddf69c72768634755b2fe31e96e5497e5505d79ed487fb3" [label="sha256:171ae843e0da2fad8ddf69c72768634755b2fe31e96e5497e5505d79ed487fb3" shape="plaintext"];
  "sha256:efb52ec8834203f5a78e6f83389cfc5a2b0424e00a0d69658508e04c8c32c34f" -> "sha256:dc7a02f63ff6d89440203ce4ce1d9823b5b7d1f465ca5ba4ee4ae93a5eb8de6a" [label=""];
  "sha256:dc7a02f63ff6d89440203ce4ce1d9823b5b7d1f465ca5ba4ee4ae93a5eb8de6a" -> "sha256:753d43fa30085163765fe982e399aa76262a077b707cbf6b991c933e00835940" [label=""];
  "sha256:8a626abe7f38137590ab4eabff5a6538645af508772409be1e826231b96f6787" -> "sha256:753d43fa30085163765fe982e399aa76262a077b707cbf6b991c933e00835940" [label=""];
  "sha256:753d43fa30085163765fe982e399aa76262a077b707cbf6b991c933e00835940" -> "sha256:87252312939129d9aac8338997a49d011a1ab75ab009d48a32567af9ab995664" [label=""];
  "sha256:87252312939129d9aac8338997a49d011a1ab75ab009d48a32567af9ab995664" -> "sha256:5ee5731075c5b43ef0fa4e20761ea1caec7e1554a034f21219df1af3fbfeeebe" [label=""];
  "sha256:8a626abe7f38137590ab4eabff5a6538645af508772409be1e826231b96f6787" -> "sha256:5ee5731075c5b43ef0fa4e20761ea1caec7e1554a034f21219df1af3fbfeeebe" [label=""];
  "sha256:5ee5731075c5b43ef0fa4e20761ea1caec7e1554a034f21219df1af3fbfeeebe" -> "sha256:e540becfa2f8ee75e5c83040d3ad1b34edb0d6981b108fe840ff3c0a24688fae" [label=""];
  "sha256:e540becfa2f8ee75e5c83040d3ad1b34edb0d6981b108fe840ff3c0a24688fae" -> "sha256:48a81916c9d2262f9eef29dcbe694d00208440be2441f93f2ef06a88d85c0bb6" [label=""];
  "sha256:8a626abe7f38137590ab4eabff5a6538645af508772409be1e826231b96f6787" -> "sha256:48a81916c9d2262f9eef29dcbe694d00208440be2441f93f2ef06a88d85c0bb6" [label=""];
  "sha256:48a81916c9d2262f9eef29dcbe694d00208440be2441f93f2ef06a88d85c0bb6" -> "sha256:8cc8cdcbbc98378cdd359871f480229deec75d18a92855c94870a67dc5e4278f" [label=""];
  "sha256:8cc8cdcbbc98378cdd359871f480229deec75d18a92855c94870a67dc5e4278f" -> "sha256:83fefbbf2c23fda7caf626fa7d8312dc74d6e3e77e1023e548f8139eb6767814" [label=""];
  "sha256:8a626abe7f38137590ab4eabff5a6538645af508772409be1e826231b96f6787" -> "sha256:83fefbbf2c23fda7caf626fa7d8312dc74d6e3e77e1023e548f8139eb6767814" [label=""];
  "sha256:83fefbbf2c23fda7caf626fa7d8312dc74d6e3e77e1023e548f8139eb6767814" -> "sha256:c75851885aa69308711bbd7a54e4786abc78109fabea280e2f27b55b2a7b7ee3" [label=""];
  "sha256:c75851885aa69308711bbd7a54e4786abc78109fabea280e2f27b55b2a7b7ee3" -> "sha256:88e3cdeb2b0f0647169135bab4c67b2811a13bb0437f88ed9f99c590c1504b38" [label=""];
  "sha256:8a626abe7f38137590ab4eabff5a6538645af508772409be1e826231b96f6787" -> "sha256:88e3cdeb2b0f0647169135bab4c67b2811a13bb0437f88ed9f99c590c1504b38" [label=""];
  "sha256:88e3cdeb2b0f0647169135bab4c67b2811a13bb0437f88ed9f99c590c1504b38" -> "sha256:edf9ac4ab51a652a778785fb09f676c49c0ae5f75cfcfbac866c9f619f2beec8" [label=""];
  "sha256:edf9ac4ab51a652a778785fb09f676c49c0ae5f75cfcfbac866c9f619f2beec8" -> "sha256:6a01ad4c8f66a26e88c655fb2b4974bd0ba02f20dcedb7624c93bcb59bfae5c2" [label=""];
  "sha256:8a626abe7f38137590ab4eabff5a6538645af508772409be1e826231b96f6787" -> "sha256:6a01ad4c8f66a26e88c655fb2b4974bd0ba02f20dcedb7624c93bcb59bfae5c2" [label=""];
  "sha256:6a01ad4c8f66a26e88c655fb2b4974bd0ba02f20dcedb7624c93bcb59bfae5c2" -> "sha256:2364d937ac4ba95333299affe05a9d874972c12a3b181c9b5ea9934fbd6b7e31" [label=""];
  "sha256:2364d937ac4ba95333299affe05a9d874972c12a3b181c9b5ea9934fbd6b7e31" -> "sha256:97756ec009bfbd8d70859bde94ac07731a2c3830b82c48cc2f8749e4086e9f0b" [label=""];
  "sha256:8a626abe7f38137590ab4eabff5a6538645af508772409be1e826231b96f6787" -> "sha256:97756ec009bfbd8d70859bde94ac07731a2c3830b82c48cc2f8749e4086e9f0b" [label=""];
  "sha256:97756ec009bfbd8d70859bde94ac07731a2c3830b82c48cc2f8749e4086e9f0b" -> "sha256:82b68437f856ea2040245dc925fc18049a4472426c26d637d698e9164c99f7a5" [label=""];
  "sha256:82b68437f856ea2040245dc925fc18049a4472426c26d637d698e9164c99f7a5" -> "sha256:b26c47a250874de406aa2cf84f407353fe2cf3fc8eadfee362baed59c97c72f2" [label=""];
  "sha256:8a626abe7f38137590ab4eabff5a6538645af508772409be1e826231b96f6787" -> "sha256:b26c47a250874de406aa2cf84f407353fe2cf3fc8eadfee362baed59c97c72f2" [label=""];
  "sha256:b26c47a250874de406aa2cf84f407353fe2cf3fc8eadfee362baed59c97c72f2" -> "sha256:12afd5907277c08e7c8cadf3a3805fdbd82f27a2aafb16196846655fc26667de" [label=""];
  "sha256:12afd5907277c08e7c8cadf3a3805fdbd82f27a2aafb16196846655fc26667de" -> "sha256:171ae843e0da2fad8ddf69c72768634755b2fe31e96e5497e5505d79ed487fb3" [label=""];
}
