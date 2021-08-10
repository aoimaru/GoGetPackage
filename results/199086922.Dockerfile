[app/sources/199086922.Dockerfile]
digraph {
  "sha256:83ed7a7d70983a64bac1339345bea16155e53e3ce0cb45f246ed166533d990d4" [label="local://context" shape="ellipse"];
  "sha256:143ec88cc5d5a87ccf4d9a3f3e619d1419376a646dc6c35d4e3f1bb75624ff56" [label="docker-image://docker.io/library/python:3.5" shape="ellipse"];
  "sha256:437dfd5379cfeca5a48d6d2984d6d1db440993e5b752a58130c3d2f6c784a86e" [label="mkdir{path=/opt/deep-deep}" shape="note"];
  "sha256:bae56a6b2f1a0de24137fa8c347fd3ca024095f25b1828b7d7da8e37fe24126b" [label="/bin/sh -c apt-get update && apt-get install -y tree" shape="box"];
  "sha256:a74eda2ccfc841397d1618bb15a4be2283cb6aa1f0940a046e1e0ed689e5def8" [label="copy{src=/requirements.txt, dest=/opt/deep-deep/}" shape="note"];
  "sha256:6829dca7a83d80e24b2689e9adbe0fc10cb48133cef9ab821272f1b1b5c2a580" [label="/bin/sh -c pip install -U pip wheel &&     pip install -r requirements.txt" shape="box"];
  "sha256:9bf3dc5176670344439623a6f2c9376bcc72b920c0451d3d06890a83094f35a4" [label="copy{src=/deep-deep, dest=/opt/deep-deep/}" shape="note"];
  "sha256:2cbfcc5f8d7c936b2f105867de4842300c63ade4ac0f625eb9a912184593efc4" [label="/bin/sh -c tree" shape="box"];
  "sha256:d8a01058f4d7d88721840e66e0f8bb262ae1cfd415b352aba79114e56eb28c78" [label="/bin/sh -c pip install -e ." shape="box"];
  "sha256:9fe693aa6092eed7e78ae62abce74e368b2e47457d37d72c41194e5e02d5eb4c" [label="sha256:9fe693aa6092eed7e78ae62abce74e368b2e47457d37d72c41194e5e02d5eb4c" shape="plaintext"];
  "sha256:143ec88cc5d5a87ccf4d9a3f3e619d1419376a646dc6c35d4e3f1bb75624ff56" -> "sha256:437dfd5379cfeca5a48d6d2984d6d1db440993e5b752a58130c3d2f6c784a86e" [label=""];
  "sha256:437dfd5379cfeca5a48d6d2984d6d1db440993e5b752a58130c3d2f6c784a86e" -> "sha256:bae56a6b2f1a0de24137fa8c347fd3ca024095f25b1828b7d7da8e37fe24126b" [label=""];
  "sha256:bae56a6b2f1a0de24137fa8c347fd3ca024095f25b1828b7d7da8e37fe24126b" -> "sha256:a74eda2ccfc841397d1618bb15a4be2283cb6aa1f0940a046e1e0ed689e5def8" [label=""];
  "sha256:83ed7a7d70983a64bac1339345bea16155e53e3ce0cb45f246ed166533d990d4" -> "sha256:a74eda2ccfc841397d1618bb15a4be2283cb6aa1f0940a046e1e0ed689e5def8" [label=""];
  "sha256:a74eda2ccfc841397d1618bb15a4be2283cb6aa1f0940a046e1e0ed689e5def8" -> "sha256:6829dca7a83d80e24b2689e9adbe0fc10cb48133cef9ab821272f1b1b5c2a580" [label=""];
  "sha256:6829dca7a83d80e24b2689e9adbe0fc10cb48133cef9ab821272f1b1b5c2a580" -> "sha256:9bf3dc5176670344439623a6f2c9376bcc72b920c0451d3d06890a83094f35a4" [label=""];
  "sha256:83ed7a7d70983a64bac1339345bea16155e53e3ce0cb45f246ed166533d990d4" -> "sha256:9bf3dc5176670344439623a6f2c9376bcc72b920c0451d3d06890a83094f35a4" [label=""];
  "sha256:9bf3dc5176670344439623a6f2c9376bcc72b920c0451d3d06890a83094f35a4" -> "sha256:2cbfcc5f8d7c936b2f105867de4842300c63ade4ac0f625eb9a912184593efc4" [label=""];
  "sha256:2cbfcc5f8d7c936b2f105867de4842300c63ade4ac0f625eb9a912184593efc4" -> "sha256:d8a01058f4d7d88721840e66e0f8bb262ae1cfd415b352aba79114e56eb28c78" [label=""];
  "sha256:d8a01058f4d7d88721840e66e0f8bb262ae1cfd415b352aba79114e56eb28c78" -> "sha256:9fe693aa6092eed7e78ae62abce74e368b2e47457d37d72c41194e5e02d5eb4c" [label=""];
}

