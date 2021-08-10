[app/sources/330636489.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:766c22332dd99fed9ad7be8e6006f70606cc1fff043c23735590f086f5add755" [label="/bin/sh -c apk --no-cache add ca-certificates" shape="box"];
  "sha256:bd9c9ee9b9fb24f04ec3ccc5ea787015e82deaa718e6af309a80a5641ff29b21" [label="local://context" shape="ellipse"];
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" [label="docker-image://docker.io/library/golang:1.9" shape="ellipse"];
  "sha256:69dcddd0ef4248aa9cfaa51b1bc3d153d8037d6dfa507b42729f2cacee7164f9" [label="mkdir{path=/go/src/github.com/testcontainers/moby-ryuk}" shape="note"];
  "sha256:1f4e4f82537e54b24ff9e5b4198a2ba4c1977657daa688a800947a487c5924e3" [label="copy{src=/glide.lock, dest=/go/src/github.com/testcontainers/moby-ryuk/},copy{src=/glide.yaml, dest=/go/src/github.com/testcontainers/moby-ryuk/},copy{src=/Makefile, dest=/go/src/github.com/testcontainers/moby-ryuk/}" shape="note"];
  "sha256:71d303d7703547a31ec404bf15bf5b03cccb7f31888a705954fa7f1a37e6c2d0" [label="/bin/sh -c make bootstrap" shape="box"];
  "sha256:81319c4352d49e5ee599aae30bfdc3aceed64c3bffe2355aa883ad7f858a4bab" [label="copy{src=/, dest=/go/src/github.com/testcontainers/moby-ryuk/}" shape="note"];
  "sha256:6899dc1607b6e8d89992a226a8fc05873b95397bcd167a238732aa19a2fbe553" [label="/bin/sh -c make build" shape="box"];
  "sha256:54833399f6b22499dc04114b0990003677f723b22cd6fd1b7d24c60a3a971e72" [label="copy{src=/go/src/github.com/testcontainers/moby-ryuk/bin/moby-ryuk, dest=/app}" shape="note"];
  "sha256:4ea22ab53fe8c233ec56e626c0392e361f89d3041f4b0ea3884102f60fc2242b" [label="sha256:4ea22ab53fe8c233ec56e626c0392e361f89d3041f4b0ea3884102f60fc2242b" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:766c22332dd99fed9ad7be8e6006f70606cc1fff043c23735590f086f5add755" [label=""];
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" -> "sha256:69dcddd0ef4248aa9cfaa51b1bc3d153d8037d6dfa507b42729f2cacee7164f9" [label=""];
  "sha256:69dcddd0ef4248aa9cfaa51b1bc3d153d8037d6dfa507b42729f2cacee7164f9" -> "sha256:1f4e4f82537e54b24ff9e5b4198a2ba4c1977657daa688a800947a487c5924e3" [label=""];
  "sha256:bd9c9ee9b9fb24f04ec3ccc5ea787015e82deaa718e6af309a80a5641ff29b21" -> "sha256:1f4e4f82537e54b24ff9e5b4198a2ba4c1977657daa688a800947a487c5924e3" [label=""];
  "sha256:1f4e4f82537e54b24ff9e5b4198a2ba4c1977657daa688a800947a487c5924e3" -> "sha256:71d303d7703547a31ec404bf15bf5b03cccb7f31888a705954fa7f1a37e6c2d0" [label=""];
  "sha256:71d303d7703547a31ec404bf15bf5b03cccb7f31888a705954fa7f1a37e6c2d0" -> "sha256:81319c4352d49e5ee599aae30bfdc3aceed64c3bffe2355aa883ad7f858a4bab" [label=""];
  "sha256:bd9c9ee9b9fb24f04ec3ccc5ea787015e82deaa718e6af309a80a5641ff29b21" -> "sha256:81319c4352d49e5ee599aae30bfdc3aceed64c3bffe2355aa883ad7f858a4bab" [label=""];
  "sha256:81319c4352d49e5ee599aae30bfdc3aceed64c3bffe2355aa883ad7f858a4bab" -> "sha256:6899dc1607b6e8d89992a226a8fc05873b95397bcd167a238732aa19a2fbe553" [label=""];
  "sha256:766c22332dd99fed9ad7be8e6006f70606cc1fff043c23735590f086f5add755" -> "sha256:54833399f6b22499dc04114b0990003677f723b22cd6fd1b7d24c60a3a971e72" [label=""];
  "sha256:6899dc1607b6e8d89992a226a8fc05873b95397bcd167a238732aa19a2fbe553" -> "sha256:54833399f6b22499dc04114b0990003677f723b22cd6fd1b7d24c60a3a971e72" [label=""];
  "sha256:54833399f6b22499dc04114b0990003677f723b22cd6fd1b7d24c60a3a971e72" -> "sha256:4ea22ab53fe8c233ec56e626c0392e361f89d3041f4b0ea3884102f60fc2242b" [label=""];
}

