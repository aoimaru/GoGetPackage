[app/sources/159609790.Dockerfile]
digraph {
  "sha256:634e0e7bcd7c70f01c6c351879ffdab9e58e2a4aaa269adfceba3a234b819de2" [label="docker-image://docker.io/gbecedillas/pyalgotrade:0.20-py27" shape="ellipse"];
  "sha256:a14a96fe69a63679c8ed568b874f49fa7b91de7bacf40db779e9b56a9ba2cf13" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:4102dab7e058f100a9a3e44ae946f83514c4d532dca76ff00ed6b38bb13e88f3" [label="/bin/sh -c pip install tox" shape="box"];
  "sha256:43a9c1b8dfd6974b9937648b3083214f22a4ab518ecf0d7027665f9f7fb33126" [label="/bin/sh -c apt-get install -y python-tk" shape="box"];
  "sha256:01822e7a780ade506757591ebf7cfd51be2a18940be87861e4eca8f45ae62206" [label="/bin/sh -c pip freeze" shape="box"];
  "sha256:b303959c2ab7752318ab365875cdfb7542348fedd7e8feb96e5a6b62076252bf" [label="/bin/sh -c mkdir /tmp/pyalgotrade" shape="box"];
  "sha256:e0076a940dc3526a2781967bdcc2035b29d61a21ceea0f0d30dc1fd8d369287c" [label="local://context" shape="ellipse"];
  "sha256:3b8f19f69bfb9210d6c3a576ec8bf00a812a7420d03dbbe0db6578559990c79f" [label="copy{src=/setup.py, dest=/tmp/pyalgotrade/}" shape="note"];
  "sha256:4fb378e536b4d83c45c6c6128ee0769b504e5d3c5fb5741dc7119c350745d861" [label="copy{src=/travis/run_tests.sh, dest=/tmp/pyalgotrade/}" shape="note"];
  "sha256:0b367206b6cfc32ce59189582b69200227a0ebffec17923de945888b51ddcf79" [label="copy{src=/coverage.cfg, dest=/tmp/pyalgotrade/}" shape="note"];
  "sha256:94d59ff5b412b1aaeb02208f8ada3a7065ab1230f916f7083698bcdd6e4b6e7f" [label="copy{src=/tox.ini, dest=/tmp/pyalgotrade/}" shape="note"];
  "sha256:77b7fe728525f2f76e70631c54b44b8d47882dc997fc0c1dc25cc2dcca6261c4" [label="copy{src=/pyalgotrade, dest=/tmp/pyalgotrade/pyalgotrade}" shape="note"];
  "sha256:19e08df596d9a15392ba71ac09c58723130ab0f7f34943324d4cd8d7f0de4eb1" [label="copy{src=/testcases, dest=/tmp/pyalgotrade/testcases}" shape="note"];
  "sha256:61103197ec02d715bb2ccd0573906da6d33e1115de5fce5f02aa5c0fdaf196a2" [label="copy{src=/samples, dest=/tmp/pyalgotrade/samples}" shape="note"];
  "sha256:b14324fd24792d673ad8f3645e4d2595c5c0aedc8ecf8ba754e38e5743032892" [label="/bin/sh -c pip uninstall -y pyalgotrade" shape="box"];
  "sha256:747cc3a5fc434b0b7fd1c63412cdf7c91edb42cf128e485293bebe69520ddb01" [label="sha256:747cc3a5fc434b0b7fd1c63412cdf7c91edb42cf128e485293bebe69520ddb01" shape="plaintext"];
  "sha256:634e0e7bcd7c70f01c6c351879ffdab9e58e2a4aaa269adfceba3a234b819de2" -> "sha256:a14a96fe69a63679c8ed568b874f49fa7b91de7bacf40db779e9b56a9ba2cf13" [label=""];
  "sha256:a14a96fe69a63679c8ed568b874f49fa7b91de7bacf40db779e9b56a9ba2cf13" -> "sha256:4102dab7e058f100a9a3e44ae946f83514c4d532dca76ff00ed6b38bb13e88f3" [label=""];
  "sha256:4102dab7e058f100a9a3e44ae946f83514c4d532dca76ff00ed6b38bb13e88f3" -> "sha256:43a9c1b8dfd6974b9937648b3083214f22a4ab518ecf0d7027665f9f7fb33126" [label=""];
  "sha256:43a9c1b8dfd6974b9937648b3083214f22a4ab518ecf0d7027665f9f7fb33126" -> "sha256:01822e7a780ade506757591ebf7cfd51be2a18940be87861e4eca8f45ae62206" [label=""];
  "sha256:01822e7a780ade506757591ebf7cfd51be2a18940be87861e4eca8f45ae62206" -> "sha256:b303959c2ab7752318ab365875cdfb7542348fedd7e8feb96e5a6b62076252bf" [label=""];
  "sha256:b303959c2ab7752318ab365875cdfb7542348fedd7e8feb96e5a6b62076252bf" -> "sha256:3b8f19f69bfb9210d6c3a576ec8bf00a812a7420d03dbbe0db6578559990c79f" [label=""];
  "sha256:e0076a940dc3526a2781967bdcc2035b29d61a21ceea0f0d30dc1fd8d369287c" -> "sha256:3b8f19f69bfb9210d6c3a576ec8bf00a812a7420d03dbbe0db6578559990c79f" [label=""];
  "sha256:3b8f19f69bfb9210d6c3a576ec8bf00a812a7420d03dbbe0db6578559990c79f" -> "sha256:4fb378e536b4d83c45c6c6128ee0769b504e5d3c5fb5741dc7119c350745d861" [label=""];
  "sha256:e0076a940dc3526a2781967bdcc2035b29d61a21ceea0f0d30dc1fd8d369287c" -> "sha256:4fb378e536b4d83c45c6c6128ee0769b504e5d3c5fb5741dc7119c350745d861" [label=""];
  "sha256:4fb378e536b4d83c45c6c6128ee0769b504e5d3c5fb5741dc7119c350745d861" -> "sha256:0b367206b6cfc32ce59189582b69200227a0ebffec17923de945888b51ddcf79" [label=""];
  "sha256:e0076a940dc3526a2781967bdcc2035b29d61a21ceea0f0d30dc1fd8d369287c" -> "sha256:0b367206b6cfc32ce59189582b69200227a0ebffec17923de945888b51ddcf79" [label=""];
  "sha256:0b367206b6cfc32ce59189582b69200227a0ebffec17923de945888b51ddcf79" -> "sha256:94d59ff5b412b1aaeb02208f8ada3a7065ab1230f916f7083698bcdd6e4b6e7f" [label=""];
  "sha256:e0076a940dc3526a2781967bdcc2035b29d61a21ceea0f0d30dc1fd8d369287c" -> "sha256:94d59ff5b412b1aaeb02208f8ada3a7065ab1230f916f7083698bcdd6e4b6e7f" [label=""];
  "sha256:94d59ff5b412b1aaeb02208f8ada3a7065ab1230f916f7083698bcdd6e4b6e7f" -> "sha256:77b7fe728525f2f76e70631c54b44b8d47882dc997fc0c1dc25cc2dcca6261c4" [label=""];
  "sha256:e0076a940dc3526a2781967bdcc2035b29d61a21ceea0f0d30dc1fd8d369287c" -> "sha256:77b7fe728525f2f76e70631c54b44b8d47882dc997fc0c1dc25cc2dcca6261c4" [label=""];
  "sha256:77b7fe728525f2f76e70631c54b44b8d47882dc997fc0c1dc25cc2dcca6261c4" -> "sha256:19e08df596d9a15392ba71ac09c58723130ab0f7f34943324d4cd8d7f0de4eb1" [label=""];
  "sha256:e0076a940dc3526a2781967bdcc2035b29d61a21ceea0f0d30dc1fd8d369287c" -> "sha256:19e08df596d9a15392ba71ac09c58723130ab0f7f34943324d4cd8d7f0de4eb1" [label=""];
  "sha256:19e08df596d9a15392ba71ac09c58723130ab0f7f34943324d4cd8d7f0de4eb1" -> "sha256:61103197ec02d715bb2ccd0573906da6d33e1115de5fce5f02aa5c0fdaf196a2" [label=""];
  "sha256:e0076a940dc3526a2781967bdcc2035b29d61a21ceea0f0d30dc1fd8d369287c" -> "sha256:61103197ec02d715bb2ccd0573906da6d33e1115de5fce5f02aa5c0fdaf196a2" [label=""];
  "sha256:61103197ec02d715bb2ccd0573906da6d33e1115de5fce5f02aa5c0fdaf196a2" -> "sha256:b14324fd24792d673ad8f3645e4d2595c5c0aedc8ecf8ba754e38e5743032892" [label=""];
  "sha256:b14324fd24792d673ad8f3645e4d2595c5c0aedc8ecf8ba754e38e5743032892" -> "sha256:747cc3a5fc434b0b7fd1c63412cdf7c91edb42cf128e485293bebe69520ddb01" [label=""];
}

