[app/sources/310173217.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:f084f69112ca34df0cc7f94ca125cbfc13ba3967c3eafbc3216ce0aa32c96903" [label="/bin/sh -c mkdir $HOME" shape="box"];
  "sha256:ca3bfd949533f82801c241a0b60919f049f9ce7d80551b9a22f324d64d1b0473" [label="mkdir{path=/app}" shape="note"];
  "sha256:462a9a0d1e49c28b1d3d2e44c4486754fbdc3166e030b579a061a3276333e32a" [label="/bin/sh -c apt-get update && apt-get -y install python python-virtualenv build-essential python-dev" shape="box"];
  "sha256:0838af5b4138c7e31a7a53eab518794fd6dd8dc429742ad1476aa10ce7868f27" [label="https://bootstrap.pypa.io/get-pip.py" shape="ellipse"];
  "sha256:b0951a2e9c6e344ac6b86636ee97682240fdac22c277754a410928f3af03b932" [label="copy{src=/get-pip.py, dest=/get-pip.py}" shape="note"];
  "sha256:90cb4a6a4251ce6a3b83784b34fb8372e797b394f3b57cfbda2b518aa42a2c74" [label="/bin/sh -c python /get-pip.py" shape="box"];
  "sha256:429fd73d4af01bbbce3d3ce253ac7f1d774e114ae03ff3b573aba9a4275a26b7" [label="/bin/sh -c pip install sphinx sphinx-autobuild sphinx_rtd_theme recommonmark restructuredtext-lint" shape="box"];
  "sha256:eb40f3046d9935d4addb5866902214fa30eca5043b2da5ed1652d736b04e1f1b" [label="sha256:eb40f3046d9935d4addb5866902214fa30eca5043b2da5ed1652d736b04e1f1b" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:f084f69112ca34df0cc7f94ca125cbfc13ba3967c3eafbc3216ce0aa32c96903" [label=""];
  "sha256:f084f69112ca34df0cc7f94ca125cbfc13ba3967c3eafbc3216ce0aa32c96903" -> "sha256:ca3bfd949533f82801c241a0b60919f049f9ce7d80551b9a22f324d64d1b0473" [label=""];
  "sha256:ca3bfd949533f82801c241a0b60919f049f9ce7d80551b9a22f324d64d1b0473" -> "sha256:462a9a0d1e49c28b1d3d2e44c4486754fbdc3166e030b579a061a3276333e32a" [label=""];
  "sha256:462a9a0d1e49c28b1d3d2e44c4486754fbdc3166e030b579a061a3276333e32a" -> "sha256:b0951a2e9c6e344ac6b86636ee97682240fdac22c277754a410928f3af03b932" [label=""];
  "sha256:0838af5b4138c7e31a7a53eab518794fd6dd8dc429742ad1476aa10ce7868f27" -> "sha256:b0951a2e9c6e344ac6b86636ee97682240fdac22c277754a410928f3af03b932" [label=""];
  "sha256:b0951a2e9c6e344ac6b86636ee97682240fdac22c277754a410928f3af03b932" -> "sha256:90cb4a6a4251ce6a3b83784b34fb8372e797b394f3b57cfbda2b518aa42a2c74" [label=""];
  "sha256:90cb4a6a4251ce6a3b83784b34fb8372e797b394f3b57cfbda2b518aa42a2c74" -> "sha256:429fd73d4af01bbbce3d3ce253ac7f1d774e114ae03ff3b573aba9a4275a26b7" [label=""];
  "sha256:429fd73d4af01bbbce3d3ce253ac7f1d774e114ae03ff3b573aba9a4275a26b7" -> "sha256:eb40f3046d9935d4addb5866902214fa30eca5043b2da5ed1652d736b04e1f1b" [label=""];
}

