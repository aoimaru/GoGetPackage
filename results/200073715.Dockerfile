[app/sources/200073715.Dockerfile]
digraph {
  "sha256:3ec8f2725837212976b57aede1323bff2cb7d3a6794a9f42d4edb14e396cc0b8" [label="local://context" shape="ellipse"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:395f2e9f0848eda8918fdfa597ff5daad6c3d5ec74eeb2c8741a0fbe9426cbb1" [label="/bin/sh -c curl https://glide.sh/get | sh" shape="box"];
  "sha256:4b5045d7870f161c3629313fa24c0756b5a6aac27dea397b5ad320600bd7241d" [label="/bin/sh -c mkdir -p /go/src/github.com/tendermint/go-p2p" shape="box"];
  "sha256:eac72f1f103d6fad950c63b1933c718ed2ffdbbb76c0e8bca4b1ee5cfa6210fc" [label="mkdir{path=/go/src/github.com/tendermint/go-p2p}" shape="note"];
  "sha256:d12fc1664d2957ab22b786f920308cc0b438590e97b8fcb9cc648b380391bbc2" [label="copy{src=/glide.yaml, dest=/go/src/github.com/tendermint/go-p2p/}" shape="note"];
  "sha256:c05def9598de9f938f570ea595e7999d24595f09a11edeeed87d084bba8db6b1" [label="copy{src=/glide.lock, dest=/go/src/github.com/tendermint/go-p2p/}" shape="note"];
  "sha256:80f8349a8a9d4232a2b46379b3b07959930070c311c5a9bf7ddc87f17fac4586" [label="/bin/sh -c glide install" shape="box"];
  "sha256:5b2f68dc82219eb9e2e6e54b98e0b16e120c8aa374fab1b0b7600208895280a3" [label="copy{src=/, dest=/go/src/github.com/tendermint/go-p2p}" shape="note"];
  "sha256:b8b562e4d35e504df127a4e5831f2242995354cdc07eb1a5d6acbcdb73f37d47" [label="sha256:b8b562e4d35e504df127a4e5831f2242995354cdc07eb1a5d6acbcdb73f37d47" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:395f2e9f0848eda8918fdfa597ff5daad6c3d5ec74eeb2c8741a0fbe9426cbb1" [label=""];
  "sha256:395f2e9f0848eda8918fdfa597ff5daad6c3d5ec74eeb2c8741a0fbe9426cbb1" -> "sha256:4b5045d7870f161c3629313fa24c0756b5a6aac27dea397b5ad320600bd7241d" [label=""];
  "sha256:4b5045d7870f161c3629313fa24c0756b5a6aac27dea397b5ad320600bd7241d" -> "sha256:eac72f1f103d6fad950c63b1933c718ed2ffdbbb76c0e8bca4b1ee5cfa6210fc" [label=""];
  "sha256:eac72f1f103d6fad950c63b1933c718ed2ffdbbb76c0e8bca4b1ee5cfa6210fc" -> "sha256:d12fc1664d2957ab22b786f920308cc0b438590e97b8fcb9cc648b380391bbc2" [label=""];
  "sha256:3ec8f2725837212976b57aede1323bff2cb7d3a6794a9f42d4edb14e396cc0b8" -> "sha256:d12fc1664d2957ab22b786f920308cc0b438590e97b8fcb9cc648b380391bbc2" [label=""];
  "sha256:d12fc1664d2957ab22b786f920308cc0b438590e97b8fcb9cc648b380391bbc2" -> "sha256:c05def9598de9f938f570ea595e7999d24595f09a11edeeed87d084bba8db6b1" [label=""];
  "sha256:3ec8f2725837212976b57aede1323bff2cb7d3a6794a9f42d4edb14e396cc0b8" -> "sha256:c05def9598de9f938f570ea595e7999d24595f09a11edeeed87d084bba8db6b1" [label=""];
  "sha256:c05def9598de9f938f570ea595e7999d24595f09a11edeeed87d084bba8db6b1" -> "sha256:80f8349a8a9d4232a2b46379b3b07959930070c311c5a9bf7ddc87f17fac4586" [label=""];
  "sha256:80f8349a8a9d4232a2b46379b3b07959930070c311c5a9bf7ddc87f17fac4586" -> "sha256:5b2f68dc82219eb9e2e6e54b98e0b16e120c8aa374fab1b0b7600208895280a3" [label=""];
  "sha256:3ec8f2725837212976b57aede1323bff2cb7d3a6794a9f42d4edb14e396cc0b8" -> "sha256:5b2f68dc82219eb9e2e6e54b98e0b16e120c8aa374fab1b0b7600208895280a3" [label=""];
  "sha256:5b2f68dc82219eb9e2e6e54b98e0b16e120c8aa374fab1b0b7600208895280a3" -> "sha256:b8b562e4d35e504df127a4e5831f2242995354cdc07eb1a5d6acbcdb73f37d47" [label=""];
}

