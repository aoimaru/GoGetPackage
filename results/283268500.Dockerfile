[app/sources/283268500.Dockerfile]
digraph {
  "sha256:ee1f37cea9268b48dd557e1b42870613d19324c98195d28019340d7ff1c5e0aa" [label="local://context" shape="ellipse"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:b37641b1d719f5a2f3ae9b2ccd5fc76a8f7770b9df95a926c723e8ed3bad3f85" [label="copy{src=/, dest=/go/src/github.com/coreos/etcd}" shape="note"];
  "sha256:aa0c7909f2971b681258369c601dc2eccf54c3cdb90f0352538692fe4d5f4b5b" [label="copy{src=/cmd/vendor, dest=/go/src/github.com/coreos/etcd/vendor}" shape="note"];
  "sha256:fb5ee760d619e0454d0476e972063410c6ca5809d708f3555c88430d86e47bd6" [label="/bin/sh -c go install github.com/coreos/etcd" shape="box"];
  "sha256:28a9fd4ddacb9c62074c6b07b6f7f79bea37a9ad569cb589cfd13cb683154fe1" [label="sha256:28a9fd4ddacb9c62074c6b07b6f7f79bea37a9ad569cb589cfd13cb683154fe1" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:b37641b1d719f5a2f3ae9b2ccd5fc76a8f7770b9df95a926c723e8ed3bad3f85" [label=""];
  "sha256:ee1f37cea9268b48dd557e1b42870613d19324c98195d28019340d7ff1c5e0aa" -> "sha256:b37641b1d719f5a2f3ae9b2ccd5fc76a8f7770b9df95a926c723e8ed3bad3f85" [label=""];
  "sha256:b37641b1d719f5a2f3ae9b2ccd5fc76a8f7770b9df95a926c723e8ed3bad3f85" -> "sha256:aa0c7909f2971b681258369c601dc2eccf54c3cdb90f0352538692fe4d5f4b5b" [label=""];
  "sha256:ee1f37cea9268b48dd557e1b42870613d19324c98195d28019340d7ff1c5e0aa" -> "sha256:aa0c7909f2971b681258369c601dc2eccf54c3cdb90f0352538692fe4d5f4b5b" [label=""];
  "sha256:aa0c7909f2971b681258369c601dc2eccf54c3cdb90f0352538692fe4d5f4b5b" -> "sha256:fb5ee760d619e0454d0476e972063410c6ca5809d708f3555c88430d86e47bd6" [label=""];
  "sha256:fb5ee760d619e0454d0476e972063410c6ca5809d708f3555c88430d86e47bd6" -> "sha256:28a9fd4ddacb9c62074c6b07b6f7f79bea37a9ad569cb589cfd13cb683154fe1" [label=""];
}

