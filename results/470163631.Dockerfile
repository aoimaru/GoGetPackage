[app/sources/470163631.Dockerfile]
digraph {
  "sha256:81f820bd293f45c429ff2e202dee65d2debcb2b1ab0c08b11ab4824511b9577e" [label="docker-image://docker.io/caffe2ai/caffe2:latest" shape="ellipse"];
  "sha256:b6f533a3035732b31513f630d855fd690cee247c39c4225128a10bb099744453" [label="/bin/sh -c apt-get install unzip vim -y --no-install-recommends" shape="box"];
  "sha256:c4d05c7246df46d6998b2b98debc99c4e79c36c08069c982011b8eea35e129ec" [label="/bin/sh -c rm -rf caffe2" shape="box"];
  "sha256:50f298a938a74ec4e8faac0209f7df67822a5c984ff7b8e390d5bb40114884d0" [label="/bin/sh -c git clone --recursive https://github.com/caffe2/caffe2.git" shape="box"];
  "sha256:aab4a505d8a9e7a64918afaafb9ee94a4f652b73631a78c382bfbc03b527c9d5" [label="/bin/sh -c rm -rf caffe2_tutorials" shape="box"];
  "sha256:344dd5164f990b42cfd1c3d35cfd406169432d9508574210f1fd09f8bd1655f2" [label="/bin/sh -c git clone --recursive https://github.com/caffe2/tutorials.git caffe2_tutorials" shape="box"];
  "sha256:9c572b7bb7161d88e3cf7d2ee193383a8b6126680c073eb976095efd1ca005ee" [label="mkdir{path=/caffe2}" shape="note"];
  "sha256:55008ee560c76c9f1dc9a10c208a9d158f1c59fc9cf166c71382c13dd37b4e9e" [label="/bin/sh -c make" shape="box"];
  "sha256:f4c13271fae34afae69536942301bde761185b17a96e2854d4295d131f6b0afd" [label="mkdir{path=/caffe2/build}" shape="note"];
  "sha256:2a2c07a4dec96a8548ddcfec079cd59bc1e9d484fe17cbd50332fbf986c93def" [label="/bin/sh -c make install" shape="box"];
  "sha256:c3d4917b091425872b051509f56a180fc06f546de242d6ac75cbbbb4945b53a1" [label="mkdir{path=/usr/local}" shape="note"];
  "sha256:20baec5bee8ab56fb275b2088fbaccaac43a209dfefc8602d5185d49a6c13867" [label="/bin/sh -c python -m caffe2.python.models.download -i squeezenet" shape="box"];
  "sha256:d190a697c6dfa6552de77675c79b737c8e8822b92a508e322d8c3c8acf6275b5" [label="mkdir{path=/caffe2_tutorials}" shape="note"];
  "sha256:fc85bc15044f10d0d24b0e531bc078dfb736abcbe6149afeca54b288870a324b" [label="/bin/sh -c mkdir tutorial_data && cd tutorial_data" shape="box"];
  "sha256:1ae4fe5616f6cf3c2dfa5020100e7c91ee5ddab8cc31dfcec2a159d5ed300fab" [label="mkdir{path=/caffe2_tutorials/tutorial_data}" shape="note"];
  "sha256:3686c2e6c8907fc04ac3de036da7eccd0459260c5bb54b152064bbb5b0e2355a" [label="/bin/sh -c wget \"https://download.caffe2.ai/datasets/mnist/mnist.zip\"" shape="box"];
  "sha256:343a496f4dd675d641cfdcca0c54ec48c72f47ee4f40d3e18cce85d49e448f31" [label="/bin/sh -c unzip -d mnist mnist.zip" shape="box"];
  "sha256:dee4f0314cf2436962a09b6c88483de8414d431e2eefb80105701b55bb23c94f" [label="mkdir{path=/caffe2_tutorials}" shape="note"];
  "sha256:f96914e92e690c56f0f9de3cecee9d73fe6d97c93bb9f57571c9e4708e18f5b5" [label="sha256:f96914e92e690c56f0f9de3cecee9d73fe6d97c93bb9f57571c9e4708e18f5b5" shape="plaintext"];
  "sha256:81f820bd293f45c429ff2e202dee65d2debcb2b1ab0c08b11ab4824511b9577e" -> "sha256:b6f533a3035732b31513f630d855fd690cee247c39c4225128a10bb099744453" [label=""];
  "sha256:b6f533a3035732b31513f630d855fd690cee247c39c4225128a10bb099744453" -> "sha256:c4d05c7246df46d6998b2b98debc99c4e79c36c08069c982011b8eea35e129ec" [label=""];
  "sha256:c4d05c7246df46d6998b2b98debc99c4e79c36c08069c982011b8eea35e129ec" -> "sha256:50f298a938a74ec4e8faac0209f7df67822a5c984ff7b8e390d5bb40114884d0" [label=""];
  "sha256:50f298a938a74ec4e8faac0209f7df67822a5c984ff7b8e390d5bb40114884d0" -> "sha256:aab4a505d8a9e7a64918afaafb9ee94a4f652b73631a78c382bfbc03b527c9d5" [label=""];
  "sha256:aab4a505d8a9e7a64918afaafb9ee94a4f652b73631a78c382bfbc03b527c9d5" -> "sha256:344dd5164f990b42cfd1c3d35cfd406169432d9508574210f1fd09f8bd1655f2" [label=""];
  "sha256:344dd5164f990b42cfd1c3d35cfd406169432d9508574210f1fd09f8bd1655f2" -> "sha256:9c572b7bb7161d88e3cf7d2ee193383a8b6126680c073eb976095efd1ca005ee" [label=""];
  "sha256:9c572b7bb7161d88e3cf7d2ee193383a8b6126680c073eb976095efd1ca005ee" -> "sha256:55008ee560c76c9f1dc9a10c208a9d158f1c59fc9cf166c71382c13dd37b4e9e" [label=""];
  "sha256:55008ee560c76c9f1dc9a10c208a9d158f1c59fc9cf166c71382c13dd37b4e9e" -> "sha256:f4c13271fae34afae69536942301bde761185b17a96e2854d4295d131f6b0afd" [label=""];
  "sha256:f4c13271fae34afae69536942301bde761185b17a96e2854d4295d131f6b0afd" -> "sha256:2a2c07a4dec96a8548ddcfec079cd59bc1e9d484fe17cbd50332fbf986c93def" [label=""];
  "sha256:2a2c07a4dec96a8548ddcfec079cd59bc1e9d484fe17cbd50332fbf986c93def" -> "sha256:c3d4917b091425872b051509f56a180fc06f546de242d6ac75cbbbb4945b53a1" [label=""];
  "sha256:c3d4917b091425872b051509f56a180fc06f546de242d6ac75cbbbb4945b53a1" -> "sha256:20baec5bee8ab56fb275b2088fbaccaac43a209dfefc8602d5185d49a6c13867" [label=""];
  "sha256:20baec5bee8ab56fb275b2088fbaccaac43a209dfefc8602d5185d49a6c13867" -> "sha256:d190a697c6dfa6552de77675c79b737c8e8822b92a508e322d8c3c8acf6275b5" [label=""];
  "sha256:d190a697c6dfa6552de77675c79b737c8e8822b92a508e322d8c3c8acf6275b5" -> "sha256:fc85bc15044f10d0d24b0e531bc078dfb736abcbe6149afeca54b288870a324b" [label=""];
  "sha256:fc85bc15044f10d0d24b0e531bc078dfb736abcbe6149afeca54b288870a324b" -> "sha256:1ae4fe5616f6cf3c2dfa5020100e7c91ee5ddab8cc31dfcec2a159d5ed300fab" [label=""];
  "sha256:1ae4fe5616f6cf3c2dfa5020100e7c91ee5ddab8cc31dfcec2a159d5ed300fab" -> "sha256:3686c2e6c8907fc04ac3de036da7eccd0459260c5bb54b152064bbb5b0e2355a" [label=""];
  "sha256:3686c2e6c8907fc04ac3de036da7eccd0459260c5bb54b152064bbb5b0e2355a" -> "sha256:343a496f4dd675d641cfdcca0c54ec48c72f47ee4f40d3e18cce85d49e448f31" [label=""];
  "sha256:343a496f4dd675d641cfdcca0c54ec48c72f47ee4f40d3e18cce85d49e448f31" -> "sha256:dee4f0314cf2436962a09b6c88483de8414d431e2eefb80105701b55bb23c94f" [label=""];
  "sha256:dee4f0314cf2436962a09b6c88483de8414d431e2eefb80105701b55bb23c94f" -> "sha256:f96914e92e690c56f0f9de3cecee9d73fe6d97c93bb9f57571c9e4708e18f5b5" [label=""];
}

