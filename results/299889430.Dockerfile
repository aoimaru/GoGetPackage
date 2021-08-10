[app/sources/299889430.Dockerfile]
digraph {
  "sha256:cef2e990351557ce46be9bc94ef872468a20b717be1cc25740aabbff47b4a40e" [label="docker-image://docker.io/library/keras-semantic-segmentation-base:latest" shape="ellipse"];
  "sha256:8cf182962f728ff030760ae9780aa701c22d0ba7f1099634b0fa3f3759137ec4" [label="/bin/sh -c pip install https://storage.googleapis.com/tensorflow/linux/${architecture}/tensorflow-${tensorflow_version}-linux_x86_64.whl &&     pip install git+git://github.com/fchollet/keras.git@4fa7e5d454dd4f3f33f1d756a2a8659f2e789141" shape="box"];
  "sha256:78cb5c457bbc8e739a610f9a9c5338ad83d198a976349b563d55f27520d3ca7d" [label="mkdir{path=/opt/src}" shape="note"];
  "sha256:350c4002862337496765aa2ae33e439413e6de5dda8e7d6a02280290d8a50f60" [label="local://context" shape="ellipse"];
  "sha256:3260d108bd64ae09f61218faf13e2ae50d6c9e462da3c18ffa3aece896e87ca1" [label="copy{src=/, dest=/opt/src}" shape="note"];
  "sha256:464aff321318aaa8e25d4f31ee9c23aec7d99fc947c6378243f635c62eefb40e" [label="/bin/sh -c mkdir /opt/data" shape="box"];
  "sha256:438f866ae011d0fd8b128ea2f40667844cddd792b3565b0ec1d014b1815f4274" [label="/bin/sh -c chown -R keras:root /opt/data" shape="box"];
  "sha256:4f078b8ba037e9e35fb46915d72b81dddd25bb0e522e9978642f3365a088ff94" [label="sha256:4f078b8ba037e9e35fb46915d72b81dddd25bb0e522e9978642f3365a088ff94" shape="plaintext"];
  "sha256:cef2e990351557ce46be9bc94ef872468a20b717be1cc25740aabbff47b4a40e" -> "sha256:8cf182962f728ff030760ae9780aa701c22d0ba7f1099634b0fa3f3759137ec4" [label=""];
  "sha256:8cf182962f728ff030760ae9780aa701c22d0ba7f1099634b0fa3f3759137ec4" -> "sha256:78cb5c457bbc8e739a610f9a9c5338ad83d198a976349b563d55f27520d3ca7d" [label=""];
  "sha256:78cb5c457bbc8e739a610f9a9c5338ad83d198a976349b563d55f27520d3ca7d" -> "sha256:3260d108bd64ae09f61218faf13e2ae50d6c9e462da3c18ffa3aece896e87ca1" [label=""];
  "sha256:350c4002862337496765aa2ae33e439413e6de5dda8e7d6a02280290d8a50f60" -> "sha256:3260d108bd64ae09f61218faf13e2ae50d6c9e462da3c18ffa3aece896e87ca1" [label=""];
  "sha256:3260d108bd64ae09f61218faf13e2ae50d6c9e462da3c18ffa3aece896e87ca1" -> "sha256:464aff321318aaa8e25d4f31ee9c23aec7d99fc947c6378243f635c62eefb40e" [label=""];
  "sha256:464aff321318aaa8e25d4f31ee9c23aec7d99fc947c6378243f635c62eefb40e" -> "sha256:438f866ae011d0fd8b128ea2f40667844cddd792b3565b0ec1d014b1815f4274" [label=""];
  "sha256:438f866ae011d0fd8b128ea2f40667844cddd792b3565b0ec1d014b1815f4274" -> "sha256:4f078b8ba037e9e35fb46915d72b81dddd25bb0e522e9978642f3365a088ff94" [label=""];
}

