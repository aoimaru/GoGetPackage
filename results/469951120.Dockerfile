[app/sources/469951120.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:b3755515a1c365a3ad053fc16e7f9559d6b78a20fc184996b45bf02f03fe1b5e" [label="local://context" shape="ellipse"];
  "sha256:cf168342e8b1b2c4725fa72fdc1e25180e1b385fab530495e8a6a033b9eaefe4" [label="copy{src=/, dest=/go/src/github.com/go-mesh/mesher-examples/Go-Mesher-Example/client}" shape="note"];
  "sha256:046035ff5cb7574fe8971008717f1c690484712a249db8f6efe7ba070202560b" [label="mkdir{path=/go/src/github.com/go-mesh/mesher-examples/Go-Mesher-Example/client}" shape="note"];
  "sha256:3a1e8abae16006eb243f2c2dbe2a46a3a003dad289e2a2e54e4e5cc81faf56fc" [label="/bin/sh -c go get github.com/tedsuo/rata" shape="box"];
  "sha256:0b202fde78330debe52868009c28dfae97af3e266ce324a6e938ed6ee1243aba" [label="/bin/sh -c go install github.com/go-mesh/mesher-examples/Go-Mesher-Example/client" shape="box"];
  "sha256:12500d5bc9ed0b74acbc03bfcb0ef1ff4ce7afbb2a836bc15b9b1c443ba46016" [label="sha256:12500d5bc9ed0b74acbc03bfcb0ef1ff4ce7afbb2a836bc15b9b1c443ba46016" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:cf168342e8b1b2c4725fa72fdc1e25180e1b385fab530495e8a6a033b9eaefe4" [label=""];
  "sha256:b3755515a1c365a3ad053fc16e7f9559d6b78a20fc184996b45bf02f03fe1b5e" -> "sha256:cf168342e8b1b2c4725fa72fdc1e25180e1b385fab530495e8a6a033b9eaefe4" [label=""];
  "sha256:cf168342e8b1b2c4725fa72fdc1e25180e1b385fab530495e8a6a033b9eaefe4" -> "sha256:046035ff5cb7574fe8971008717f1c690484712a249db8f6efe7ba070202560b" [label=""];
  "sha256:046035ff5cb7574fe8971008717f1c690484712a249db8f6efe7ba070202560b" -> "sha256:3a1e8abae16006eb243f2c2dbe2a46a3a003dad289e2a2e54e4e5cc81faf56fc" [label=""];
  "sha256:3a1e8abae16006eb243f2c2dbe2a46a3a003dad289e2a2e54e4e5cc81faf56fc" -> "sha256:0b202fde78330debe52868009c28dfae97af3e266ce324a6e938ed6ee1243aba" [label=""];
  "sha256:0b202fde78330debe52868009c28dfae97af3e266ce324a6e938ed6ee1243aba" -> "sha256:12500d5bc9ed0b74acbc03bfcb0ef1ff4ce7afbb2a836bc15b9b1c443ba46016" [label=""];
}

