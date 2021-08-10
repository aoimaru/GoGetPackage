[app/sources/316594282.Dockerfile]
digraph {
  "sha256:a940a83ac56d42caf5383589b7e7ed601aeaee01b76f1bf834ed22db7b1f468b" [label="docker-image://docker.io/phusion/baseimage:0.10.2" shape="ellipse"];
  "sha256:a417786394a143750ad5f9a1f58643c1bc97c7dfb051d75e372e7dbcfee9cd49" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:3a066b1f45125fb72d9d8693fec780daed471d1ffb3d194c7f9f15cee99957c4" [label="/bin/sh -c DEBIAN_FRONTEND=\"noninteractive\" apt-get upgrade -y" shape="box"];
  "sha256:a804c30ad9b32cf9c020ca418d88995c10c85c55735c6058973d297ea4e58b40" [label="/bin/sh -c DEBIAN_FRONTEND=\"noninteractive\" apt-get install -y git" shape="box"];
  "sha256:72b186d2b8317efd610ee3d0cdaa2a15418acb7aaa4ba5257b6e18731750e58d" [label="/bin/sh -c curl -s -L -O https://storage.googleapis.com/golang/go1.10.3.linux-amd64.tar.gz" shape="box"];
  "sha256:d458b682f2894a925fab4ca3731cf4c2d4a683a5c432d46a7b38767e92df9046" [label="/bin/sh -c tar -C /usr/local -xzf go1.10.3.linux-amd64.tar.gz" shape="box"];
  "sha256:5a0ab509eec027be0f70514c19881334f3ee9dc0882b5ebc662fcfceacd1982a" [label="local://context" shape="ellipse"];
  "sha256:c36f5ac6a0209eeafe8a84197341b30fd4d2f6a7893cb05525d23dc00c357850" [label="copy{src=/, dest=/go/src/github.com/turbinelabs/all-in-one-driver}" shape="note"];
  "sha256:8d929859a19b1790e751f983b9f405abc15da892c2a2b05eebca35445263f20d" [label="/bin/sh -c go get github.com/turbinelabs/all-in-one-driver" shape="box"];
  "sha256:50ef21a28ab5c295702b688a6e50ed97dd415ae39ee5ad36ac5c718a00b1964f" [label="/bin/sh -c go install github.com/turbinelabs/all-in-one-driver" shape="box"];
  "sha256:aa4bf158c2edbd94ff88f2ea83e4772f2c46c4883a67c887c712cb55530d520c" [label="/bin/sh -c mv $GOPATH/bin/all-in-one-driver /usr/local/bin/all-in-one-driver" shape="box"];
  "sha256:366e0d289ffb38a5d98a9a46f2813746d62dc721b03e61b47f7cbedb821a2d15" [label="/bin/sh -c rm -rf /usr/local/go" shape="box"];
  "sha256:60081ea9b026e4d99d590f259056fec2d0abf1c5780987ffc89eb15f3abff7ff" [label="/bin/sh -c rm -rf $GOPATH" shape="box"];
  "sha256:ac6f8f37d858cdbc60f9d89937a4fe675515970621d6add228c7ea3ea2b7e9ea" [label="/bin/sh -c DEBIAN_FRONTEND=\"noninteractive\" apt-get remove -y git" shape="box"];
  "sha256:edfe28f0a4b09f229b5bc45b138bb38aaf6a40bfff3916bc2ffefd69242270b0" [label="/bin/sh -c DEBIAN_FRONTEND=\"noninteractive\" apt-get autoremove -y" shape="box"];
  "sha256:b66011a0216a0461e01f55d2bd7e9cb00c94297bf73a5ce656c0b07cfc275ded" [label="/bin/sh -c apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:5abbf4570c0663600e4ff6b085fcd54dc93bee4673e037d2643a08720d8084be" [label="sha256:5abbf4570c0663600e4ff6b085fcd54dc93bee4673e037d2643a08720d8084be" shape="plaintext"];
  "sha256:a940a83ac56d42caf5383589b7e7ed601aeaee01b76f1bf834ed22db7b1f468b" -> "sha256:a417786394a143750ad5f9a1f58643c1bc97c7dfb051d75e372e7dbcfee9cd49" [label=""];
  "sha256:a417786394a143750ad5f9a1f58643c1bc97c7dfb051d75e372e7dbcfee9cd49" -> "sha256:3a066b1f45125fb72d9d8693fec780daed471d1ffb3d194c7f9f15cee99957c4" [label=""];
  "sha256:3a066b1f45125fb72d9d8693fec780daed471d1ffb3d194c7f9f15cee99957c4" -> "sha256:a804c30ad9b32cf9c020ca418d88995c10c85c55735c6058973d297ea4e58b40" [label=""];
  "sha256:a804c30ad9b32cf9c020ca418d88995c10c85c55735c6058973d297ea4e58b40" -> "sha256:72b186d2b8317efd610ee3d0cdaa2a15418acb7aaa4ba5257b6e18731750e58d" [label=""];
  "sha256:72b186d2b8317efd610ee3d0cdaa2a15418acb7aaa4ba5257b6e18731750e58d" -> "sha256:d458b682f2894a925fab4ca3731cf4c2d4a683a5c432d46a7b38767e92df9046" [label=""];
  "sha256:d458b682f2894a925fab4ca3731cf4c2d4a683a5c432d46a7b38767e92df9046" -> "sha256:c36f5ac6a0209eeafe8a84197341b30fd4d2f6a7893cb05525d23dc00c357850" [label=""];
  "sha256:5a0ab509eec027be0f70514c19881334f3ee9dc0882b5ebc662fcfceacd1982a" -> "sha256:c36f5ac6a0209eeafe8a84197341b30fd4d2f6a7893cb05525d23dc00c357850" [label=""];
  "sha256:c36f5ac6a0209eeafe8a84197341b30fd4d2f6a7893cb05525d23dc00c357850" -> "sha256:8d929859a19b1790e751f983b9f405abc15da892c2a2b05eebca35445263f20d" [label=""];
  "sha256:8d929859a19b1790e751f983b9f405abc15da892c2a2b05eebca35445263f20d" -> "sha256:50ef21a28ab5c295702b688a6e50ed97dd415ae39ee5ad36ac5c718a00b1964f" [label=""];
  "sha256:50ef21a28ab5c295702b688a6e50ed97dd415ae39ee5ad36ac5c718a00b1964f" -> "sha256:aa4bf158c2edbd94ff88f2ea83e4772f2c46c4883a67c887c712cb55530d520c" [label=""];
  "sha256:aa4bf158c2edbd94ff88f2ea83e4772f2c46c4883a67c887c712cb55530d520c" -> "sha256:366e0d289ffb38a5d98a9a46f2813746d62dc721b03e61b47f7cbedb821a2d15" [label=""];
  "sha256:366e0d289ffb38a5d98a9a46f2813746d62dc721b03e61b47f7cbedb821a2d15" -> "sha256:60081ea9b026e4d99d590f259056fec2d0abf1c5780987ffc89eb15f3abff7ff" [label=""];
  "sha256:60081ea9b026e4d99d590f259056fec2d0abf1c5780987ffc89eb15f3abff7ff" -> "sha256:ac6f8f37d858cdbc60f9d89937a4fe675515970621d6add228c7ea3ea2b7e9ea" [label=""];
  "sha256:ac6f8f37d858cdbc60f9d89937a4fe675515970621d6add228c7ea3ea2b7e9ea" -> "sha256:edfe28f0a4b09f229b5bc45b138bb38aaf6a40bfff3916bc2ffefd69242270b0" [label=""];
  "sha256:edfe28f0a4b09f229b5bc45b138bb38aaf6a40bfff3916bc2ffefd69242270b0" -> "sha256:b66011a0216a0461e01f55d2bd7e9cb00c94297bf73a5ce656c0b07cfc275ded" [label=""];
  "sha256:b66011a0216a0461e01f55d2bd7e9cb00c94297bf73a5ce656c0b07cfc275ded" -> "sha256:5abbf4570c0663600e4ff6b085fcd54dc93bee4673e037d2643a08720d8084be" [label=""];
}

