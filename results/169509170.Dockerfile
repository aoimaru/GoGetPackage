[app/sources/169509170.Dockerfile]
digraph {
  "sha256:caf1445ec4687dd18abc564be9084d2720d6a8a7d003d5a7c514a7942e83ac5c" [label="docker-image://docker.io/library/node:0.10.38" shape="ellipse"];
  "sha256:07138971a277ab42aef1617b6e4a71aad4291ff452d84a620e573755f2a59d61" [label="/bin/sh -c mkdir /src" shape="box"];
  "sha256:d319eb53a0f9ea218c547fa0ba3c20488a584b2d1e6ccbecb5a4e165744b6ab1" [label="/bin/sh -c npm install express-generator -g" shape="box"];
  "sha256:27a1d09882d78c7d841c43d41b60fc6e99790a04e8aaaeec580cb4a0b9bfbeb3" [label="mkdir{path=/src}" shape="note"];
  "sha256:6bbb5fc8125a4a2834fb57b15d2bacda85643d674ef7a1d3aaf76543561b8072" [label="local://context" shape="ellipse"];
  "sha256:77d57221598dc0385e2d8a648a059d974d347e3e5c8244d4ea6752f03195d391" [label="copy{src=/app/package.json, dest=/src/package.json}" shape="note"];
  "sha256:07515648d1a73d4ff9efebabd1111fbc7e51bb253df28e37fcc0213668c1fa8d" [label="/bin/sh -c npm install" shape="box"];
  "sha256:91f1f660f18923edfcff5305e09bccea3207e42bf3a1598fbebaa2fed6a00710" [label="sha256:91f1f660f18923edfcff5305e09bccea3207e42bf3a1598fbebaa2fed6a00710" shape="plaintext"];
  "sha256:caf1445ec4687dd18abc564be9084d2720d6a8a7d003d5a7c514a7942e83ac5c" -> "sha256:07138971a277ab42aef1617b6e4a71aad4291ff452d84a620e573755f2a59d61" [label=""];
  "sha256:07138971a277ab42aef1617b6e4a71aad4291ff452d84a620e573755f2a59d61" -> "sha256:d319eb53a0f9ea218c547fa0ba3c20488a584b2d1e6ccbecb5a4e165744b6ab1" [label=""];
  "sha256:d319eb53a0f9ea218c547fa0ba3c20488a584b2d1e6ccbecb5a4e165744b6ab1" -> "sha256:27a1d09882d78c7d841c43d41b60fc6e99790a04e8aaaeec580cb4a0b9bfbeb3" [label=""];
  "sha256:27a1d09882d78c7d841c43d41b60fc6e99790a04e8aaaeec580cb4a0b9bfbeb3" -> "sha256:77d57221598dc0385e2d8a648a059d974d347e3e5c8244d4ea6752f03195d391" [label=""];
  "sha256:6bbb5fc8125a4a2834fb57b15d2bacda85643d674ef7a1d3aaf76543561b8072" -> "sha256:77d57221598dc0385e2d8a648a059d974d347e3e5c8244d4ea6752f03195d391" [label=""];
  "sha256:77d57221598dc0385e2d8a648a059d974d347e3e5c8244d4ea6752f03195d391" -> "sha256:07515648d1a73d4ff9efebabd1111fbc7e51bb253df28e37fcc0213668c1fa8d" [label=""];
  "sha256:07515648d1a73d4ff9efebabd1111fbc7e51bb253df28e37fcc0213668c1fa8d" -> "sha256:91f1f660f18923edfcff5305e09bccea3207e42bf3a1598fbebaa2fed6a00710" [label=""];
}

