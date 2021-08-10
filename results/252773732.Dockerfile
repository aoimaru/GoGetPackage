[app/sources/252773732.Dockerfile]
digraph {
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" [label="docker-image://docker.io/library/golang:1.9" shape="ellipse"];
  "sha256:d06911e167766402bac629dab970fa4b1c7619213a91d5b4bf12f7f2216bb64e" [label="local://context" shape="ellipse"];
  "sha256:fa88f2b07ae2b5071d4a9b179324ae9b649f128d2eb91bf8e3c2d75efa8fb20e" [label="copy{src=/, dest=/go/src/github.com/allistera/juno-probe}" shape="note"];
  "sha256:ced53c78b94d9c8e87603b2858c1ab4a888983a5680905bb061122eca029a634" [label="mkdir{path=/go/src/github.com/allistera/juno-probe}" shape="note"];
  "sha256:9d14ae22fb1c296a817a968a825c3835e0bd2affcfbe463078dce81f5ccc8696" [label="/bin/sh -c go get ./" shape="box"];
  "sha256:5ccf39ef7473a297240a41a9bcefc44244fdfe19e047aa80c4ed7b7f94d8126b" [label="/bin/sh -c go build" shape="box"];
  "sha256:3ba169970812ed34bbb3140b40fc5a70eff0f624b5cb83879f84371e14097ac7" [label="sha256:3ba169970812ed34bbb3140b40fc5a70eff0f624b5cb83879f84371e14097ac7" shape="plaintext"];
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" -> "sha256:fa88f2b07ae2b5071d4a9b179324ae9b649f128d2eb91bf8e3c2d75efa8fb20e" [label=""];
  "sha256:d06911e167766402bac629dab970fa4b1c7619213a91d5b4bf12f7f2216bb64e" -> "sha256:fa88f2b07ae2b5071d4a9b179324ae9b649f128d2eb91bf8e3c2d75efa8fb20e" [label=""];
  "sha256:fa88f2b07ae2b5071d4a9b179324ae9b649f128d2eb91bf8e3c2d75efa8fb20e" -> "sha256:ced53c78b94d9c8e87603b2858c1ab4a888983a5680905bb061122eca029a634" [label=""];
  "sha256:ced53c78b94d9c8e87603b2858c1ab4a888983a5680905bb061122eca029a634" -> "sha256:9d14ae22fb1c296a817a968a825c3835e0bd2affcfbe463078dce81f5ccc8696" [label=""];
  "sha256:9d14ae22fb1c296a817a968a825c3835e0bd2affcfbe463078dce81f5ccc8696" -> "sha256:5ccf39ef7473a297240a41a9bcefc44244fdfe19e047aa80c4ed7b7f94d8126b" [label=""];
  "sha256:5ccf39ef7473a297240a41a9bcefc44244fdfe19e047aa80c4ed7b7f94d8126b" -> "sha256:3ba169970812ed34bbb3140b40fc5a70eff0f624b5cb83879f84371e14097ac7" [label=""];
}

