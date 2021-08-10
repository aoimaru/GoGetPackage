[app/sources/142010561.Dockerfile]
digraph {
  "sha256:396fb85788dae38cc63652a61870485a4e8bb5562d4ba4251e45093de0483818" [label="docker-image://docker.io/ocaml/opam2@sha256:f35a7008f588eb91b28de1df1e0b3f938e64ec1b0c4537d5b8ff330d72e84d39" shape="ellipse"];
  "sha256:025075e8d637e9ae25f0e0c2d3718117a3ffdf563636153780c01e144213f3a3" [label="/bin/bash --login -c sudo apt-get update && sudo apt-get install -yq m4 libgmp-dev ruby" shape="box"];
  "sha256:27b4332be6db8a507680f319d48bc6240ef501f7af6c965e248ce780659fd821" [label="/bin/bash --login -c sudo gem install parallel" shape="box"];
  "sha256:7290690d7c0f2ce1cb3408e4690639bb97384db90e89b1ea23a2a6269f7a7395" [label="/bin/bash --login -c echo \"export LC_ALL=C.UTF-8; export LANG=en_US.UTF-8; export LANGUAGE=en_US.UTF-8\" >> /home/opam/.bashrc" shape="box"];
  "sha256:7a1839bb990d960bc167d69eadf8bc2d34178a4f8e71cd874aeaa8d6c2529514" [label="local://context" shape="ellipse"];
  "sha256:a04fc35d0935f6e12780c3191e90a86a5d6ab56258b033676cf9bbe8f081ef5b" [label="copy{src=/, dest=/home/opam/analyzer}" shape="note"];
  "sha256:2017d9685c34478d613b881a3bf5f71d771a634bb25b784b66f68350eabecd83" [label="mkdir{path=/home/opam/analyzer}" shape="note"];
  "sha256:6f0ee178f4e10e446b88b727433dc2ff0d963888db7e2a5c4047ad7d5c8a561a" [label="/bin/bash --login -c opam switch 4.07" shape="box"];
  "sha256:d4ab201b45ee5eef5a51d36c4d0e93a4681afa101d5e47254f0e937c012155da" [label="/bin/bash --login -c make deps > /dev/null" shape="box"];
  "sha256:9829895a55aa121599de8f8fdec6562771832881309752a8eac0d9f262827d40" [label="/bin/bash --login -c make" shape="box"];
  "sha256:6c2af75c20fe41d597f387cb8030aee8e0d6c94cb8cc51530be2a9552de671cf" [label="sha256:6c2af75c20fe41d597f387cb8030aee8e0d6c94cb8cc51530be2a9552de671cf" shape="plaintext"];
  "sha256:396fb85788dae38cc63652a61870485a4e8bb5562d4ba4251e45093de0483818" -> "sha256:025075e8d637e9ae25f0e0c2d3718117a3ffdf563636153780c01e144213f3a3" [label=""];
  "sha256:025075e8d637e9ae25f0e0c2d3718117a3ffdf563636153780c01e144213f3a3" -> "sha256:27b4332be6db8a507680f319d48bc6240ef501f7af6c965e248ce780659fd821" [label=""];
  "sha256:27b4332be6db8a507680f319d48bc6240ef501f7af6c965e248ce780659fd821" -> "sha256:7290690d7c0f2ce1cb3408e4690639bb97384db90e89b1ea23a2a6269f7a7395" [label=""];
  "sha256:7290690d7c0f2ce1cb3408e4690639bb97384db90e89b1ea23a2a6269f7a7395" -> "sha256:a04fc35d0935f6e12780c3191e90a86a5d6ab56258b033676cf9bbe8f081ef5b" [label=""];
  "sha256:7a1839bb990d960bc167d69eadf8bc2d34178a4f8e71cd874aeaa8d6c2529514" -> "sha256:a04fc35d0935f6e12780c3191e90a86a5d6ab56258b033676cf9bbe8f081ef5b" [label=""];
  "sha256:a04fc35d0935f6e12780c3191e90a86a5d6ab56258b033676cf9bbe8f081ef5b" -> "sha256:2017d9685c34478d613b881a3bf5f71d771a634bb25b784b66f68350eabecd83" [label=""];
  "sha256:2017d9685c34478d613b881a3bf5f71d771a634bb25b784b66f68350eabecd83" -> "sha256:6f0ee178f4e10e446b88b727433dc2ff0d963888db7e2a5c4047ad7d5c8a561a" [label=""];
  "sha256:6f0ee178f4e10e446b88b727433dc2ff0d963888db7e2a5c4047ad7d5c8a561a" -> "sha256:d4ab201b45ee5eef5a51d36c4d0e93a4681afa101d5e47254f0e937c012155da" [label=""];
  "sha256:d4ab201b45ee5eef5a51d36c4d0e93a4681afa101d5e47254f0e937c012155da" -> "sha256:9829895a55aa121599de8f8fdec6562771832881309752a8eac0d9f262827d40" [label=""];
  "sha256:9829895a55aa121599de8f8fdec6562771832881309752a8eac0d9f262827d40" -> "sha256:6c2af75c20fe41d597f387cb8030aee8e0d6c94cb8cc51530be2a9552de671cf" [label=""];
}

