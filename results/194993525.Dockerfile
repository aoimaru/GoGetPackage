[app/sources/194993525.Dockerfile]
digraph {
  "sha256:cbaa2dca6e733735ffd9b02237a56a12031c0e0f94601d75d6771940610d471f" [label="docker-image://bootstrapper:5000/liuqs_public/tensorflow:1.1.0-gpu" shape="ellipse"];
  "sha256:401a85cbb27cae4c77648ca8b904583bb0342d6b69f233a1cc681678f584edb2" [label="/bin/sh -c mkdir /examples" shape="box"];
  "sha256:9e1bcf478227374a0eab622eb032eb0ac3ff34773045cc2f765e86497bb48baa" [label="local://context" shape="ellipse"];
  "sha256:4f3505e47989fba900b02cf40856881ed1a95ecaf25b3a8177b5ad6816dc2a79" [label="copy{src=/train.py, dest=/examples/},copy{src=/run-gpu.sh, dest=/examples/}" shape="note"];
  "sha256:2ed1eb642d965c6b32e8d3cc2b336644515580c91c2371f5a459474b610a0361" [label="mkdir{path=/examples}" shape="note"];
  "sha256:fd6401f15b004e5689080b2c08639d8ac3271add3b6a6ffd5be81332aba87b00" [label="sha256:fd6401f15b004e5689080b2c08639d8ac3271add3b6a6ffd5be81332aba87b00" shape="plaintext"];
  "sha256:cbaa2dca6e733735ffd9b02237a56a12031c0e0f94601d75d6771940610d471f" -> "sha256:401a85cbb27cae4c77648ca8b904583bb0342d6b69f233a1cc681678f584edb2" [label=""];
  "sha256:401a85cbb27cae4c77648ca8b904583bb0342d6b69f233a1cc681678f584edb2" -> "sha256:4f3505e47989fba900b02cf40856881ed1a95ecaf25b3a8177b5ad6816dc2a79" [label=""];
  "sha256:9e1bcf478227374a0eab622eb032eb0ac3ff34773045cc2f765e86497bb48baa" -> "sha256:4f3505e47989fba900b02cf40856881ed1a95ecaf25b3a8177b5ad6816dc2a79" [label=""];
  "sha256:4f3505e47989fba900b02cf40856881ed1a95ecaf25b3a8177b5ad6816dc2a79" -> "sha256:2ed1eb642d965c6b32e8d3cc2b336644515580c91c2371f5a459474b610a0361" [label=""];
  "sha256:2ed1eb642d965c6b32e8d3cc2b336644515580c91c2371f5a459474b610a0361" -> "sha256:fd6401f15b004e5689080b2c08639d8ac3271add3b6a6ffd5be81332aba87b00" [label=""];
}

