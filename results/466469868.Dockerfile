[app/sources/466469868.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:92c03dc50f8b6ca1bdc6f33216a3e130a0ea0957a42c6e9fbebd538dadcd8d74" [label="local://context" shape="ellipse"];
  "sha256:5b605c894d87b6045da2c70781315be6e7c66961eac99a9640e4290b97145ee3" [label="copy{src=/, dest=/go/src/github.com/coreos/etcd}" shape="note"];
  "sha256:356e20b117176ce5ac7c708492de8c24b598ac225f00e533e8b60185c59eeb3a" [label="copy{src=/cmd/vendor, dest=/go/src/github.com/coreos/etcd/vendor}" shape="note"];
  "sha256:0c8283ea494e16f5bdc95e8247d0a8629e8a6c8592e520d2d0497e6a32078087" [label="/bin/sh -c go install github.com/coreos/etcd" shape="box"];
  "sha256:3a036682b761c6e6b26172f0d6246040c63fe57aaf393a7689c6e9118b4ab2ba" [label="sha256:3a036682b761c6e6b26172f0d6246040c63fe57aaf393a7689c6e9118b4ab2ba" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:5b605c894d87b6045da2c70781315be6e7c66961eac99a9640e4290b97145ee3" [label=""];
  "sha256:92c03dc50f8b6ca1bdc6f33216a3e130a0ea0957a42c6e9fbebd538dadcd8d74" -> "sha256:5b605c894d87b6045da2c70781315be6e7c66961eac99a9640e4290b97145ee3" [label=""];
  "sha256:5b605c894d87b6045da2c70781315be6e7c66961eac99a9640e4290b97145ee3" -> "sha256:356e20b117176ce5ac7c708492de8c24b598ac225f00e533e8b60185c59eeb3a" [label=""];
  "sha256:92c03dc50f8b6ca1bdc6f33216a3e130a0ea0957a42c6e9fbebd538dadcd8d74" -> "sha256:356e20b117176ce5ac7c708492de8c24b598ac225f00e533e8b60185c59eeb3a" [label=""];
  "sha256:356e20b117176ce5ac7c708492de8c24b598ac225f00e533e8b60185c59eeb3a" -> "sha256:0c8283ea494e16f5bdc95e8247d0a8629e8a6c8592e520d2d0497e6a32078087" [label=""];
  "sha256:0c8283ea494e16f5bdc95e8247d0a8629e8a6c8592e520d2d0497e6a32078087" -> "sha256:3a036682b761c6e6b26172f0d6246040c63fe57aaf393a7689c6e9118b4ab2ba" [label=""];
}

