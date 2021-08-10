[app/sources/191057585.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:36a7c404d649abb8aa4b7fd6c589ef61d09d165b1a93bed2f3da7809d3b27c15" [label="/bin/sh -c apt-get update && apt-get install -y     build-essential     git     libffi-dev     make     nginx     ruby     ruby-dev" shape="box"];
  "sha256:60bb4f51081765627b19d23daa3e27b6ad6368cd491a3a1ac8c42094afec9621" [label="/bin/sh -c gem install jekyll" shape="box"];
  "sha256:88fb4af824336340a783fdca33e46417bd9451481553dc7521f783e1259b70f3" [label="local://context" shape="ellipse"];
  "sha256:10fe8697bb34c20cbd86c42bf312b8ece0b18c4115a0d2182ff3c8f0d4c565f7" [label="copy{src=/, dest=/badssl.com}" shape="note"];
  "sha256:dabb5dc61e93658ec020cde0a009c09797195e25befd319805dd6c98cd5ec452" [label="mkdir{path=/badssl.com}" shape="note"];
  "sha256:2874e8556272d3512d8428f75037da4f606c09e77385f1369922e691db609d4f" [label="/bin/sh -c make inside-docker" shape="box"];
  "sha256:056c14157b14f4993cc7877c0e5214275078e5ce997c931b5a0b169349d4d298" [label="sha256:056c14157b14f4993cc7877c0e5214275078e5ce997c931b5a0b169349d4d298" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:36a7c404d649abb8aa4b7fd6c589ef61d09d165b1a93bed2f3da7809d3b27c15" [label=""];
  "sha256:36a7c404d649abb8aa4b7fd6c589ef61d09d165b1a93bed2f3da7809d3b27c15" -> "sha256:60bb4f51081765627b19d23daa3e27b6ad6368cd491a3a1ac8c42094afec9621" [label=""];
  "sha256:60bb4f51081765627b19d23daa3e27b6ad6368cd491a3a1ac8c42094afec9621" -> "sha256:10fe8697bb34c20cbd86c42bf312b8ece0b18c4115a0d2182ff3c8f0d4c565f7" [label=""];
  "sha256:88fb4af824336340a783fdca33e46417bd9451481553dc7521f783e1259b70f3" -> "sha256:10fe8697bb34c20cbd86c42bf312b8ece0b18c4115a0d2182ff3c8f0d4c565f7" [label=""];
  "sha256:10fe8697bb34c20cbd86c42bf312b8ece0b18c4115a0d2182ff3c8f0d4c565f7" -> "sha256:dabb5dc61e93658ec020cde0a009c09797195e25befd319805dd6c98cd5ec452" [label=""];
  "sha256:dabb5dc61e93658ec020cde0a009c09797195e25befd319805dd6c98cd5ec452" -> "sha256:2874e8556272d3512d8428f75037da4f606c09e77385f1369922e691db609d4f" [label=""];
  "sha256:2874e8556272d3512d8428f75037da4f606c09e77385f1369922e691db609d4f" -> "sha256:056c14157b14f4993cc7877c0e5214275078e5ce997c931b5a0b169349d4d298" [label=""];
}

