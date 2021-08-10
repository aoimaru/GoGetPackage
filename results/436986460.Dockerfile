[app/sources/436986460.Dockerfile]
digraph {
  "sha256:ef727d0740461b015a1e169df55895bf518600e69cac175a019e262f9e9fa844" [label="docker-image://docker.io/nvidia/cuda:latest" shape="ellipse"];
  "sha256:ffe27f6671bec511d877f7d04491578c6298219c52275ed5d98ea81205baf954" [label="docker-image://docker.io/library/golang:1.11.2" shape="ellipse"];
  "sha256:351b674f086c3192444c038b972542727e0d85f034a046a4ec18b4b3166c619b" [label="local://context" shape="ellipse"];
  "sha256:7efcfefe39308f8ae04c9fb7c9a34074d6a30a8ba514b6a19845068d159cab26" [label="copy{src=/, dest=/go/src/github.com/NVIDIA/gpu-feature-discovery}" shape="note"];
  "sha256:d8a41887f3efdf8a91fb07b736a762434de80f9d3884b5a91bb0a7463ee2532f" [label="mkdir{path=/go/src/github.com/NVIDIA/gpu-feature-discovery}" shape="note"];
  "sha256:649d1cbcce4fb9f4fa7704871e6e77ef8d72dd00445bc0c0de4088d9de355acf" [label="/bin/sh -c go get -u github.com/golang/dep/cmd/dep" shape="box"];
  "sha256:a23e20847eb24e7eead1c6e8ebc40db72ab15d7ddcd20be7fa0fb8540e42d2ce" [label="/bin/sh -c dep ensure" shape="box"];
  "sha256:9ce6c2a739ecd644f9892f478d5adf22e8b7c9397b922efd5afa965428028b66" [label="/bin/sh -c go install -ldflags \"-X main.Version=${GFD_VERSION}\" github.com/NVIDIA/gpu-feature-discovery" shape="box"];
  "sha256:2aa6746853f37b75faed4e7b6444b1d93eb0727c24ac7f288bcd1ec11e2b703c" [label="/bin/sh -c go test ." shape="box"];
  "sha256:543a8e7749519e46bc6714ba79e4a2489969bd14ee3975491d7d492ed1ce565d" [label="copy{src=/go/bin/gpu-feature-discovery, dest=/usr/bin/gpu-feature-discovery}" shape="note"];
  "sha256:1ce527d12d8a42064b45e288c8c9e3565ef8d05d586dee532c49a4015939aede" [label="sha256:1ce527d12d8a42064b45e288c8c9e3565ef8d05d586dee532c49a4015939aede" shape="plaintext"];
  "sha256:ffe27f6671bec511d877f7d04491578c6298219c52275ed5d98ea81205baf954" -> "sha256:7efcfefe39308f8ae04c9fb7c9a34074d6a30a8ba514b6a19845068d159cab26" [label=""];
  "sha256:351b674f086c3192444c038b972542727e0d85f034a046a4ec18b4b3166c619b" -> "sha256:7efcfefe39308f8ae04c9fb7c9a34074d6a30a8ba514b6a19845068d159cab26" [label=""];
  "sha256:7efcfefe39308f8ae04c9fb7c9a34074d6a30a8ba514b6a19845068d159cab26" -> "sha256:d8a41887f3efdf8a91fb07b736a762434de80f9d3884b5a91bb0a7463ee2532f" [label=""];
  "sha256:d8a41887f3efdf8a91fb07b736a762434de80f9d3884b5a91bb0a7463ee2532f" -> "sha256:649d1cbcce4fb9f4fa7704871e6e77ef8d72dd00445bc0c0de4088d9de355acf" [label=""];
  "sha256:649d1cbcce4fb9f4fa7704871e6e77ef8d72dd00445bc0c0de4088d9de355acf" -> "sha256:a23e20847eb24e7eead1c6e8ebc40db72ab15d7ddcd20be7fa0fb8540e42d2ce" [label=""];
  "sha256:a23e20847eb24e7eead1c6e8ebc40db72ab15d7ddcd20be7fa0fb8540e42d2ce" -> "sha256:9ce6c2a739ecd644f9892f478d5adf22e8b7c9397b922efd5afa965428028b66" [label=""];
  "sha256:9ce6c2a739ecd644f9892f478d5adf22e8b7c9397b922efd5afa965428028b66" -> "sha256:2aa6746853f37b75faed4e7b6444b1d93eb0727c24ac7f288bcd1ec11e2b703c" [label=""];
  "sha256:ef727d0740461b015a1e169df55895bf518600e69cac175a019e262f9e9fa844" -> "sha256:543a8e7749519e46bc6714ba79e4a2489969bd14ee3975491d7d492ed1ce565d" [label=""];
  "sha256:2aa6746853f37b75faed4e7b6444b1d93eb0727c24ac7f288bcd1ec11e2b703c" -> "sha256:543a8e7749519e46bc6714ba79e4a2489969bd14ee3975491d7d492ed1ce565d" [label=""];
  "sha256:543a8e7749519e46bc6714ba79e4a2489969bd14ee3975491d7d492ed1ce565d" -> "sha256:1ce527d12d8a42064b45e288c8c9e3565ef8d05d586dee532c49a4015939aede" [label=""];
}

